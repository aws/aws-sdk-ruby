# frozen_string_literal: true

# This is generated code!

module Aws::ServiceCatalog
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptLanguage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#AcceptLanguage', name: 'AcceptLanguage', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AcceptPortfolioShareInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#AcceptPortfolioShareInput', name: 'AcceptPortfolioShareInput')
    AcceptPortfolioShareOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#AcceptPortfolioShareOutput', name: 'AcceptPortfolioShareOutput')
    AccessLevelFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#AccessLevelFilter', name: 'AccessLevelFilter')
    AccessLevelFilterKey = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#AccessLevelFilterKey', name: 'AccessLevelFilterKey')
    AccessLevelFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#AccessLevelFilterValue', name: 'AccessLevelFilterValue')
    AccessStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#AccessStatus', name: 'AccessStatus')
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#AccountId', name: 'AccountId', traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    AccountIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#AccountIds', name: 'AccountIds')
    AddTags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#AddTags', name: 'AddTags', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    AllowedValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#AllowedValues', name: 'AllowedValues')
    ApproximateCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.servicecatalog#ApproximateCount', name: 'ApproximateCount', traits: {"smithy.api#default" => 0})
    AssociateBudgetWithResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#AssociateBudgetWithResourceInput', name: 'AssociateBudgetWithResourceInput')
    AssociateBudgetWithResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#AssociateBudgetWithResourceOutput', name: 'AssociateBudgetWithResourceOutput')
    AssociatePrincipalWithPortfolioInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#AssociatePrincipalWithPortfolioInput', name: 'AssociatePrincipalWithPortfolioInput')
    AssociatePrincipalWithPortfolioOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#AssociatePrincipalWithPortfolioOutput', name: 'AssociatePrincipalWithPortfolioOutput')
    AssociateProductWithPortfolioInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#AssociateProductWithPortfolioInput', name: 'AssociateProductWithPortfolioInput')
    AssociateProductWithPortfolioOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#AssociateProductWithPortfolioOutput', name: 'AssociateProductWithPortfolioOutput')
    AssociateServiceActionWithProvisioningArtifactInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#AssociateServiceActionWithProvisioningArtifactInput', name: 'AssociateServiceActionWithProvisioningArtifactInput')
    AssociateServiceActionWithProvisioningArtifactOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#AssociateServiceActionWithProvisioningArtifactOutput', name: 'AssociateServiceActionWithProvisioningArtifactOutput')
    AssociateTagOptionWithResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#AssociateTagOptionWithResourceInput', name: 'AssociateTagOptionWithResourceInput')
    AssociateTagOptionWithResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#AssociateTagOptionWithResourceOutput', name: 'AssociateTagOptionWithResourceOutput')
    AttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#AttributeValue', name: 'AttributeValue')
    BatchAssociateServiceActionWithProvisioningArtifactInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#BatchAssociateServiceActionWithProvisioningArtifactInput', name: 'BatchAssociateServiceActionWithProvisioningArtifactInput')
    BatchAssociateServiceActionWithProvisioningArtifactOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#BatchAssociateServiceActionWithProvisioningArtifactOutput', name: 'BatchAssociateServiceActionWithProvisioningArtifactOutput')
    BatchDisassociateServiceActionFromProvisioningArtifactInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#BatchDisassociateServiceActionFromProvisioningArtifactInput', name: 'BatchDisassociateServiceActionFromProvisioningArtifactInput')
    BatchDisassociateServiceActionFromProvisioningArtifactOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#BatchDisassociateServiceActionFromProvisioningArtifactOutput', name: 'BatchDisassociateServiceActionFromProvisioningArtifactOutput')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.servicecatalog#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BudgetDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#BudgetDetail', name: 'BudgetDetail')
    BudgetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#BudgetName', name: 'BudgetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Budgets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#Budgets', name: 'Budgets')
    CausingEntity = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#CausingEntity', name: 'CausingEntity')
    ChangeAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#ChangeAction', name: 'ChangeAction')
    CloudWatchDashboard = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#CloudWatchDashboard', name: 'CloudWatchDashboard')
    CloudWatchDashboardName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#CloudWatchDashboardName', name: 'CloudWatchDashboardName')
    CloudWatchDashboards = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#CloudWatchDashboards', name: 'CloudWatchDashboards')
    CodeStarConnectionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#CodeStarConnectionArn', name: 'CodeStarConnectionArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^arn:[a-z0-9][-.a-z0-9]{0,62}:codestar-connections:([a-z0-9][-.a-z0-9]{0,62})?:([a-z0-9][-.a-z0-9]{0,62})?:[^/].{0,1023}$"})
    CodeStarParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#CodeStarParameters', name: 'CodeStarParameters')
    ConstraintDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ConstraintDescription', name: 'ConstraintDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}})
    ConstraintDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ConstraintDetail', name: 'ConstraintDetail')
    ConstraintDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ConstraintDetails', name: 'ConstraintDetails')
    ConstraintParameters = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ConstraintParameters', name: 'ConstraintParameters')
    ConstraintSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ConstraintSummaries', name: 'ConstraintSummaries')
    ConstraintSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ConstraintSummary', name: 'ConstraintSummary')
    ConstraintType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ConstraintType', name: 'ConstraintType', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    CopyOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#CopyOption', name: 'CopyOption')
    CopyOptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#CopyOptions', name: 'CopyOptions')
    CopyProductInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#CopyProductInput', name: 'CopyProductInput')
    CopyProductOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#CopyProductOutput', name: 'CopyProductOutput')
    CopyProductStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#CopyProductStatus', name: 'CopyProductStatus')
    CreateConstraintInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#CreateConstraintInput', name: 'CreateConstraintInput')
    CreateConstraintOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#CreateConstraintOutput', name: 'CreateConstraintOutput')
    CreatePortfolioInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#CreatePortfolioInput', name: 'CreatePortfolioInput')
    CreatePortfolioOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#CreatePortfolioOutput', name: 'CreatePortfolioOutput')
    CreatePortfolioShareInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#CreatePortfolioShareInput', name: 'CreatePortfolioShareInput')
    CreatePortfolioShareOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#CreatePortfolioShareOutput', name: 'CreatePortfolioShareOutput')
    CreateProductInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#CreateProductInput', name: 'CreateProductInput')
    CreateProductOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#CreateProductOutput', name: 'CreateProductOutput')
    CreateProvisionedProductPlanInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#CreateProvisionedProductPlanInput', name: 'CreateProvisionedProductPlanInput')
    CreateProvisionedProductPlanOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#CreateProvisionedProductPlanOutput', name: 'CreateProvisionedProductPlanOutput')
    CreateProvisioningArtifactInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#CreateProvisioningArtifactInput', name: 'CreateProvisioningArtifactInput')
    CreateProvisioningArtifactOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#CreateProvisioningArtifactOutput', name: 'CreateProvisioningArtifactOutput')
    CreateServiceActionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#CreateServiceActionInput', name: 'CreateServiceActionInput')
    CreateServiceActionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#CreateServiceActionOutput', name: 'CreateServiceActionOutput')
    CreateTagOptionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#CreateTagOptionInput', name: 'CreateTagOptionInput')
    CreateTagOptionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#CreateTagOptionOutput', name: 'CreateTagOptionOutput')
    CreatedTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.servicecatalog#CreatedTime', name: 'CreatedTime')
    CreationTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.servicecatalog#CreationTime', name: 'CreationTime')
    DefaultValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#DefaultValue', name: 'DefaultValue')
    DeleteConstraintInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DeleteConstraintInput', name: 'DeleteConstraintInput')
    DeleteConstraintOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DeleteConstraintOutput', name: 'DeleteConstraintOutput')
    DeletePortfolioInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DeletePortfolioInput', name: 'DeletePortfolioInput')
    DeletePortfolioOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DeletePortfolioOutput', name: 'DeletePortfolioOutput')
    DeletePortfolioShareInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DeletePortfolioShareInput', name: 'DeletePortfolioShareInput')
    DeletePortfolioShareOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DeletePortfolioShareOutput', name: 'DeletePortfolioShareOutput')
    DeleteProductInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DeleteProductInput', name: 'DeleteProductInput')
    DeleteProductOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DeleteProductOutput', name: 'DeleteProductOutput')
    DeleteProvisionedProductPlanInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DeleteProvisionedProductPlanInput', name: 'DeleteProvisionedProductPlanInput')
    DeleteProvisionedProductPlanOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DeleteProvisionedProductPlanOutput', name: 'DeleteProvisionedProductPlanOutput')
    DeleteProvisioningArtifactInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DeleteProvisioningArtifactInput', name: 'DeleteProvisioningArtifactInput')
    DeleteProvisioningArtifactOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DeleteProvisioningArtifactOutput', name: 'DeleteProvisioningArtifactOutput')
    DeleteServiceActionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DeleteServiceActionInput', name: 'DeleteServiceActionInput')
    DeleteServiceActionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DeleteServiceActionOutput', name: 'DeleteServiceActionOutput')
    DeleteTagOptionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DeleteTagOptionInput', name: 'DeleteTagOptionInput')
    DeleteTagOptionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DeleteTagOptionOutput', name: 'DeleteTagOptionOutput')
    DescribeConstraintInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeConstraintInput', name: 'DescribeConstraintInput')
    DescribeConstraintOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeConstraintOutput', name: 'DescribeConstraintOutput')
    DescribeCopyProductStatusInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeCopyProductStatusInput', name: 'DescribeCopyProductStatusInput')
    DescribeCopyProductStatusOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeCopyProductStatusOutput', name: 'DescribeCopyProductStatusOutput')
    DescribePortfolioInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribePortfolioInput', name: 'DescribePortfolioInput')
    DescribePortfolioOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribePortfolioOutput', name: 'DescribePortfolioOutput')
    DescribePortfolioShareStatusInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribePortfolioShareStatusInput', name: 'DescribePortfolioShareStatusInput')
    DescribePortfolioShareStatusOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribePortfolioShareStatusOutput', name: 'DescribePortfolioShareStatusOutput')
    DescribePortfolioShareType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#DescribePortfolioShareType', name: 'DescribePortfolioShareType')
    DescribePortfolioSharesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribePortfolioSharesInput', name: 'DescribePortfolioSharesInput')
    DescribePortfolioSharesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribePortfolioSharesOutput', name: 'DescribePortfolioSharesOutput')
    DescribeProductAsAdminInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeProductAsAdminInput', name: 'DescribeProductAsAdminInput')
    DescribeProductAsAdminOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeProductAsAdminOutput', name: 'DescribeProductAsAdminOutput')
    DescribeProductInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeProductInput', name: 'DescribeProductInput')
    DescribeProductOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeProductOutput', name: 'DescribeProductOutput')
    DescribeProductViewInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeProductViewInput', name: 'DescribeProductViewInput')
    DescribeProductViewOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeProductViewOutput', name: 'DescribeProductViewOutput')
    DescribeProvisionedProductInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeProvisionedProductInput', name: 'DescribeProvisionedProductInput')
    DescribeProvisionedProductOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeProvisionedProductOutput', name: 'DescribeProvisionedProductOutput')
    DescribeProvisionedProductPlanInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeProvisionedProductPlanInput', name: 'DescribeProvisionedProductPlanInput')
    DescribeProvisionedProductPlanOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeProvisionedProductPlanOutput', name: 'DescribeProvisionedProductPlanOutput')
    DescribeProvisioningArtifactInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeProvisioningArtifactInput', name: 'DescribeProvisioningArtifactInput')
    DescribeProvisioningArtifactOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeProvisioningArtifactOutput', name: 'DescribeProvisioningArtifactOutput')
    DescribeProvisioningParametersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeProvisioningParametersInput', name: 'DescribeProvisioningParametersInput')
    DescribeProvisioningParametersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeProvisioningParametersOutput', name: 'DescribeProvisioningParametersOutput')
    DescribeRecordInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeRecordInput', name: 'DescribeRecordInput')
    DescribeRecordOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeRecordOutput', name: 'DescribeRecordOutput')
    DescribeServiceActionExecutionParametersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeServiceActionExecutionParametersInput', name: 'DescribeServiceActionExecutionParametersInput')
    DescribeServiceActionExecutionParametersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeServiceActionExecutionParametersOutput', name: 'DescribeServiceActionExecutionParametersOutput')
    DescribeServiceActionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeServiceActionInput', name: 'DescribeServiceActionInput')
    DescribeServiceActionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeServiceActionOutput', name: 'DescribeServiceActionOutput')
    DescribeTagOptionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeTagOptionInput', name: 'DescribeTagOptionInput')
    DescribeTagOptionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DescribeTagOptionOutput', name: 'DescribeTagOptionOutput')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#Description', name: 'Description')
    DisableAWSOrganizationsAccessInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DisableAWSOrganizationsAccessInput', name: 'DisableAWSOrganizationsAccessInput')
    DisableAWSOrganizationsAccessOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DisableAWSOrganizationsAccessOutput', name: 'DisableAWSOrganizationsAccessOutput')
    DisableTemplateValidation = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.servicecatalog#DisableTemplateValidation', name: 'DisableTemplateValidation', traits: {"smithy.api#default" => false})
    DisassociateBudgetFromResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DisassociateBudgetFromResourceInput', name: 'DisassociateBudgetFromResourceInput')
    DisassociateBudgetFromResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DisassociateBudgetFromResourceOutput', name: 'DisassociateBudgetFromResourceOutput')
    DisassociatePrincipalFromPortfolioInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DisassociatePrincipalFromPortfolioInput', name: 'DisassociatePrincipalFromPortfolioInput')
    DisassociatePrincipalFromPortfolioOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DisassociatePrincipalFromPortfolioOutput', name: 'DisassociatePrincipalFromPortfolioOutput')
    DisassociateProductFromPortfolioInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DisassociateProductFromPortfolioInput', name: 'DisassociateProductFromPortfolioInput')
    DisassociateProductFromPortfolioOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DisassociateProductFromPortfolioOutput', name: 'DisassociateProductFromPortfolioOutput')
    DisassociateServiceActionFromProvisioningArtifactInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DisassociateServiceActionFromProvisioningArtifactInput', name: 'DisassociateServiceActionFromProvisioningArtifactInput')
    DisassociateServiceActionFromProvisioningArtifactOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DisassociateServiceActionFromProvisioningArtifactOutput', name: 'DisassociateServiceActionFromProvisioningArtifactOutput')
    DisassociateTagOptionFromResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DisassociateTagOptionFromResourceInput', name: 'DisassociateTagOptionFromResourceInput')
    DisassociateTagOptionFromResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DisassociateTagOptionFromResourceOutput', name: 'DisassociateTagOptionFromResourceOutput')
    DuplicateResourceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#DuplicateResourceException', name: 'DuplicateResourceException', traits: {"smithy.api#error" => "client"})
    EnableAWSOrganizationsAccessInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#EnableAWSOrganizationsAccessInput', name: 'EnableAWSOrganizationsAccessInput')
    EnableAWSOrganizationsAccessOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#EnableAWSOrganizationsAccessOutput', name: 'EnableAWSOrganizationsAccessOutput')
    EngineWorkflowFailureReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#EngineWorkflowFailureReason', name: 'EngineWorkflowFailureReason', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*$"})
    EngineWorkflowResourceIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#EngineWorkflowResourceIdentifier', name: 'EngineWorkflowResourceIdentifier')
    EngineWorkflowStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#EngineWorkflowStatus', name: 'EngineWorkflowStatus')
    EngineWorkflowToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#EngineWorkflowToken', name: 'EngineWorkflowToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 20000}, "smithy.api#pattern" => "^[0-9A-Za-z+\\/=]+$"})
    Error = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#Error', name: 'Error')
    ErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ErrorCode', name: 'ErrorCode')
    ErrorDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ErrorDescription', name: 'ErrorDescription')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    EvaluationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#EvaluationType', name: 'EvaluationType')
    ExecuteProvisionedProductPlanInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ExecuteProvisionedProductPlanInput', name: 'ExecuteProvisionedProductPlanInput')
    ExecuteProvisionedProductPlanOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ExecuteProvisionedProductPlanOutput', name: 'ExecuteProvisionedProductPlanOutput')
    ExecuteProvisionedProductServiceActionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ExecuteProvisionedProductServiceActionInput', name: 'ExecuteProvisionedProductServiceActionInput')
    ExecuteProvisionedProductServiceActionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ExecuteProvisionedProductServiceActionOutput', name: 'ExecuteProvisionedProductServiceActionOutput')
    ExecutionParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ExecutionParameter', name: 'ExecutionParameter')
    ExecutionParameterKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ExecutionParameterKey', name: 'ExecutionParameterKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ExecutionParameterMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.servicecatalog#ExecutionParameterMap', name: 'ExecutionParameterMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ExecutionParameterType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ExecutionParameterType', name: 'ExecutionParameterType', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ExecutionParameterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ExecutionParameterValue', name: 'ExecutionParameterValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    ExecutionParameterValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ExecutionParameterValueList', name: 'ExecutionParameterValueList', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    ExecutionParameters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ExecutionParameters', name: 'ExecutionParameters')
    FailedServiceActionAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#FailedServiceActionAssociation', name: 'FailedServiceActionAssociation')
    FailedServiceActionAssociations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#FailedServiceActionAssociations', name: 'FailedServiceActionAssociations', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    GetAWSOrganizationsAccessStatusInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#GetAWSOrganizationsAccessStatusInput', name: 'GetAWSOrganizationsAccessStatusInput')
    GetAWSOrganizationsAccessStatusOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#GetAWSOrganizationsAccessStatusOutput', name: 'GetAWSOrganizationsAccessStatusOutput')
    GetProvisionedProductOutputsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#GetProvisionedProductOutputsInput', name: 'GetProvisionedProductOutputsInput')
    GetProvisionedProductOutputsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#GetProvisionedProductOutputsOutput', name: 'GetProvisionedProductOutputsOutput')
    HasDefaultPath = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.servicecatalog#HasDefaultPath', name: 'HasDefaultPath', traits: {"smithy.api#default" => false})
    Id = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#Id', name: 'Id', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-]*$"})
    IdempotencyToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#IdempotencyToken', name: 'IdempotencyToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    IgnoreErrors = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.servicecatalog#IgnoreErrors', name: 'IgnoreErrors', traits: {"smithy.api#default" => false})
    ImportAsProvisionedProductInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ImportAsProvisionedProductInput', name: 'ImportAsProvisionedProductInput')
    ImportAsProvisionedProductOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ImportAsProvisionedProductOutput', name: 'ImportAsProvisionedProductOutput')
    InstructionType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#InstructionType', name: 'InstructionType')
    InstructionValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#InstructionValue', name: 'InstructionValue')
    InvalidParametersException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#InvalidParametersException', name: 'InvalidParametersException', traits: {"smithy.api#error" => "client"})
    InvalidStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#InvalidStateException', name: 'InvalidStateException', traits: {"smithy.api#error" => "client"})
    LastRequestId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#LastRequestId', name: 'LastRequestId')
    LastSuccessfulSyncTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.servicecatalog#LastSuccessfulSyncTime', name: 'LastSuccessfulSyncTime')
    LastSync = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#LastSync', name: 'LastSync')
    LastSyncStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#LastSyncStatus', name: 'LastSyncStatus')
    LastSyncStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#LastSyncStatusMessage', name: 'LastSyncStatusMessage')
    LastSyncTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.servicecatalog#LastSyncTime', name: 'LastSyncTime')
    LaunchPath = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#LaunchPath', name: 'LaunchPath')
    LaunchPathSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#LaunchPathSummaries', name: 'LaunchPathSummaries')
    LaunchPathSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#LaunchPathSummary', name: 'LaunchPathSummary')
    LaunchPaths = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#LaunchPaths', name: 'LaunchPaths')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListAcceptedPortfolioSharesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListAcceptedPortfolioSharesInput', name: 'ListAcceptedPortfolioSharesInput')
    ListAcceptedPortfolioSharesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListAcceptedPortfolioSharesOutput', name: 'ListAcceptedPortfolioSharesOutput')
    ListBudgetsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListBudgetsForResourceInput', name: 'ListBudgetsForResourceInput')
    ListBudgetsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListBudgetsForResourceOutput', name: 'ListBudgetsForResourceOutput')
    ListConstraintsForPortfolioInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListConstraintsForPortfolioInput', name: 'ListConstraintsForPortfolioInput')
    ListConstraintsForPortfolioOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListConstraintsForPortfolioOutput', name: 'ListConstraintsForPortfolioOutput')
    ListLaunchPathsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListLaunchPathsInput', name: 'ListLaunchPathsInput')
    ListLaunchPathsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListLaunchPathsOutput', name: 'ListLaunchPathsOutput')
    ListOrganizationPortfolioAccessInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListOrganizationPortfolioAccessInput', name: 'ListOrganizationPortfolioAccessInput')
    ListOrganizationPortfolioAccessOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListOrganizationPortfolioAccessOutput', name: 'ListOrganizationPortfolioAccessOutput')
    ListPortfolioAccessInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListPortfolioAccessInput', name: 'ListPortfolioAccessInput')
    ListPortfolioAccessOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListPortfolioAccessOutput', name: 'ListPortfolioAccessOutput')
    ListPortfoliosForProductInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListPortfoliosForProductInput', name: 'ListPortfoliosForProductInput')
    ListPortfoliosForProductOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListPortfoliosForProductOutput', name: 'ListPortfoliosForProductOutput')
    ListPortfoliosInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListPortfoliosInput', name: 'ListPortfoliosInput')
    ListPortfoliosOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListPortfoliosOutput', name: 'ListPortfoliosOutput')
    ListPrincipalsForPortfolioInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListPrincipalsForPortfolioInput', name: 'ListPrincipalsForPortfolioInput')
    ListPrincipalsForPortfolioOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListPrincipalsForPortfolioOutput', name: 'ListPrincipalsForPortfolioOutput')
    ListProvisionedProductPlansInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListProvisionedProductPlansInput', name: 'ListProvisionedProductPlansInput')
    ListProvisionedProductPlansOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListProvisionedProductPlansOutput', name: 'ListProvisionedProductPlansOutput')
    ListProvisioningArtifactsForServiceActionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListProvisioningArtifactsForServiceActionInput', name: 'ListProvisioningArtifactsForServiceActionInput')
    ListProvisioningArtifactsForServiceActionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListProvisioningArtifactsForServiceActionOutput', name: 'ListProvisioningArtifactsForServiceActionOutput')
    ListProvisioningArtifactsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListProvisioningArtifactsInput', name: 'ListProvisioningArtifactsInput')
    ListProvisioningArtifactsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListProvisioningArtifactsOutput', name: 'ListProvisioningArtifactsOutput')
    ListRecordHistoryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListRecordHistoryInput', name: 'ListRecordHistoryInput')
    ListRecordHistoryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListRecordHistoryOutput', name: 'ListRecordHistoryOutput')
    ListRecordHistorySearchFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListRecordHistorySearchFilter', name: 'ListRecordHistorySearchFilter')
    ListResourcesForTagOptionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListResourcesForTagOptionInput', name: 'ListResourcesForTagOptionInput')
    ListResourcesForTagOptionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListResourcesForTagOptionOutput', name: 'ListResourcesForTagOptionOutput')
    ListServiceActionsForProvisioningArtifactInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListServiceActionsForProvisioningArtifactInput', name: 'ListServiceActionsForProvisioningArtifactInput')
    ListServiceActionsForProvisioningArtifactOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListServiceActionsForProvisioningArtifactOutput', name: 'ListServiceActionsForProvisioningArtifactOutput')
    ListServiceActionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListServiceActionsInput', name: 'ListServiceActionsInput')
    ListServiceActionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListServiceActionsOutput', name: 'ListServiceActionsOutput')
    ListStackInstancesForProvisionedProductInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListStackInstancesForProvisionedProductInput', name: 'ListStackInstancesForProvisionedProductInput')
    ListStackInstancesForProvisionedProductOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListStackInstancesForProvisionedProductOutput', name: 'ListStackInstancesForProvisionedProductOutput')
    ListTagOptionsFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListTagOptionsFilters', name: 'ListTagOptionsFilters')
    ListTagOptionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListTagOptionsInput', name: 'ListTagOptionsInput')
    ListTagOptionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ListTagOptionsOutput', name: 'ListTagOptionsOutput')
    LogicalResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#LogicalResourceId', name: 'LogicalResourceId')
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#Message', name: 'Message')
    Namespaces = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#Namespaces', name: 'Namespaces')
    NoEcho = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.servicecatalog#NoEcho', name: 'NoEcho', traits: {"smithy.api#default" => false})
    NotificationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#NotificationArn', name: 'NotificationArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    NotificationArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#NotificationArns', name: 'NotificationArns', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    NotifyProvisionProductEngineWorkflowResultInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#NotifyProvisionProductEngineWorkflowResultInput', name: 'NotifyProvisionProductEngineWorkflowResultInput')
    NotifyProvisionProductEngineWorkflowResultOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#NotifyProvisionProductEngineWorkflowResultOutput', name: 'NotifyProvisionProductEngineWorkflowResultOutput')
    NotifyTerminateProvisionedProductEngineWorkflowResultInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#NotifyTerminateProvisionedProductEngineWorkflowResultInput', name: 'NotifyTerminateProvisionedProductEngineWorkflowResultInput')
    NotifyTerminateProvisionedProductEngineWorkflowResultOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#NotifyTerminateProvisionedProductEngineWorkflowResultOutput', name: 'NotifyTerminateProvisionedProductEngineWorkflowResultOutput')
    NotifyUpdateProvisionedProductEngineWorkflowResultInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#NotifyUpdateProvisionedProductEngineWorkflowResultInput', name: 'NotifyUpdateProvisionedProductEngineWorkflowResultInput')
    NotifyUpdateProvisionedProductEngineWorkflowResultOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#NotifyUpdateProvisionedProductEngineWorkflowResultOutput', name: 'NotifyUpdateProvisionedProductEngineWorkflowResultOutput')
    NullableBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.servicecatalog#NullableBoolean', name: 'NullableBoolean')
    OperationNotSupportedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#OperationNotSupportedException', name: 'OperationNotSupportedException', traits: {"smithy.api#error" => "client"})
    OrganizationNode = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#OrganizationNode', name: 'OrganizationNode')
    OrganizationNodeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#OrganizationNodeType', name: 'OrganizationNodeType')
    OrganizationNodeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#OrganizationNodeValue', name: 'OrganizationNodeValue', traits: {"smithy.api#pattern" => "^(^[0-9]{12}$)|(^arn:aws:organizations::\\d{12}:organization\\/o-[a-z0-9]{10,32})|(^o-[a-z0-9]{10,32}$)|(^arn:aws:organizations::\\d{12}:ou\\/o-[a-z0-9]{10,32}\\/ou-[0-9a-z]{4,32}-[0-9a-z]{8,32}$)|(^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$)$"})
    OrganizationNodes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#OrganizationNodes', name: 'OrganizationNodes')
    OutputDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#OutputDescription', name: 'OutputDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    OutputKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#OutputKey', name: 'OutputKey')
    OutputKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#OutputKeys', name: 'OutputKeys', traits: {"smithy.api#length" => {"min" => 0, "max" => 60}})
    OutputValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#OutputValue', name: 'OutputValue')
    Owner = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#Owner', name: 'Owner')
    PageSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.servicecatalog#PageSize', name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 20}})
    PageSizeMax100 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.servicecatalog#PageSizeMax100', name: 'PageSizeMax100', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    PageToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#PageToken', name: 'PageToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 2024}, "smithy.api#pattern" => "^[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*$"})
    ParameterConstraints = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ParameterConstraints', name: 'ParameterConstraints')
    ParameterKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ParameterKey', name: 'ParameterKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ParameterType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ParameterType', name: 'ParameterType')
    ParameterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ParameterValue', name: 'ParameterValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    PhysicalId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#PhysicalId', name: 'PhysicalId')
    PhysicalResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#PhysicalResourceId', name: 'PhysicalResourceId')
    PlanResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#PlanResourceType', name: 'PlanResourceType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    PortfolioDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#PortfolioDescription', name: 'PortfolioDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}})
    PortfolioDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#PortfolioDetail', name: 'PortfolioDetail')
    PortfolioDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#PortfolioDetails', name: 'PortfolioDetails')
    PortfolioDisplayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#PortfolioDisplayName', name: 'PortfolioDisplayName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PortfolioName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#PortfolioName', name: 'PortfolioName')
    PortfolioShareDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#PortfolioShareDetail', name: 'PortfolioShareDetail')
    PortfolioShareDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#PortfolioShareDetails', name: 'PortfolioShareDetails')
    PortfolioShareType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#PortfolioShareType', name: 'PortfolioShareType')
    Principal = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#Principal', name: 'Principal')
    PrincipalARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#PrincipalARN', name: 'PrincipalARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    PrincipalType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#PrincipalType', name: 'PrincipalType')
    Principals = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#Principals', name: 'Principals')
    ProductArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProductArn', name: 'ProductArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    ProductSource = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#ProductSource', name: 'ProductSource')
    ProductType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#ProductType', name: 'ProductType', traits: {"smithy.api#length" => {"min" => 0, "max" => 8191}})
    ProductViewAggregationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProductViewAggregationType', name: 'ProductViewAggregationType')
    ProductViewAggregationValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ProductViewAggregationValue', name: 'ProductViewAggregationValue')
    ProductViewAggregationValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ProductViewAggregationValues', name: 'ProductViewAggregationValues')
    ProductViewAggregations = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.servicecatalog#ProductViewAggregations', name: 'ProductViewAggregations')
    ProductViewDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ProductViewDetail', name: 'ProductViewDetail')
    ProductViewDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ProductViewDetails', name: 'ProductViewDetails')
    ProductViewDistributor = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProductViewDistributor', name: 'ProductViewDistributor')
    ProductViewFilterBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#ProductViewFilterBy', name: 'ProductViewFilterBy')
    ProductViewFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProductViewFilterValue', name: 'ProductViewFilterValue')
    ProductViewFilterValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ProductViewFilterValues', name: 'ProductViewFilterValues')
    ProductViewFilters = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.servicecatalog#ProductViewFilters', name: 'ProductViewFilters')
    ProductViewName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProductViewName', name: 'ProductViewName', traits: {"smithy.api#length" => {"min" => 0, "max" => 8191}})
    ProductViewOwner = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProductViewOwner', name: 'ProductViewOwner', traits: {"smithy.api#length" => {"min" => 0, "max" => 8191}})
    ProductViewShortDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProductViewShortDescription', name: 'ProductViewShortDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 8191}})
    ProductViewSortBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#ProductViewSortBy', name: 'ProductViewSortBy')
    ProductViewSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ProductViewSummaries', name: 'ProductViewSummaries')
    ProductViewSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ProductViewSummary', name: 'ProductViewSummary')
    PropertyKey = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#PropertyKey', name: 'PropertyKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    PropertyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#PropertyName', name: 'PropertyName')
    PropertyValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#PropertyValue', name: 'PropertyValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ProviderName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProviderName', name: 'ProviderName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ProvisionProductInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ProvisionProductInput', name: 'ProvisionProductInput')
    ProvisionProductOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ProvisionProductOutput', name: 'ProvisionProductOutput')
    ProvisionedProductAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductAttribute', name: 'ProvisionedProductAttribute')
    ProvisionedProductAttributes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductAttributes', name: 'ProvisionedProductAttributes')
    ProvisionedProductDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductDetail', name: 'ProvisionedProductDetail')
    ProvisionedProductDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductDetails', name: 'ProvisionedProductDetails')
    ProvisionedProductFilters = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductFilters', name: 'ProvisionedProductFilters')
    ProvisionedProductId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductId', name: 'ProvisionedProductId')
    ProvisionedProductName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductName', name: 'ProvisionedProductName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9._-]*$"})
    ProvisionedProductNameOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductNameOrArn', name: 'ProvisionedProductNameOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9._-]{0,127}|arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    ProvisionedProductPlanDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductPlanDetails', name: 'ProvisionedProductPlanDetails')
    ProvisionedProductPlanName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductPlanName', name: 'ProvisionedProductPlanName')
    ProvisionedProductPlanStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductPlanStatus', name: 'ProvisionedProductPlanStatus')
    ProvisionedProductPlanSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductPlanSummary', name: 'ProvisionedProductPlanSummary')
    ProvisionedProductPlanType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductPlanType', name: 'ProvisionedProductPlanType')
    ProvisionedProductPlans = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductPlans', name: 'ProvisionedProductPlans')
    ProvisionedProductProperties = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductProperties', name: 'ProvisionedProductProperties', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ProvisionedProductStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductStatus', name: 'ProvisionedProductStatus')
    ProvisionedProductStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductStatusMessage', name: 'ProvisionedProductStatusMessage')
    ProvisionedProductType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductType', name: 'ProvisionedProductType')
    ProvisionedProductViewFilterBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductViewFilterBy', name: 'ProvisionedProductViewFilterBy')
    ProvisionedProductViewFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductViewFilterValue', name: 'ProvisionedProductViewFilterValue')
    ProvisionedProductViewFilterValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ProvisionedProductViewFilterValues', name: 'ProvisionedProductViewFilterValues')
    ProvisioningArtifact = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifact', name: 'ProvisioningArtifact')
    ProvisioningArtifactActive = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactActive', name: 'ProvisioningArtifactActive')
    ProvisioningArtifactCreatedTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactCreatedTime', name: 'ProvisioningArtifactCreatedTime')
    ProvisioningArtifactDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactDescription', name: 'ProvisioningArtifactDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}})
    ProvisioningArtifactDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactDetail', name: 'ProvisioningArtifactDetail')
    ProvisioningArtifactDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactDetails', name: 'ProvisioningArtifactDetails')
    ProvisioningArtifactGuidance = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactGuidance', name: 'ProvisioningArtifactGuidance')
    ProvisioningArtifactInfo = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactInfo', name: 'ProvisioningArtifactInfo', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ProvisioningArtifactInfoKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactInfoKey', name: 'ProvisioningArtifactInfoKey')
    ProvisioningArtifactInfoValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactInfoValue', name: 'ProvisioningArtifactInfoValue')
    ProvisioningArtifactName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactName', name: 'ProvisioningArtifactName', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}})
    ProvisioningArtifactOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactOutput', name: 'ProvisioningArtifactOutput')
    ProvisioningArtifactOutputKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactOutputKey', name: 'ProvisioningArtifactOutputKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9]*$"})
    ProvisioningArtifactOutputs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactOutputs', name: 'ProvisioningArtifactOutputs', traits: {"smithy.api#length" => {"min" => 0, "max" => 60}})
    ProvisioningArtifactParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactParameter', name: 'ProvisioningArtifactParameter')
    ProvisioningArtifactParameters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactParameters', name: 'ProvisioningArtifactParameters')
    ProvisioningArtifactPreferences = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactPreferences', name: 'ProvisioningArtifactPreferences')
    ProvisioningArtifactProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactProperties', name: 'ProvisioningArtifactProperties')
    ProvisioningArtifactPropertyName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactPropertyName', name: 'ProvisioningArtifactPropertyName')
    ProvisioningArtifactPropertyValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactPropertyValue', name: 'ProvisioningArtifactPropertyValue')
    ProvisioningArtifactSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactSummaries', name: 'ProvisioningArtifactSummaries')
    ProvisioningArtifactSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactSummary', name: 'ProvisioningArtifactSummary')
    ProvisioningArtifactType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactType', name: 'ProvisioningArtifactType')
    ProvisioningArtifactView = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactView', name: 'ProvisioningArtifactView')
    ProvisioningArtifactViews = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifactViews', name: 'ProvisioningArtifactViews')
    ProvisioningArtifacts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningArtifacts', name: 'ProvisioningArtifacts')
    ProvisioningParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningParameter', name: 'ProvisioningParameter')
    ProvisioningParameters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningParameters', name: 'ProvisioningParameters')
    ProvisioningPreferences = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ProvisioningPreferences', name: 'ProvisioningPreferences')
    RecordDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#RecordDetail', name: 'RecordDetail')
    RecordDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#RecordDetails', name: 'RecordDetails')
    RecordError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#RecordError', name: 'RecordError')
    RecordErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#RecordErrors', name: 'RecordErrors')
    RecordOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#RecordOutput', name: 'RecordOutput')
    RecordOutputs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#RecordOutputs', name: 'RecordOutputs')
    RecordStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#RecordStatus', name: 'RecordStatus')
    RecordTag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#RecordTag', name: 'RecordTag')
    RecordTagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#RecordTagKey', name: 'RecordTagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    RecordTagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#RecordTagValue', name: 'RecordTagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    RecordTags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#RecordTags', name: 'RecordTags', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    RecordType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#RecordType', name: 'RecordType')
    Region = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#Region', name: 'Region')
    RejectPortfolioShareInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#RejectPortfolioShareInput', name: 'RejectPortfolioShareInput')
    RejectPortfolioShareOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#RejectPortfolioShareOutput', name: 'RejectPortfolioShareOutput')
    Replacement = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#Replacement', name: 'Replacement')
    Repository = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#Repository', name: 'Repository', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RepositoryArtifactPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#RepositoryArtifactPath', name: 'RepositoryArtifactPath', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    RepositoryBranch = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#RepositoryBranch', name: 'RepositoryBranch', traits: {"smithy.api#length" => {"min" => 1, "max" => 250}})
    RequiresRecreation = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#RequiresRecreation', name: 'RequiresRecreation')
    ResourceARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ResourceARN', name: 'ResourceARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    ResourceAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#ResourceAttribute', name: 'ResourceAttribute')
    ResourceChange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ResourceChange', name: 'ResourceChange')
    ResourceChangeDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ResourceChangeDetail', name: 'ResourceChangeDetail')
    ResourceChangeDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ResourceChangeDetails', name: 'ResourceChangeDetails')
    ResourceChanges = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ResourceChanges', name: 'ResourceChanges')
    ResourceDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ResourceDetail', name: 'ResourceDetail')
    ResourceDetailARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ResourceDetailARN', name: 'ResourceDetailARN')
    ResourceDetailCreatedTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.servicecatalog#ResourceDetailCreatedTime', name: 'ResourceDetailCreatedTime')
    ResourceDetailDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ResourceDetailDescription', name: 'ResourceDetailDescription')
    ResourceDetailId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ResourceDetailId', name: 'ResourceDetailId')
    ResourceDetailName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ResourceDetailName', name: 'ResourceDetailName')
    ResourceDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ResourceDetails', name: 'ResourceDetails')
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ResourceId', name: 'ResourceId')
    ResourceInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    ResourceTargetDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ResourceTargetDefinition', name: 'ResourceTargetDefinition')
    ResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ResourceType', name: 'ResourceType')
    RetainPhysicalResources = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.servicecatalog#RetainPhysicalResources', name: 'RetainPhysicalResources', traits: {"smithy.api#default" => false})
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:iam::[a-z0-9-\\.]{0,63}:role\\/.{0,1023}$"})
    ScanProvisionedProductsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ScanProvisionedProductsInput', name: 'ScanProvisionedProductsInput')
    ScanProvisionedProductsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ScanProvisionedProductsOutput', name: 'ScanProvisionedProductsOutput')
    Scope = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#Scope', name: 'Scope')
    SearchFilterKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#SearchFilterKey', name: 'SearchFilterKey')
    SearchFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#SearchFilterValue', name: 'SearchFilterValue')
    SearchProductsAsAdminInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#SearchProductsAsAdminInput', name: 'SearchProductsAsAdminInput')
    SearchProductsAsAdminOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#SearchProductsAsAdminOutput', name: 'SearchProductsAsAdminOutput')
    SearchProductsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#SearchProductsInput', name: 'SearchProductsInput')
    SearchProductsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#SearchProductsOutput', name: 'SearchProductsOutput')
    SearchProvisionedProductsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#SearchProvisionedProductsInput', name: 'SearchProvisionedProductsInput')
    SearchProvisionedProductsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#SearchProvisionedProductsOutput', name: 'SearchProvisionedProductsOutput')
    SearchProvisionedProductsPageSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.servicecatalog#SearchProvisionedProductsPageSize', name: 'SearchProvisionedProductsPageSize', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    ServiceActionAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ServiceActionAssociation', name: 'ServiceActionAssociation')
    ServiceActionAssociationErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#ServiceActionAssociationErrorCode', name: 'ServiceActionAssociationErrorCode')
    ServiceActionAssociationErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ServiceActionAssociationErrorMessage', name: 'ServiceActionAssociationErrorMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ServiceActionAssociations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ServiceActionAssociations', name: 'ServiceActionAssociations', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ServiceActionDefinitionKey = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#ServiceActionDefinitionKey', name: 'ServiceActionDefinitionKey')
    ServiceActionDefinitionMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.servicecatalog#ServiceActionDefinitionMap', name: 'ServiceActionDefinitionMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ServiceActionDefinitionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#ServiceActionDefinitionType', name: 'ServiceActionDefinitionType')
    ServiceActionDefinitionValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ServiceActionDefinitionValue', name: 'ServiceActionDefinitionValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ServiceActionDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ServiceActionDescription', name: 'ServiceActionDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ServiceActionDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ServiceActionDetail', name: 'ServiceActionDetail')
    ServiceActionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#ServiceActionName', name: 'ServiceActionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-.]*$"})
    ServiceActionSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ServiceActionSummaries', name: 'ServiceActionSummaries')
    ServiceActionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ServiceActionSummary', name: 'ServiceActionSummary')
    ShareDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ShareDetails', name: 'ShareDetails')
    ShareError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#ShareError', name: 'ShareError')
    ShareErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#ShareErrors', name: 'ShareErrors')
    ShareStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#ShareStatus', name: 'ShareStatus')
    SortField = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#SortField', name: 'SortField')
    SortOrder = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#SortOrder', name: 'SortOrder')
    SourceConnection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#SourceConnection', name: 'SourceConnection')
    SourceConnectionDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#SourceConnectionDetail', name: 'SourceConnectionDetail')
    SourceConnectionParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#SourceConnectionParameters', name: 'SourceConnectionParameters')
    SourceProvisioningArtifactProperties = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#SourceProvisioningArtifactProperties', name: 'SourceProvisioningArtifactProperties')
    SourceProvisioningArtifactPropertiesMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.servicecatalog#SourceProvisioningArtifactPropertiesMap', name: 'SourceProvisioningArtifactPropertiesMap')
    SourceRevision = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#SourceRevision', name: 'SourceRevision', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    SourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#SourceType', name: 'SourceType')
    StackInstance = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#StackInstance', name: 'StackInstance')
    StackInstanceStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#StackInstanceStatus', name: 'StackInstanceStatus')
    StackInstances = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#StackInstances', name: 'StackInstances')
    StackSetAccounts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#StackSetAccounts', name: 'StackSetAccounts')
    StackSetFailureToleranceCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.servicecatalog#StackSetFailureToleranceCount', name: 'StackSetFailureToleranceCount', traits: {"smithy.api#range" => {"min" => 0}})
    StackSetFailureTolerancePercentage = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.servicecatalog#StackSetFailureTolerancePercentage', name: 'StackSetFailureTolerancePercentage', traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    StackSetMaxConcurrencyCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.servicecatalog#StackSetMaxConcurrencyCount', name: 'StackSetMaxConcurrencyCount', traits: {"smithy.api#range" => {"min" => 1}})
    StackSetMaxConcurrencyPercentage = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.servicecatalog#StackSetMaxConcurrencyPercentage', name: 'StackSetMaxConcurrencyPercentage', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    StackSetOperationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#StackSetOperationType', name: 'StackSetOperationType')
    StackSetRegions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#StackSetRegions', name: 'StackSetRegions')
    Status = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalog#Status', name: 'Status')
    StatusDetail = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#StatusDetail', name: 'StatusDetail')
    StatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#StatusMessage', name: 'StatusMessage', traits: {"smithy.api#pattern" => "^[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*$"})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#String', name: 'String')
    SuccessfulShares = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#SuccessfulShares', name: 'SuccessfulShares')
    SupportDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#SupportDescription', name: 'SupportDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 8191}})
    SupportEmail = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#SupportEmail', name: 'SupportEmail', traits: {"smithy.api#length" => {"min" => 0, "max" => 254}})
    SupportUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#SupportUrl', name: 'SupportUrl', traits: {"smithy.api#length" => {"min" => 0, "max" => 2083}})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#TagKeys', name: 'TagKeys')
    TagOptionActive = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.servicecatalog#TagOptionActive', name: 'TagOptionActive')
    TagOptionDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#TagOptionDetail', name: 'TagOptionDetail')
    TagOptionDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#TagOptionDetails', name: 'TagOptionDetails')
    TagOptionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#TagOptionId', name: 'TagOptionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    TagOptionKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#TagOptionKey', name: 'TagOptionKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagOptionNotMigratedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#TagOptionNotMigratedException', name: 'TagOptionNotMigratedException', traits: {"smithy.api#error" => "client"})
    TagOptionSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#TagOptionSummaries', name: 'TagOptionSummaries')
    TagOptionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#TagOptionSummary', name: 'TagOptionSummary')
    TagOptionValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#TagOptionValue', name: 'TagOptionValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagOptionValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#TagOptionValues', name: 'TagOptionValues')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TerminateProvisionedProductInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#TerminateProvisionedProductInput', name: 'TerminateProvisionedProductInput')
    TerminateProvisionedProductOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#TerminateProvisionedProductOutput', name: 'TerminateProvisionedProductOutput')
    TotalResultsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.servicecatalog#TotalResultsCount', name: 'TotalResultsCount', traits: {"smithy.api#default" => 0})
    UniqueTagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#UniqueTagKey', name: 'UniqueTagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*)$"})
    UniqueTagResourceIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UniqueTagResourceIdentifier', name: 'UniqueTagResourceIdentifier')
    UniqueTagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#UniqueTagValue', name: 'UniqueTagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*)$"})
    UpdateConstraintInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UpdateConstraintInput', name: 'UpdateConstraintInput')
    UpdateConstraintOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UpdateConstraintOutput', name: 'UpdateConstraintOutput')
    UpdatePortfolioInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UpdatePortfolioInput', name: 'UpdatePortfolioInput')
    UpdatePortfolioOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UpdatePortfolioOutput', name: 'UpdatePortfolioOutput')
    UpdatePortfolioShareInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UpdatePortfolioShareInput', name: 'UpdatePortfolioShareInput')
    UpdatePortfolioShareOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UpdatePortfolioShareOutput', name: 'UpdatePortfolioShareOutput')
    UpdateProductInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UpdateProductInput', name: 'UpdateProductInput')
    UpdateProductOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UpdateProductOutput', name: 'UpdateProductOutput')
    UpdateProvisionedProductInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UpdateProvisionedProductInput', name: 'UpdateProvisionedProductInput')
    UpdateProvisionedProductOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UpdateProvisionedProductOutput', name: 'UpdateProvisionedProductOutput')
    UpdateProvisionedProductPropertiesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UpdateProvisionedProductPropertiesInput', name: 'UpdateProvisionedProductPropertiesInput')
    UpdateProvisionedProductPropertiesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UpdateProvisionedProductPropertiesOutput', name: 'UpdateProvisionedProductPropertiesOutput')
    UpdateProvisioningArtifactInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UpdateProvisioningArtifactInput', name: 'UpdateProvisioningArtifactInput')
    UpdateProvisioningArtifactOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UpdateProvisioningArtifactOutput', name: 'UpdateProvisioningArtifactOutput')
    UpdateProvisioningParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UpdateProvisioningParameter', name: 'UpdateProvisioningParameter')
    UpdateProvisioningParameters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#UpdateProvisioningParameters', name: 'UpdateProvisioningParameters')
    UpdateProvisioningPreferences = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UpdateProvisioningPreferences', name: 'UpdateProvisioningPreferences')
    UpdateServiceActionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UpdateServiceActionInput', name: 'UpdateServiceActionInput')
    UpdateServiceActionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UpdateServiceActionOutput', name: 'UpdateServiceActionOutput')
    UpdateTagOptionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UpdateTagOptionInput', name: 'UpdateTagOptionInput')
    UpdateTagOptionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UpdateTagOptionOutput', name: 'UpdateTagOptionOutput')
    UpdatedTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.servicecatalog#UpdatedTime', name: 'UpdatedTime')
    UsageInstruction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalog#UsageInstruction', name: 'UsageInstruction')
    UsageInstructions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalog#UsageInstructions', name: 'UsageInstructions')
    UsePreviousValue = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.servicecatalog#UsePreviousValue', name: 'UsePreviousValue', traits: {"smithy.api#default" => false})
    UserArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#UserArn', name: 'UserArn')
    UserArnSession = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalog#UserArnSession', name: 'UserArnSession')
    Verbose = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.servicecatalog#Verbose', name: 'Verbose', traits: {"smithy.api#default" => false})

    AcceptPortfolioShareInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    AcceptPortfolioShareInput.add_member(:portfolio_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioId', traits: {"smithy.api#documentation" => "<p>The portfolio identifier.</p>", "smithy.api#required" => {}}))
    AcceptPortfolioShareInput.add_member(:portfolio_share_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioShareType, location_name: 'PortfolioShareType', traits: {"smithy.api#documentation" => "<p>The type of shared portfolios to accept. The default is to accept imported portfolios.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>AWS_ORGANIZATIONS</code> - Accept portfolios shared by the management account of your\n               organization.</p>\n            </li>\n            <li>\n               <p>\n                  <code>IMPORTED</code> - Accept imported portfolios.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SERVICECATALOG</code> - Not supported. (Throws ResourceNotFoundException.)</p>\n            </li>\n         </ul>\n         <p>For example, <code>aws servicecatalog accept-portfolio-share --portfolio-id \"port-2qwzkwxt3y5fk\" --portfolio-share-type AWS_ORGANIZATIONS</code>\n         </p>"}))
    AcceptPortfolioShareInput.type = Types::AcceptPortfolioShareInput
    AcceptPortfolioShareOutput.type = Types::AcceptPortfolioShareOutput
    AccessLevelFilter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLevelFilterKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The access level.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Account</code> - Filter results based on the account.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Role</code> - Filter results based on the federated role of the specified user.</p>\n            </li>\n            <li>\n               <p>\n                  <code>User</code> - Filter results based on the specified user.</p>\n            </li>\n         </ul>"}))
    AccessLevelFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLevelFilterValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The user to which the access level applies. The only supported value is <code>self</code>.</p>"}))
    AccessLevelFilter.type = Types::AccessLevelFilter
    AccessLevelFilterKey.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "Account"}))
    AccessLevelFilterKey.add_member(:role, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLE', traits: {"smithy.api#enumValue" => "Role"}))
    AccessLevelFilterKey.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER', traits: {"smithy.api#enumValue" => "User"}))
    AccessStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AccessStatus.add_member(:under_change, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNDER_CHANGE', traits: {"smithy.api#enumValue" => "UNDER_CHANGE"}))
    AccessStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AccountIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    AddTags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    AllowedValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AssociateBudgetWithResourceInput.add_member(:budget_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#documentation" => "<p>The name of the budget you want to associate.</p>", "smithy.api#required" => {}}))
    AssociateBudgetWithResourceInput.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p> The resource identifier. Either a portfolio-id or a product-id.</p>", "smithy.api#required" => {}}))
    AssociateBudgetWithResourceInput.type = Types::AssociateBudgetWithResourceInput
    AssociateBudgetWithResourceOutput.type = Types::AssociateBudgetWithResourceOutput
    AssociatePrincipalWithPortfolioInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    AssociatePrincipalWithPortfolioInput.add_member(:portfolio_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioId', traits: {"smithy.api#documentation" => "<p>The portfolio identifier.</p>", "smithy.api#required" => {}}))
    AssociatePrincipalWithPortfolioInput.add_member(:principal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalARN, location_name: 'PrincipalARN', traits: {"smithy.api#documentation" => "<p>The ARN of the principal (user, role, or group). If the <code>PrincipalType</code> is <code>IAM</code>, the supported value is a \n         fully defined \n         <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns\">IAM Amazon Resource Name (ARN)</a>. \n         If the <code>PrincipalType</code> is <code>IAM_PATTERN</code>, \n         the supported value is an <code>IAM</code> ARN <i>without an AccountID</i> in the following format:</p>\n         <p>\n            <i>arn:partition:iam:::resource-type/resource-id</i>\n         </p>\n         <p>The ARN resource-id can be either:</p>\n         <ul>\n            <li>\n               <p>A fully formed resource-id. For example, <i>arn:aws:iam:::role/resource-name</i> or \n            <i>arn:aws:iam:::role/resource-path/resource-name</i>\n               </p>\n            </li>\n            <li>\n               <p>A wildcard ARN. The wildcard ARN accepts <code>IAM_PATTERN</code> values with a \n               \"*\" or \"?\" in the resource-id segment of the ARN. For example <i>arn:partition:service:::resource-type/resource-path/resource-name</i>. \n               The new symbols are exclusive to the <b>resource-path</b> and <b>resource-name</b> \n               and cannot replace the <b>resource-type</b> or other \n            ARN values. </p>\n               <p>The ARN path and principal name allow unlimited wildcard characters.</p>\n            </li>\n         </ul>\n         <p>Examples of an <b>acceptable</b> wildcard ARN:</p>\n         <ul>\n            <li>\n               <p>arn:aws:iam:::role/ResourceName_*</p>\n            </li>\n            <li>\n               <p>arn:aws:iam:::role/*/ResourceName_?</p>\n            </li>\n         </ul>\n         <p>Examples of an <b>unacceptable</b> wildcard ARN:</p>\n         <ul>\n            <li>\n               <p>arn:aws:iam:::*/ResourceName</p>\n            </li>\n         </ul>\n         <p>You can associate multiple <code>IAM_PATTERN</code>s even if the account has no principal \n         with that name. </p>\n         <p>The \"?\" wildcard character matches zero or one of any character. This is similar to \".?\" in regular \n                  regex context. The \"*\" wildcard character matches any number of any characters. \n                  This is similar to \".*\" in regular regex context.</p>\n         <p>In the IAM Principal ARN format (<i>arn:partition:iam:::resource-type/resource-path/resource-name</i>), \n         valid resource-type values include <b>user/</b>, <b>group/</b>, \n            or <b>role/</b>.  The \"?\" and \"*\" characters\n                  are allowed only after the resource-type in the resource-id segment. \n                  You can use special characters anywhere within the resource-id. </p>\n         <p>The \"*\" character also matches the \"/\" character, allowing paths to be formed <i>within</i> the \n                  resource-id. For example, <i>arn:aws:iam:::role/<b>*</b>/ResourceName_?</i> \n                  matches both <i>arn:aws:iam:::role/pathA/pathB/ResourceName_1</i> \n                  and \n                  <i>arn:aws:iam:::role/pathA/ResourceName_1</i>. </p>", "smithy.api#required" => {}}))
    AssociatePrincipalWithPortfolioInput.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'PrincipalType', traits: {"smithy.api#documentation" => "<p>The principal type. The supported value is <code>IAM</code> if you use a fully defined Amazon Resource Name \n         (ARN), or <code>IAM_PATTERN</code> if you use an ARN with no <code>accountID</code>, \n         with or without wildcard characters. </p>", "smithy.api#required" => {}}))
    AssociatePrincipalWithPortfolioInput.type = Types::AssociatePrincipalWithPortfolioInput
    AssociatePrincipalWithPortfolioOutput.type = Types::AssociatePrincipalWithPortfolioOutput
    AssociateProductWithPortfolioInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    AssociateProductWithPortfolioInput.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>", "smithy.api#required" => {}}))
    AssociateProductWithPortfolioInput.add_member(:portfolio_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioId', traits: {"smithy.api#documentation" => "<p>The portfolio identifier.</p>", "smithy.api#required" => {}}))
    AssociateProductWithPortfolioInput.add_member(:source_portfolio_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'SourcePortfolioId', traits: {"smithy.api#documentation" => "<p>The identifier of the source portfolio.</p>"}))
    AssociateProductWithPortfolioInput.type = Types::AssociateProductWithPortfolioInput
    AssociateProductWithPortfolioOutput.type = Types::AssociateProductWithPortfolioOutput
    AssociateServiceActionWithProvisioningArtifactInput.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>", "smithy.api#required" => {}}))
    AssociateServiceActionWithProvisioningArtifactInput.add_member(:provisioning_artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisioningArtifactId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>", "smithy.api#required" => {}}))
    AssociateServiceActionWithProvisioningArtifactInput.add_member(:service_action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ServiceActionId', traits: {"smithy.api#documentation" => "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>", "smithy.api#required" => {}}))
    AssociateServiceActionWithProvisioningArtifactInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    AssociateServiceActionWithProvisioningArtifactInput.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you provide to ensure idempotency. If multiple requests from the same Amazon Web Services account use the same idempotency token, the same response is returned for each repeated request. </p>", "smithy.api#idempotencyToken" => {}}))
    AssociateServiceActionWithProvisioningArtifactInput.type = Types::AssociateServiceActionWithProvisioningArtifactInput
    AssociateServiceActionWithProvisioningArtifactOutput.type = Types::AssociateServiceActionWithProvisioningArtifactOutput
    AssociateTagOptionWithResourceInput.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The resource identifier.</p>", "smithy.api#required" => {}}))
    AssociateTagOptionWithResourceInput.add_member(:tag_option_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionId, location_name: 'TagOptionId', traits: {"smithy.api#documentation" => "<p>The TagOption identifier.</p>", "smithy.api#required" => {}}))
    AssociateTagOptionWithResourceInput.type = Types::AssociateTagOptionWithResourceInput
    AssociateTagOptionWithResourceOutput.type = Types::AssociateTagOptionWithResourceOutput
    BatchAssociateServiceActionWithProvisioningArtifactInput.add_member(:service_action_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionAssociations, location_name: 'ServiceActionAssociations', traits: {"smithy.api#documentation" => "<p>One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>", "smithy.api#required" => {}}))
    BatchAssociateServiceActionWithProvisioningArtifactInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    BatchAssociateServiceActionWithProvisioningArtifactInput.type = Types::BatchAssociateServiceActionWithProvisioningArtifactInput
    BatchAssociateServiceActionWithProvisioningArtifactOutput.add_member(:failed_service_action_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedServiceActionAssociations, location_name: 'FailedServiceActionAssociations', traits: {"smithy.api#documentation" => "<p>An object that contains a list of errors, along with information to help you identify the self-service action.</p>"}))
    BatchAssociateServiceActionWithProvisioningArtifactOutput.type = Types::BatchAssociateServiceActionWithProvisioningArtifactOutput
    BatchDisassociateServiceActionFromProvisioningArtifactInput.add_member(:service_action_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionAssociations, location_name: 'ServiceActionAssociations', traits: {"smithy.api#documentation" => "<p>One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>", "smithy.api#required" => {}}))
    BatchDisassociateServiceActionFromProvisioningArtifactInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    BatchDisassociateServiceActionFromProvisioningArtifactInput.type = Types::BatchDisassociateServiceActionFromProvisioningArtifactInput
    BatchDisassociateServiceActionFromProvisioningArtifactOutput.add_member(:failed_service_action_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedServiceActionAssociations, location_name: 'FailedServiceActionAssociations', traits: {"smithy.api#documentation" => "<p>An object that contains a list of errors, along with information to help you identify the self-service action.</p>"}))
    BatchDisassociateServiceActionFromProvisioningArtifactOutput.type = Types::BatchDisassociateServiceActionFromProvisioningArtifactOutput
    BudgetDetail.add_member(:budget_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#documentation" => "<p>Name of the associated budget.</p>"}))
    BudgetDetail.type = Types::BudgetDetail
    Budgets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetDetail)
    ChangeAction.add_member(:add, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADD', traits: {"smithy.api#enumValue" => "ADD"}))
    ChangeAction.add_member(:modify, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFY', traits: {"smithy.api#enumValue" => "MODIFY"}))
    ChangeAction.add_member(:remove, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVE', traits: {"smithy.api#enumValue" => "REMOVE"}))
    CloudWatchDashboard.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchDashboardName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the CloudWatch dashboard.</p>"}))
    CloudWatchDashboard.type = Types::CloudWatchDashboard
    CloudWatchDashboards.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchDashboard)
    CodeStarParameters.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeStarConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The CodeStar ARN, which is the connection between Service Catalog and the external repository.</p>", "smithy.api#required" => {}}))
    CodeStarParameters.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: Repository, location_name: 'Repository', traits: {"smithy.api#documentation" => "<p>The specific repository where the product’s artifact-to-be-synced resides, formatted as \n         \"Account/Repo.\" </p>", "smithy.api#required" => {}}))
    CodeStarParameters.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryBranch, location_name: 'Branch', traits: {"smithy.api#documentation" => "<p>The specific branch where the artifact resides. </p>", "smithy.api#required" => {}}))
    CodeStarParameters.add_member(:artifact_path, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryArtifactPath, location_name: 'ArtifactPath', traits: {"smithy.api#documentation" => "<p>The absolute path wehre the artifact resides within the repo and branch, formatted as \n         \"folder/file.json.\" </p>", "smithy.api#required" => {}}))
    CodeStarParameters.type = Types::CodeStarParameters
    ConstraintDetail.add_member(:constraint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ConstraintId', traits: {"smithy.api#documentation" => "<p>The identifier of the constraint.</p>"}))
    ConstraintDetail.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of constraint.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>LAUNCH</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>NOTIFICATION</code>\n               </p>\n            </li>\n            <li>\n               <p>STACKSET</p>\n            </li>\n            <li>\n               <p>\n                  <code>TEMPLATE</code>\n               </p>\n            </li>\n         </ul>"}))
    ConstraintDetail.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the constraint.</p>"}))
    ConstraintDetail.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The owner of the constraint.</p>"}))
    ConstraintDetail.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The identifier of the product the constraint applies to. Note that a constraint applies to a specific instance of a product within a certain portfolio.</p>"}))
    ConstraintDetail.add_member(:portfolio_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioId', traits: {"smithy.api#documentation" => "<p>The identifier of the portfolio the product resides in. The constraint applies only to the instance of the product that lives within this portfolio.</p>"}))
    ConstraintDetail.type = Types::ConstraintDetail
    ConstraintDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintDetail)
    ConstraintSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintSummary)
    ConstraintSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of constraint.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>LAUNCH</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>NOTIFICATION</code>\n               </p>\n            </li>\n            <li>\n               <p>STACKSET</p>\n            </li>\n            <li>\n               <p>\n                  <code>TEMPLATE</code>\n               </p>\n            </li>\n         </ul>"}))
    ConstraintSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the constraint.</p>"}))
    ConstraintSummary.type = Types::ConstraintSummary
    CopyOption.add_member(:copy_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CopyTags', traits: {"smithy.api#enumValue" => "CopyTags"}))
    CopyOptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyOption)
    CopyProductInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    CopyProductInput.add_member(:source_product_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductArn, location_name: 'SourceProductArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the source product.</p>", "smithy.api#required" => {}}))
    CopyProductInput.add_member(:target_product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'TargetProductId', traits: {"smithy.api#documentation" => "<p>The identifier of the target product. By default, a new product is created.</p>"}))
    CopyProductInput.add_member(:target_product_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewName, location_name: 'TargetProductName', traits: {"smithy.api#documentation" => "<p>A name for the target product. The default is the name of the source product.</p>"}))
    CopyProductInput.add_member(:source_provisioning_artifact_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceProvisioningArtifactProperties, location_name: 'SourceProvisioningArtifactIdentifiers', traits: {"smithy.api#documentation" => "<p>The identifiers of the provisioning artifacts (also known as versions) of the product to copy. \n         By default, all provisioning artifacts are copied.</p>"}))
    CopyProductInput.add_member(:copy_options, Smithy::Schema::Shapes::ShapeRef.new(shape: CopyOptions, location_name: 'CopyOptions', traits: {"smithy.api#documentation" => "<p>The copy options. If the value is <code>CopyTags</code>, the tags from the source\n         product are copied to the target product.</p>"}))
    CopyProductInput.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p> A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,\n  the same response is returned for each repeated request. </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CopyProductInput.type = Types::CopyProductInput
    CopyProductOutput.add_member(:copy_product_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'CopyProductToken', traits: {"smithy.api#documentation" => "<p>The token to use to track the progress of the operation.</p>"}))
    CopyProductOutput.type = Types::CopyProductOutput
    CopyProductStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    CopyProductStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    CopyProductStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CreateConstraintInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    CreateConstraintInput.add_member(:portfolio_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioId', traits: {"smithy.api#documentation" => "<p>The portfolio identifier.</p>", "smithy.api#required" => {}}))
    CreateConstraintInput.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>", "smithy.api#required" => {}}))
    CreateConstraintInput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintParameters, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:</p>\n         <dl>\n            <dt>LAUNCH</dt>\n            <dd>\n               <p>You are required to specify either the <code>RoleArn</code> or the <code>LocalRoleName</code> but can't use both.</p>\n               <p>Specify the <code>RoleArn</code> property as follows:</p>\n               <p>\n                  <code>{\"RoleArn\" : \"arn:aws:iam::123456789012:role/LaunchRole\"}</code>\n               </p>\n               <p>Specify the <code>LocalRoleName</code> property as follows:</p>\n               <p>\n                  <code>{\"LocalRoleName\": \"SCBasicLaunchRole\"}</code>\n               </p>\n               <p>If you specify the <code>LocalRoleName</code> property, when an account uses the launch constraint, the IAM role with that name in the account will be used. This allows launch-role constraints to be \n               account-agnostic so the administrator can create fewer resources per shared account.</p>\n               <note>\n                  <p>The given role name must exist in the account used to create the launch constraint and the account of the user who launches a product with this launch constraint.</p>\n               </note>\n               <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>\n               <p>You also cannot have more than one <code>LAUNCH</code> constraint on a product and portfolio.</p>\n            </dd>\n            <dt>NOTIFICATION</dt>\n            <dd>\n               <p>Specify the <code>NotificationArns</code> property as follows:</p>\n               <p>\n                  <code>{\"NotificationArns\" : [\"arn:aws:sns:us-east-1:123456789012:Topic\"]}</code>\n               </p>\n            </dd>\n            <dt>RESOURCE_UPDATE</dt>\n            <dd>\n               <p>Specify the <code>TagUpdatesOnProvisionedProduct</code> property as follows:</p>\n               <p>\n                  <code>{\"Version\":\"2.0\",\"Properties\":{\"TagUpdateOnProvisionedProduct\":\"String\"}}</code>\n               </p>\n               <p>The <code>TagUpdatesOnProvisionedProduct</code> property accepts a string value of <code>ALLOWED</code> or <code>NOT_ALLOWED</code>.</p>\n            </dd>\n            <dt>STACKSET</dt>\n            <dd>\n               <p>Specify the <code>Parameters</code> property as follows:</p>\n               <p>\n                  <code>{\"Version\": \"String\", \"Properties\": {\"AccountList\": [ \"String\" ], \"RegionList\": [ \"String\" ], \"AdminRole\": \"String\", \"ExecutionRole\": \"String\"}}</code>\n               </p>\n               <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>\n               <p>You also cannot have more than one <code>STACKSET</code> constraint on a product and portfolio.</p>\n               <p>Products with a <code>STACKSET</code> constraint will launch an CloudFormation stack set.</p>\n            </dd>\n            <dt>TEMPLATE</dt>\n            <dd>\n               <p>Specify the <code>Rules</code> property. For more information, see\n                  <a href=\"http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html\">Template Constraint Rules</a>.</p>\n            </dd>\n         </dl>", "smithy.api#required" => {}}))
    CreateConstraintInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of constraint.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>LAUNCH</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>NOTIFICATION</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>RESOURCE_UPDATE</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>STACKSET</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>TEMPLATE</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateConstraintInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the constraint.</p>"}))
    CreateConstraintInput.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,\n  the same response is returned for each repeated request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateConstraintInput.type = Types::CreateConstraintInput
    CreateConstraintOutput.add_member(:constraint_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintDetail, location_name: 'ConstraintDetail', traits: {"smithy.api#documentation" => "<p>Information about the constraint.</p>"}))
    CreateConstraintOutput.add_member(:constraint_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintParameters, location_name: 'ConstraintParameters', traits: {"smithy.api#documentation" => "<p>The constraint parameters.</p>"}))
    CreateConstraintOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the current request.</p>"}))
    CreateConstraintOutput.type = Types::CreateConstraintOutput
    CreatePortfolioInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    CreatePortfolioInput.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioDisplayName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The name to use for display purposes.</p>", "smithy.api#required" => {}}))
    CreatePortfolioInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the portfolio.</p>"}))
    CreatePortfolioInput.add_member(:provider_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'ProviderName', traits: {"smithy.api#documentation" => "<p>The name of the portfolio provider.</p>", "smithy.api#required" => {}}))
    CreatePortfolioInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: AddTags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>One or more tags.</p>"}))
    CreatePortfolioInput.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,\n  the same response is returned for each repeated request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreatePortfolioInput.type = Types::CreatePortfolioInput
    CreatePortfolioOutput.add_member(:portfolio_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioDetail, location_name: 'PortfolioDetail', traits: {"smithy.api#documentation" => "<p>Information about the portfolio.</p>"}))
    CreatePortfolioOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Information about the tags associated with the portfolio.</p>"}))
    CreatePortfolioOutput.type = Types::CreatePortfolioOutput
    CreatePortfolioShareInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    CreatePortfolioShareInput.add_member(:portfolio_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioId', traits: {"smithy.api#documentation" => "<p>The portfolio identifier.</p>", "smithy.api#required" => {}}))
    CreatePortfolioShareInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID. For example, <code>123456789012</code>.</p>"}))
    CreatePortfolioShareInput.add_member(:organization_node, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNode, location_name: 'OrganizationNode', traits: {"smithy.api#documentation" => "<p>The organization node to whom you are going to share. When you pass <code>OrganizationNode</code>, it creates <code>PortfolioShare</code> for all of the Amazon Web Services accounts that are associated to the <code>OrganizationNode</code>. \n      The output returns a <code>PortfolioShareToken</code>, which enables the administrator to monitor the status of the <code>PortfolioShare</code> creation process.</p>"}))
    CreatePortfolioShareInput.add_member(:share_tag_options, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ShareTagOptions', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Enables or disables <code>TagOptions </code> sharing when creating the portfolio share. If this flag is not \n         provided, TagOptions sharing is disabled.</p>"}))
    CreatePortfolioShareInput.add_member(:share_principals, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SharePrincipals', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>This parameter is only supported for portfolios with an <b>OrganizationalNode</b> \n      Type of <code>ORGANIZATION</code> or <code>ORGANIZATIONAL_UNIT</code>. </p>\n         <p>Enables or disables <code>Principal</code> sharing when creating the portfolio share. If you do \n         <b>not</b> provide this flag, principal sharing is disabled. </p>\n         <p>When you enable Principal Name Sharing for a portfolio share, the share recipient\n         account end users with a principal that matches any of the associated IAM\n         patterns can provision products from the portfolio. Once\n         shared, the share recipient can view associations of <code>PrincipalType</code>: \n         <code>IAM_PATTERN</code> on their portfolio. You can create the principals in the recipient account before or \n         after creating the share. </p>"}))
    CreatePortfolioShareInput.type = Types::CreatePortfolioShareInput
    CreatePortfolioShareOutput.add_member(:portfolio_share_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioShareToken', traits: {"smithy.api#documentation" => "<p>The portfolio shares a unique identifier that only returns if the portfolio is shared to an organization node.</p>"}))
    CreatePortfolioShareOutput.type = Types::CreatePortfolioShareOutput
    CreateProductInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    CreateProductInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the product.</p>", "smithy.api#required" => {}}))
    CreateProductInput.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewOwner, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The owner of the product.</p>", "smithy.api#required" => {}}))
    CreateProductInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewShortDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the product.</p>"}))
    CreateProductInput.add_member(:distributor, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewOwner, location_name: 'Distributor', traits: {"smithy.api#documentation" => "<p>The distributor of the product.</p>"}))
    CreateProductInput.add_member(:support_description, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportDescription, location_name: 'SupportDescription', traits: {"smithy.api#documentation" => "<p>The support information about the product.</p>"}))
    CreateProductInput.add_member(:support_email, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportEmail, location_name: 'SupportEmail', traits: {"smithy.api#documentation" => "<p>The contact email for product support.</p>"}))
    CreateProductInput.add_member(:support_url, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportUrl, location_name: 'SupportUrl', traits: {"smithy.api#documentation" => "<p>The contact URL for product support.</p>\n         <p>\n            <code>^https?:\\/\\// </code>/ is the pattern used to validate SupportUrl.</p>"}))
    CreateProductInput.add_member(:product_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductType, location_name: 'ProductType', traits: {"smithy.api#documentation" => "<p>The type of product.</p>", "smithy.api#required" => {}}))
    CreateProductInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: AddTags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>One or more tags.</p>"}))
    CreateProductInput.add_member(:provisioning_artifact_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactProperties, location_name: 'ProvisioningArtifactParameters', traits: {"smithy.api#documentation" => "<p>The configuration of the provisioning artifact. </p>"}))
    CreateProductInput.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,\n  the same response is returned for each repeated request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateProductInput.add_member(:source_connection, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConnection, location_name: 'SourceConnection', traits: {"smithy.api#documentation" => "<p>Specifies connection details for the created product and syncs the product to the connection source\n         artifact. This automatically manages the product's artifacts based on changes to the source.\n         The <code>SourceConnection</code> parameter consists of the following sub-fields.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Type</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>ConnectionParamters</code>\n               </p>\n            </li>\n         </ul>"}))
    CreateProductInput.type = Types::CreateProductInput
    CreateProductOutput.add_member(:product_view_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewDetail, location_name: 'ProductViewDetail', traits: {"smithy.api#documentation" => "<p>Information about the product view.</p>"}))
    CreateProductOutput.add_member(:provisioning_artifact_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactDetail, location_name: 'ProvisioningArtifactDetail', traits: {"smithy.api#documentation" => "<p>Information about the provisioning artifact. </p>"}))
    CreateProductOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Information about the tags associated with the product.</p>"}))
    CreateProductOutput.type = Types::CreateProductOutput
    CreateProvisionedProductPlanInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    CreateProvisionedProductPlanInput.add_member(:plan_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductPlanName, location_name: 'PlanName', traits: {"smithy.api#documentation" => "<p>The name of the plan.</p>", "smithy.api#required" => {}}))
    CreateProvisionedProductPlanInput.add_member(:plan_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductPlanType, location_name: 'PlanType', traits: {"smithy.api#documentation" => "<p>The plan type.</p>", "smithy.api#required" => {}}))
    CreateProvisionedProductPlanInput.add_member(:notification_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationArns, location_name: 'NotificationArns', traits: {"smithy.api#documentation" => "<p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related\n         events.</p>"}))
    CreateProvisionedProductPlanInput.add_member(:path_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PathId', traits: {"smithy.api#documentation" => "<p>The path identifier of the product. This value is optional if the product \n         has a default path, and required if the product has more than one path.\n         To list the paths for a product, use <a>ListLaunchPaths</a>.</p>"}))
    CreateProvisionedProductPlanInput.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>", "smithy.api#required" => {}}))
    CreateProvisionedProductPlanInput.add_member(:provisioned_product_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductName, location_name: 'ProvisionedProductName', traits: {"smithy.api#documentation" => "<p>A user-friendly name for the provisioned product. This value must be\n         unique for the Amazon Web Services account and cannot be updated after the product is provisioned.</p>", "smithy.api#required" => {}}))
    CreateProvisionedProductPlanInput.add_member(:provisioning_artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisioningArtifactId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact.</p>", "smithy.api#required" => {}}))
    CreateProvisionedProductPlanInput.add_member(:provisioning_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProvisioningParameters, location_name: 'ProvisioningParameters', traits: {"smithy.api#documentation" => "<p>Parameters specified by the administrator that are required for provisioning the\n         product.</p>"}))
    CreateProvisionedProductPlanInput.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,\n  the same response is returned for each repeated request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateProvisionedProductPlanInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>One or more tags.</p>\n         <p>If the plan is for an existing provisioned product, the product must have a <code>RESOURCE_UPDATE</code> constraint with <code>TagUpdatesOnProvisionedProduct</code> set to <code>ALLOWED</code> to allow tag updates.</p>"}))
    CreateProvisionedProductPlanInput.type = Types::CreateProvisionedProductPlanInput
    CreateProvisionedProductPlanOutput.add_member(:plan_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductPlanName, location_name: 'PlanName', traits: {"smithy.api#documentation" => "<p>The name of the plan.</p>"}))
    CreateProvisionedProductPlanOutput.add_member(:plan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PlanId', traits: {"smithy.api#documentation" => "<p>The plan identifier.</p>"}))
    CreateProvisionedProductPlanOutput.add_member(:provision_product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisionProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>"}))
    CreateProvisionedProductPlanOutput.add_member(:provisioned_product_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductName, location_name: 'ProvisionedProductName', traits: {"smithy.api#documentation" => "<p>The user-friendly name of the provisioned product.</p>"}))
    CreateProvisionedProductPlanOutput.add_member(:provisioning_artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisioningArtifactId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact.</p>"}))
    CreateProvisionedProductPlanOutput.type = Types::CreateProvisionedProductPlanOutput
    CreateProvisioningArtifactInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    CreateProvisioningArtifactInput.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>", "smithy.api#required" => {}}))
    CreateProvisioningArtifactInput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactProperties, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>The configuration for the provisioning artifact.</p>", "smithy.api#required" => {}}))
    CreateProvisioningArtifactInput.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,\n  the same response is returned for each repeated request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateProvisioningArtifactInput.type = Types::CreateProvisioningArtifactInput
    CreateProvisioningArtifactOutput.add_member(:provisioning_artifact_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactDetail, location_name: 'ProvisioningArtifactDetail', traits: {"smithy.api#documentation" => "<p>Information about the provisioning artifact.</p>"}))
    CreateProvisioningArtifactOutput.add_member(:info, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactInfo, location_name: 'Info', traits: {"smithy.api#documentation" => "<p>Specify the template source with one of the following options, but not both. Keys\n         accepted: [ <code>LoadTemplateFromURL</code>, <code>ImportFromPhysicalId</code> ].</p>\n         <p>Use the URL of the CloudFormation template in Amazon S3 or GitHub in JSON format. </p>\n         <p>\n            <code>LoadTemplateFromURL</code>\n         </p>\n         <p>Use the URL of the CloudFormation template in Amazon S3 or GitHub in JSON format.</p>\n         <p>\n            <code>ImportFromPhysicalId</code>\n         </p>\n         <p>Use the physical id of the resource that contains the template; currently supports CloudFormation stack ARN.</p>"}))
    CreateProvisioningArtifactOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the current request.</p>"}))
    CreateProvisioningArtifactOutput.type = Types::CreateProvisioningArtifactOutput
    CreateServiceActionInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The self-service action name.</p>", "smithy.api#required" => {}}))
    CreateServiceActionInput.add_member(:definition_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionDefinitionType, location_name: 'DefinitionType', traits: {"smithy.api#documentation" => "<p>The service action definition type. For example, <code>SSM_AUTOMATION</code>.</p>", "smithy.api#required" => {}}))
    CreateServiceActionInput.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionDefinitionMap, location_name: 'Definition', traits: {"smithy.api#documentation" => "<p>The self-service action definition. Can be one of the following:</p>\n         <dl>\n            <dt>Name</dt>\n            <dd>\n               <p>The name of the Amazon Web Services Systems Manager document (SSM document). For example, <code>AWS-RestartEC2Instance</code>.</p>\n               <p>If you are using a shared SSM document, you must provide the ARN instead of the name.</p>\n            </dd>\n            <dt>Version</dt>\n            <dd>\n               <p>The Amazon Web Services Systems Manager automation document version. For example, <code>\"Version\": \"1\"</code>\n               </p>\n            </dd>\n            <dt>AssumeRole</dt>\n            <dd>\n               <p>The Amazon Resource Name (ARN) of the role that performs the self-service actions on your behalf. For example, <code>\"AssumeRole\": \"arn:aws:iam::12345678910:role/ActionRole\"</code>.</p>\n               <p>To reuse the provisioned product launch role, set to <code>\"AssumeRole\": \"LAUNCH_ROLE\"</code>.</p>\n            </dd>\n            <dt>Parameters</dt>\n            <dd>\n               <p>The list of parameters in JSON format.</p>\n               <p>For example: <code>[{\\\"Name\\\":\\\"InstanceId\\\",\\\"Type\\\":\\\"TARGET\\\"}]</code> or <code>[{\\\"Name\\\":\\\"InstanceId\\\",\\\"Type\\\":\\\"TEXT_VALUE\\\"}]</code>.</p>\n            </dd>\n         </dl>", "smithy.api#required" => {}}))
    CreateServiceActionInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The self-service action description.</p>"}))
    CreateServiceActionInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    CreateServiceActionInput.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,\n  the same response is returned for each repeated request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateServiceActionInput.type = Types::CreateServiceActionInput
    CreateServiceActionOutput.add_member(:service_action_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionDetail, location_name: 'ServiceActionDetail', traits: {"smithy.api#documentation" => "<p>An object containing information about the self-service action.</p>"}))
    CreateServiceActionOutput.type = Types::CreateServiceActionOutput
    CreateTagOptionInput.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The TagOption key.</p>", "smithy.api#required" => {}}))
    CreateTagOptionInput.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The TagOption value.</p>", "smithy.api#required" => {}}))
    CreateTagOptionInput.type = Types::CreateTagOptionInput
    CreateTagOptionOutput.add_member(:tag_option_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionDetail, location_name: 'TagOptionDetail', traits: {"smithy.api#documentation" => "<p>Information about the TagOption.</p>"}))
    CreateTagOptionOutput.type = Types::CreateTagOptionOutput
    DeleteConstraintInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DeleteConstraintInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the constraint.</p>", "smithy.api#required" => {}}))
    DeleteConstraintInput.type = Types::DeleteConstraintInput
    DeleteConstraintOutput.type = Types::DeleteConstraintOutput
    DeletePortfolioInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DeletePortfolioInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The portfolio identifier.</p>", "smithy.api#required" => {}}))
    DeletePortfolioInput.type = Types::DeletePortfolioInput
    DeletePortfolioOutput.type = Types::DeletePortfolioOutput
    DeletePortfolioShareInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DeletePortfolioShareInput.add_member(:portfolio_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioId', traits: {"smithy.api#documentation" => "<p>The portfolio identifier.</p>", "smithy.api#required" => {}}))
    DeletePortfolioShareInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID.</p>"}))
    DeletePortfolioShareInput.add_member(:organization_node, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNode, location_name: 'OrganizationNode', traits: {"smithy.api#documentation" => "<p>The organization node to whom you are going to stop sharing.</p>"}))
    DeletePortfolioShareInput.type = Types::DeletePortfolioShareInput
    DeletePortfolioShareOutput.add_member(:portfolio_share_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioShareToken', traits: {"smithy.api#documentation" => "<p>The portfolio share unique identifier. This will only be returned if delete is made to an organization node.</p>"}))
    DeletePortfolioShareOutput.type = Types::DeletePortfolioShareOutput
    DeleteProductInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DeleteProductInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>", "smithy.api#required" => {}}))
    DeleteProductInput.type = Types::DeleteProductInput
    DeleteProductOutput.type = Types::DeleteProductOutput
    DeleteProvisionedProductPlanInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DeleteProvisionedProductPlanInput.add_member(:plan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PlanId', traits: {"smithy.api#documentation" => "<p>The plan identifier.</p>", "smithy.api#required" => {}}))
    DeleteProvisionedProductPlanInput.add_member(:ignore_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: IgnoreErrors, location_name: 'IgnoreErrors', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If set to true, Service Catalog stops managing the specified provisioned product even\n         if it cannot delete the underlying resources.</p>"}))
    DeleteProvisionedProductPlanInput.type = Types::DeleteProvisionedProductPlanInput
    DeleteProvisionedProductPlanOutput.type = Types::DeleteProvisionedProductPlanOutput
    DeleteProvisioningArtifactInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DeleteProvisioningArtifactInput.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>", "smithy.api#required" => {}}))
    DeleteProvisioningArtifactInput.add_member(:provisioning_artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisioningArtifactId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact.</p>", "smithy.api#required" => {}}))
    DeleteProvisioningArtifactInput.type = Types::DeleteProvisioningArtifactInput
    DeleteProvisioningArtifactOutput.type = Types::DeleteProvisioningArtifactOutput
    DeleteServiceActionInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>", "smithy.api#required" => {}}))
    DeleteServiceActionInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DeleteServiceActionInput.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you provide to ensure idempotency. If multiple requests from the same Amazon Web Services account use the same idempotency token, the same response is returned for each repeated request. </p>", "smithy.api#idempotencyToken" => {}}))
    DeleteServiceActionInput.type = Types::DeleteServiceActionInput
    DeleteServiceActionOutput.type = Types::DeleteServiceActionOutput
    DeleteTagOptionInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The TagOption identifier.</p>", "smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    DeleteTagOptionInput.type = Types::DeleteTagOptionInput
    DeleteTagOptionOutput.type = Types::DeleteTagOptionOutput
    DescribeConstraintInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DescribeConstraintInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the constraint.</p>", "smithy.api#required" => {}}))
    DescribeConstraintInput.type = Types::DescribeConstraintInput
    DescribeConstraintOutput.add_member(:constraint_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintDetail, location_name: 'ConstraintDetail', traits: {"smithy.api#documentation" => "<p>Information about the constraint.</p>"}))
    DescribeConstraintOutput.add_member(:constraint_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintParameters, location_name: 'ConstraintParameters', traits: {"smithy.api#documentation" => "<p>The constraint parameters.</p>"}))
    DescribeConstraintOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the current request.</p>"}))
    DescribeConstraintOutput.type = Types::DescribeConstraintOutput
    DescribeCopyProductStatusInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DescribeCopyProductStatusInput.add_member(:copy_product_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'CopyProductToken', traits: {"smithy.api#documentation" => "<p>The token for the copy product operation. This token is returned by <a>CopyProduct</a>.</p>", "smithy.api#required" => {}}))
    DescribeCopyProductStatusInput.type = Types::DescribeCopyProductStatusInput
    DescribeCopyProductStatusOutput.add_member(:copy_product_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CopyProductStatus, location_name: 'CopyProductStatus', traits: {"smithy.api#documentation" => "<p>The status of the copy product operation.</p>"}))
    DescribeCopyProductStatusOutput.add_member(:target_product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'TargetProductId', traits: {"smithy.api#documentation" => "<p>The identifier of the copied product.</p>"}))
    DescribeCopyProductStatusOutput.add_member(:status_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusDetail, location_name: 'StatusDetail', traits: {"smithy.api#documentation" => "<p>The status message.</p>"}))
    DescribeCopyProductStatusOutput.type = Types::DescribeCopyProductStatusOutput
    DescribePortfolioInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DescribePortfolioInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The portfolio identifier.</p>", "smithy.api#required" => {}}))
    DescribePortfolioInput.type = Types::DescribePortfolioInput
    DescribePortfolioOutput.add_member(:portfolio_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioDetail, location_name: 'PortfolioDetail', traits: {"smithy.api#documentation" => "<p>Information about the portfolio.</p>"}))
    DescribePortfolioOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Information about the tags associated with the portfolio.</p>"}))
    DescribePortfolioOutput.add_member(:tag_options, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionDetails, location_name: 'TagOptions', traits: {"smithy.api#documentation" => "<p>Information about the TagOptions associated with the portfolio.</p>"}))
    DescribePortfolioOutput.add_member(:budgets, Smithy::Schema::Shapes::ShapeRef.new(shape: Budgets, location_name: 'Budgets', traits: {"smithy.api#documentation" => "<p>Information about the associated budgets.</p>"}))
    DescribePortfolioOutput.type = Types::DescribePortfolioOutput
    DescribePortfolioShareStatusInput.add_member(:portfolio_share_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioShareToken', traits: {"smithy.api#documentation" => "<p>The token for the portfolio share operation. This token is returned either by CreatePortfolioShare or by DeletePortfolioShare.</p>", "smithy.api#required" => {}}))
    DescribePortfolioShareStatusInput.type = Types::DescribePortfolioShareStatusInput
    DescribePortfolioShareStatusOutput.add_member(:portfolio_share_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioShareToken', traits: {"smithy.api#documentation" => "<p>The token for the portfolio share operation. For example, <code>share-6v24abcdefghi</code>.</p>"}))
    DescribePortfolioShareStatusOutput.add_member(:portfolio_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioId', traits: {"smithy.api#documentation" => "<p>The portfolio identifier.</p>"}))
    DescribePortfolioShareStatusOutput.add_member(:organization_node_value, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNodeValue, location_name: 'OrganizationNodeValue', traits: {"smithy.api#documentation" => "<p>Organization node identifier. It can be either account id, organizational unit id or organization id.</p>"}))
    DescribePortfolioShareStatusOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of the portfolio share operation.</p>"}))
    DescribePortfolioShareStatusOutput.add_member(:share_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareDetails, location_name: 'ShareDetails', traits: {"smithy.api#documentation" => "<p>Information about the portfolio share operation.</p>"}))
    DescribePortfolioShareStatusOutput.type = Types::DescribePortfolioShareStatusOutput
    DescribePortfolioShareType.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    DescribePortfolioShareType.add_member(:organization, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION', traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    DescribePortfolioShareType.add_member(:organizational_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATIONAL_UNIT', traits: {"smithy.api#enumValue" => "ORGANIZATIONAL_UNIT"}))
    DescribePortfolioShareType.add_member(:organization_member_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION_MEMBER_ACCOUNT', traits: {"smithy.api#enumValue" => "ORGANIZATION_MEMBER_ACCOUNT"}))
    DescribePortfolioSharesInput.add_member(:portfolio_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the portfolio for which shares will be retrieved.</p>", "smithy.api#required" => {}}))
    DescribePortfolioSharesInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePortfolioShareType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of portfolio share to summarize. This field acts as a filter on the type of portfolio share, which can be one of the following:</p>\n         <p>1. <code>ACCOUNT</code> - Represents an external account to account share.</p>\n         <p>2. <code>ORGANIZATION</code> - Represents a share to an organization. This share is available to every account in the organization.</p>\n         <p>3. <code>ORGANIZATIONAL_UNIT</code> - Represents a share to an organizational unit.</p>\n         <p>4. <code>ORGANIZATION_MEMBER_ACCOUNT</code> - Represents a share to an account in the organization.</p>", "smithy.api#required" => {}}))
    DescribePortfolioSharesInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    DescribePortfolioSharesInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSizeMax100, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    DescribePortfolioSharesInput.type = Types::DescribePortfolioSharesInput
    DescribePortfolioSharesOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    DescribePortfolioSharesOutput.add_member(:portfolio_share_details, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioShareDetails, location_name: 'PortfolioShareDetails', traits: {"smithy.api#documentation" => "<p>Summaries about each of the portfolio shares.</p>"}))
    DescribePortfolioSharesOutput.type = Types::DescribePortfolioSharesOutput
    DescribeProductAsAdminInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DescribeProductAsAdminInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>"}))
    DescribeProductAsAdminInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The product name.</p>"}))
    DescribeProductAsAdminInput.add_member(:source_portfolio_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'SourcePortfolioId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the shared portfolio that the specified product is associated\n         with.</p>\n         <p>You can provide this parameter to retrieve the shared TagOptions associated with the\n         product. If this parameter is provided and if TagOptions sharing is enabled in the\n         portfolio share, the API returns both local and shared TagOptions associated with the\n         product. Otherwise only local TagOptions will be returned. </p>"}))
    DescribeProductAsAdminInput.type = Types::DescribeProductAsAdminInput
    DescribeProductAsAdminOutput.add_member(:product_view_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewDetail, location_name: 'ProductViewDetail', traits: {"smithy.api#documentation" => "<p>Information about the product view.</p>"}))
    DescribeProductAsAdminOutput.add_member(:provisioning_artifact_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactSummaries, location_name: 'ProvisioningArtifactSummaries', traits: {"smithy.api#documentation" => "<p>Information about the provisioning artifacts (also known as versions) for the specified product.</p>"}))
    DescribeProductAsAdminOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Information about the tags associated with the product.</p>"}))
    DescribeProductAsAdminOutput.add_member(:tag_options, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionDetails, location_name: 'TagOptions', traits: {"smithy.api#documentation" => "<p>Information about the TagOptions associated with the product.</p>"}))
    DescribeProductAsAdminOutput.add_member(:budgets, Smithy::Schema::Shapes::ShapeRef.new(shape: Budgets, location_name: 'Budgets', traits: {"smithy.api#documentation" => "<p>Information about the associated budgets.</p>"}))
    DescribeProductAsAdminOutput.type = Types::DescribeProductAsAdminOutput
    DescribeProductInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DescribeProductInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>"}))
    DescribeProductInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The product name.</p>"}))
    DescribeProductInput.type = Types::DescribeProductInput
    DescribeProductOutput.add_member(:product_view_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewSummary, location_name: 'ProductViewSummary', traits: {"smithy.api#documentation" => "<p>Summary information about the product view.</p>"}))
    DescribeProductOutput.add_member(:provisioning_artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifacts, location_name: 'ProvisioningArtifacts', traits: {"smithy.api#documentation" => "<p>Information about the provisioning artifacts for the specified product.</p>"}))
    DescribeProductOutput.add_member(:budgets, Smithy::Schema::Shapes::ShapeRef.new(shape: Budgets, location_name: 'Budgets', traits: {"smithy.api#documentation" => "<p>Information about the associated budgets.</p>"}))
    DescribeProductOutput.add_member(:launch_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchPaths, location_name: 'LaunchPaths', traits: {"smithy.api#documentation" => "<p>Information about the associated launch paths.</p>"}))
    DescribeProductOutput.type = Types::DescribeProductOutput
    DescribeProductViewInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DescribeProductViewInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The product view identifier.</p>", "smithy.api#required" => {}}))
    DescribeProductViewInput.type = Types::DescribeProductViewInput
    DescribeProductViewOutput.add_member(:product_view_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewSummary, location_name: 'ProductViewSummary', traits: {"smithy.api#documentation" => "<p>Summary information about the product.</p>"}))
    DescribeProductViewOutput.add_member(:provisioning_artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifacts, location_name: 'ProvisioningArtifacts', traits: {"smithy.api#documentation" => "<p>Information about the provisioning artifacts for the product.</p>"}))
    DescribeProductViewOutput.type = Types::DescribeProductViewOutput
    DescribeProvisionedProductInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DescribeProvisionedProductInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The provisioned product identifier. You must provide the name or ID, but not both.</p>\n         <p>If you do not provide a name or ID, or you provide both name and ID, an <code>InvalidParametersException</code> will occur.</p>"}))
    DescribeProvisionedProductInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the provisioned product. You must provide the name or ID, but not both.</p>\n         <p>If you do not provide a name or ID, or you provide both name and ID, an <code>InvalidParametersException</code> will occur.</p>"}))
    DescribeProvisionedProductInput.type = Types::DescribeProvisionedProductInput
    DescribeProvisionedProductOutput.add_member(:provisioned_product_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductDetail, location_name: 'ProvisionedProductDetail', traits: {"smithy.api#documentation" => "<p>Information about the provisioned product.</p>"}))
    DescribeProvisionedProductOutput.add_member(:cloud_watch_dashboards, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchDashboards, location_name: 'CloudWatchDashboards', traits: {"smithy.api#documentation" => "<p>Any CloudWatch dashboards that were created when provisioning the product.</p>"}))
    DescribeProvisionedProductOutput.type = Types::DescribeProvisionedProductOutput
    DescribeProvisionedProductPlanInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DescribeProvisionedProductPlanInput.add_member(:plan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PlanId', traits: {"smithy.api#documentation" => "<p>The plan identifier.</p>", "smithy.api#required" => {}}))
    DescribeProvisionedProductPlanInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    DescribeProvisionedProductPlanInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    DescribeProvisionedProductPlanInput.type = Types::DescribeProvisionedProductPlanInput
    DescribeProvisionedProductPlanOutput.add_member(:provisioned_product_plan_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductPlanDetails, location_name: 'ProvisionedProductPlanDetails', traits: {"smithy.api#documentation" => "<p>Information about the plan.</p>"}))
    DescribeProvisionedProductPlanOutput.add_member(:resource_changes, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceChanges, location_name: 'ResourceChanges', traits: {"smithy.api#documentation" => "<p>Information about the resource changes that will occur when the plan is executed.</p>"}))
    DescribeProvisionedProductPlanOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    DescribeProvisionedProductPlanOutput.type = Types::DescribeProvisionedProductPlanOutput
    DescribeProvisioningArtifactInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DescribeProvisioningArtifactInput.add_member(:provisioning_artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisioningArtifactId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact.</p>"}))
    DescribeProvisioningArtifactInput.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>"}))
    DescribeProvisioningArtifactInput.add_member(:provisioning_artifact_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactName, location_name: 'ProvisioningArtifactName', traits: {"smithy.api#documentation" => "<p>The provisioning artifact name.</p>"}))
    DescribeProvisioningArtifactInput.add_member(:product_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewName, location_name: 'ProductName', traits: {"smithy.api#documentation" => "<p>The product name.</p>"}))
    DescribeProvisioningArtifactInput.add_member(:verbose, Smithy::Schema::Shapes::ShapeRef.new(shape: Verbose, location_name: 'Verbose', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether a verbose level of detail is enabled.</p>"}))
    DescribeProvisioningArtifactInput.add_member(:include_provisioning_artifact_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeProvisioningArtifactParameters', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates if the API call response does or does not include additional details about the provisioning parameters. </p>"}))
    DescribeProvisioningArtifactInput.type = Types::DescribeProvisioningArtifactInput
    DescribeProvisioningArtifactOutput.add_member(:provisioning_artifact_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactDetail, location_name: 'ProvisioningArtifactDetail', traits: {"smithy.api#documentation" => "<p>Information about the provisioning artifact.</p>"}))
    DescribeProvisioningArtifactOutput.add_member(:info, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactInfo, location_name: 'Info', traits: {"smithy.api#documentation" => "<p>The URL of the CloudFormation template in Amazon S3 or GitHub in JSON format.</p>"}))
    DescribeProvisioningArtifactOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the current request.</p>"}))
    DescribeProvisioningArtifactOutput.add_member(:provisioning_artifact_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactParameters, location_name: 'ProvisioningArtifactParameters', traits: {"smithy.api#documentation" => "<p>Information about the parameters used to provision the product.  </p>"}))
    DescribeProvisioningArtifactOutput.type = Types::DescribeProvisioningArtifactOutput
    DescribeProvisioningParametersInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DescribeProvisioningParametersInput.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier. You must provide the product name or ID, but not both.</p>"}))
    DescribeProvisioningParametersInput.add_member(:product_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewName, location_name: 'ProductName', traits: {"smithy.api#documentation" => "<p>The name of the product. You must provide the name or ID, but not both.</p>"}))
    DescribeProvisioningParametersInput.add_member(:provisioning_artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisioningArtifactId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact. You must provide the name or ID, but not both.</p>"}))
    DescribeProvisioningParametersInput.add_member(:provisioning_artifact_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactName, location_name: 'ProvisioningArtifactName', traits: {"smithy.api#documentation" => "<p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>"}))
    DescribeProvisioningParametersInput.add_member(:path_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PathId', traits: {"smithy.api#documentation" => "<p>The path identifier of the product. This value is optional if the product \n         has a default path, and required if the product has more than one path.\n         To list the paths for a product, use <a>ListLaunchPaths</a>. You must provide the name or ID, but not both.</p>"}))
    DescribeProvisioningParametersInput.add_member(:path_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioDisplayName, location_name: 'PathName', traits: {"smithy.api#documentation" => "<p>The name of the path. You must provide the name or ID, but not both.</p>"}))
    DescribeProvisioningParametersInput.type = Types::DescribeProvisioningParametersInput
    DescribeProvisioningParametersOutput.add_member(:provisioning_artifact_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactParameters, location_name: 'ProvisioningArtifactParameters', traits: {"smithy.api#documentation" => "<p>Information about the parameters used to provision the product.</p>"}))
    DescribeProvisioningParametersOutput.add_member(:constraint_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintSummaries, location_name: 'ConstraintSummaries', traits: {"smithy.api#documentation" => "<p>Information about the constraints used to provision the product.</p>"}))
    DescribeProvisioningParametersOutput.add_member(:usage_instructions, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageInstructions, location_name: 'UsageInstructions', traits: {"smithy.api#documentation" => "<p>Any additional metadata specifically related to the provisioning of the product. For\n         example, see the <code>Version</code> field of the CloudFormation template.</p>"}))
    DescribeProvisioningParametersOutput.add_member(:tag_options, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionSummaries, location_name: 'TagOptions', traits: {"smithy.api#documentation" => "<p>Information about the TagOptions associated with the resource.</p>"}))
    DescribeProvisioningParametersOutput.add_member(:provisioning_artifact_preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactPreferences, location_name: 'ProvisioningArtifactPreferences', traits: {"smithy.api#documentation" => "<p>An object that contains information about preferences, such as Regions and accounts, for the provisioning artifact.</p>"}))
    DescribeProvisioningParametersOutput.add_member(:provisioning_artifact_outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactOutputs, location_name: 'ProvisioningArtifactOutputs', traits: {"smithy.api#deprecated" => {"message" => "This property is deprecated and returns the Id and Description of the Provisioning Artifact. Use ProvisioningArtifactOutputKeys instead to get the Keys and Descriptions of the outputs."}, "smithy.api#documentation" => "<p>The output of the provisioning artifact.</p>"}))
    DescribeProvisioningParametersOutput.add_member(:provisioning_artifact_output_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactOutputs, location_name: 'ProvisioningArtifactOutputKeys', traits: {"smithy.api#documentation" => "<p>A list of the keys and descriptions of the outputs. These outputs can be referenced from a provisioned product launched from this provisioning artifact.</p>"}))
    DescribeProvisioningParametersOutput.type = Types::DescribeProvisioningParametersOutput
    DescribeRecordInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DescribeRecordInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The record identifier of the provisioned product. This identifier is returned by the\n         request operation.</p>", "smithy.api#required" => {}}))
    DescribeRecordInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    DescribeRecordInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    DescribeRecordInput.type = Types::DescribeRecordInput
    DescribeRecordOutput.add_member(:record_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordDetail, location_name: 'RecordDetail', traits: {"smithy.api#documentation" => "<p>Information about the product.</p>"}))
    DescribeRecordOutput.add_member(:record_outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordOutputs, location_name: 'RecordOutputs', traits: {"smithy.api#documentation" => "<p>Information about the product created as the result of a request. For example, the output for  \n         a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.</p>"}))
    DescribeRecordOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    DescribeRecordOutput.type = Types::DescribeRecordOutput
    DescribeServiceActionExecutionParametersInput.add_member(:provisioned_product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisionedProductId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioned product.</p>", "smithy.api#required" => {}}))
    DescribeServiceActionExecutionParametersInput.add_member(:service_action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ServiceActionId', traits: {"smithy.api#documentation" => "<p>The self-service action identifier.</p>", "smithy.api#required" => {}}))
    DescribeServiceActionExecutionParametersInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DescribeServiceActionExecutionParametersInput.type = Types::DescribeServiceActionExecutionParametersInput
    DescribeServiceActionExecutionParametersOutput.add_member(:service_action_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionParameters, location_name: 'ServiceActionParameters', traits: {"smithy.api#documentation" => "<p>The parameters of the self-service action.</p>"}))
    DescribeServiceActionExecutionParametersOutput.type = Types::DescribeServiceActionExecutionParametersOutput
    DescribeServiceActionInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The self-service action identifier.</p>", "smithy.api#required" => {}}))
    DescribeServiceActionInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DescribeServiceActionInput.type = Types::DescribeServiceActionInput
    DescribeServiceActionOutput.add_member(:service_action_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionDetail, location_name: 'ServiceActionDetail', traits: {"smithy.api#documentation" => "<p>Detailed information about the self-service action.</p>"}))
    DescribeServiceActionOutput.type = Types::DescribeServiceActionOutput
    DescribeTagOptionInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The TagOption identifier.</p>", "smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    DescribeTagOptionInput.type = Types::DescribeTagOptionInput
    DescribeTagOptionOutput.add_member(:tag_option_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionDetail, location_name: 'TagOptionDetail', traits: {"smithy.api#documentation" => "<p>Information about the TagOption.</p>"}))
    DescribeTagOptionOutput.type = Types::DescribeTagOptionOutput
    DisableAWSOrganizationsAccessInput.type = Types::DisableAWSOrganizationsAccessInput
    DisableAWSOrganizationsAccessOutput.type = Types::DisableAWSOrganizationsAccessOutput
    DisassociateBudgetFromResourceInput.add_member(:budget_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetName, location_name: 'BudgetName', traits: {"smithy.api#documentation" => "<p>The name of the budget you want to disassociate.</p>", "smithy.api#required" => {}}))
    DisassociateBudgetFromResourceInput.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The resource identifier you want to disassociate from. Either a portfolio-id or a product-id.</p>", "smithy.api#required" => {}}))
    DisassociateBudgetFromResourceInput.type = Types::DisassociateBudgetFromResourceInput
    DisassociateBudgetFromResourceOutput.type = Types::DisassociateBudgetFromResourceOutput
    DisassociatePrincipalFromPortfolioInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DisassociatePrincipalFromPortfolioInput.add_member(:portfolio_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioId', traits: {"smithy.api#documentation" => "<p>The portfolio identifier.</p>", "smithy.api#required" => {}}))
    DisassociatePrincipalFromPortfolioInput.add_member(:principal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalARN, location_name: 'PrincipalARN', traits: {"smithy.api#documentation" => "<p>The ARN of the principal (user, role, or group). This field allows an ARN with no <code>accountID</code> with or without wildcard characters if \n         <code>PrincipalType</code> is <code>IAM_PATTERN</code>.</p>", "smithy.api#required" => {}}))
    DisassociatePrincipalFromPortfolioInput.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'PrincipalType', traits: {"smithy.api#documentation" => "<p>The supported value is <code>IAM</code> if you use a fully defined ARN, or <code>IAM_PATTERN</code>\n         if you specify an <code>IAM</code> ARN with no AccountId, with or without wildcard characters. </p>"}))
    DisassociatePrincipalFromPortfolioInput.type = Types::DisassociatePrincipalFromPortfolioInput
    DisassociatePrincipalFromPortfolioOutput.type = Types::DisassociatePrincipalFromPortfolioOutput
    DisassociateProductFromPortfolioInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DisassociateProductFromPortfolioInput.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>", "smithy.api#required" => {}}))
    DisassociateProductFromPortfolioInput.add_member(:portfolio_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioId', traits: {"smithy.api#documentation" => "<p>The portfolio identifier.</p>", "smithy.api#required" => {}}))
    DisassociateProductFromPortfolioInput.type = Types::DisassociateProductFromPortfolioInput
    DisassociateProductFromPortfolioOutput.type = Types::DisassociateProductFromPortfolioOutput
    DisassociateServiceActionFromProvisioningArtifactInput.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>", "smithy.api#required" => {}}))
    DisassociateServiceActionFromProvisioningArtifactInput.add_member(:provisioning_artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisioningArtifactId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>", "smithy.api#required" => {}}))
    DisassociateServiceActionFromProvisioningArtifactInput.add_member(:service_action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ServiceActionId', traits: {"smithy.api#documentation" => "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>", "smithy.api#required" => {}}))
    DisassociateServiceActionFromProvisioningArtifactInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    DisassociateServiceActionFromProvisioningArtifactInput.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you provide to ensure idempotency. If multiple requests from the same Amazon Web Services account use the same idempotency token, the same response is returned for each repeated request. </p>", "smithy.api#idempotencyToken" => {}}))
    DisassociateServiceActionFromProvisioningArtifactInput.type = Types::DisassociateServiceActionFromProvisioningArtifactInput
    DisassociateServiceActionFromProvisioningArtifactOutput.type = Types::DisassociateServiceActionFromProvisioningArtifactOutput
    DisassociateTagOptionFromResourceInput.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The resource identifier.</p>", "smithy.api#httpQuery" => "resourceId", "smithy.api#required" => {}}))
    DisassociateTagOptionFromResourceInput.add_member(:tag_option_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionId, location_name: 'TagOptionId', traits: {"smithy.api#documentation" => "<p>The TagOption identifier.</p>", "smithy.api#httpQuery" => "tagOptionId", "smithy.api#required" => {}}))
    DisassociateTagOptionFromResourceInput.type = Types::DisassociateTagOptionFromResourceInput
    DisassociateTagOptionFromResourceOutput.type = Types::DisassociateTagOptionFromResourceOutput
    DuplicateResourceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DuplicateResourceException.type = Types::DuplicateResourceException
    EnableAWSOrganizationsAccessInput.type = Types::EnableAWSOrganizationsAccessInput
    EnableAWSOrganizationsAccessOutput.type = Types::EnableAWSOrganizationsAccessOutput
    EngineWorkflowResourceIdentifier.add_member(:unique_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueTagResourceIdentifier, location_name: 'UniqueTag', traits: {"smithy.api#documentation" => "<p>\n         The unique key-value pair \n         for a tag \n         that identifies provisioned product resources.\n      </p>"}))
    EngineWorkflowResourceIdentifier.type = Types::EngineWorkflowResourceIdentifier
    EngineWorkflowStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    EngineWorkflowStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    EvaluationType.add_member(:static, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STATIC', traits: {"smithy.api#enumValue" => "STATIC"}))
    EvaluationType.add_member(:dynamic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DYNAMIC', traits: {"smithy.api#enumValue" => "DYNAMIC"}))
    ExecuteProvisionedProductPlanInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ExecuteProvisionedProductPlanInput.add_member(:plan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PlanId', traits: {"smithy.api#documentation" => "<p>The plan identifier.</p>", "smithy.api#required" => {}}))
    ExecuteProvisionedProductPlanInput.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,\n  the same response is returned for each repeated request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ExecuteProvisionedProductPlanInput.type = Types::ExecuteProvisionedProductPlanInput
    ExecuteProvisionedProductPlanOutput.add_member(:record_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordDetail, location_name: 'RecordDetail', traits: {"smithy.api#documentation" => "<p>Information about the result of provisioning the product.</p>"}))
    ExecuteProvisionedProductPlanOutput.type = Types::ExecuteProvisionedProductPlanOutput
    ExecuteProvisionedProductServiceActionInput.add_member(:provisioned_product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisionedProductId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioned product.</p>", "smithy.api#required" => {}}))
    ExecuteProvisionedProductServiceActionInput.add_member(:service_action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ServiceActionId', traits: {"smithy.api#documentation" => "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>", "smithy.api#required" => {}}))
    ExecuteProvisionedProductServiceActionInput.add_member(:execute_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ExecuteToken', traits: {"smithy.api#documentation" => "<p>An idempotency token that uniquely identifies the execute request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ExecuteProvisionedProductServiceActionInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ExecuteProvisionedProductServiceActionInput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionParameterMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>A map of all self-service action parameters and their values. If a provided parameter is of a special type, such as <code>TARGET</code>, the provided value will \n            override the default value generated by Service Catalog. If the parameters field is not provided, no additional parameters are passed and default values will be used for \n            any special parameters such as <code>TARGET</code>.</p>"}))
    ExecuteProvisionedProductServiceActionInput.type = Types::ExecuteProvisionedProductServiceActionInput
    ExecuteProvisionedProductServiceActionOutput.add_member(:record_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordDetail, location_name: 'RecordDetail', traits: {"smithy.api#documentation" => "<p>An object containing detailed information about the result of provisioning the product.</p>"}))
    ExecuteProvisionedProductServiceActionOutput.type = Types::ExecuteProvisionedProductServiceActionOutput
    ExecutionParameter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionParameterKey, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the execution parameter.</p>"}))
    ExecutionParameter.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionParameterType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The execution parameter type.</p>"}))
    ExecutionParameter.add_member(:default_values, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionParameterValueList, location_name: 'DefaultValues', traits: {"smithy.api#documentation" => "<p>The default values for the execution parameter.</p>"}))
    ExecutionParameter.type = Types::ExecutionParameter
    ExecutionParameterMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionParameterKey)
    ExecutionParameterMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionParameterValueList)
    ExecutionParameterValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionParameterValue)
    ExecutionParameters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionParameter)
    FailedServiceActionAssociation.add_member(:service_action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ServiceActionId', traits: {"smithy.api#documentation" => "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>"}))
    FailedServiceActionAssociation.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>"}))
    FailedServiceActionAssociation.add_member(:provisioning_artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisioningArtifactId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>"}))
    FailedServiceActionAssociation.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionAssociationErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code. Valid values are listed below.</p>"}))
    FailedServiceActionAssociation.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionAssociationErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>A text description of the error.</p>"}))
    FailedServiceActionAssociation.type = Types::FailedServiceActionAssociation
    FailedServiceActionAssociations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FailedServiceActionAssociation)
    GetAWSOrganizationsAccessStatusInput.type = Types::GetAWSOrganizationsAccessStatusInput
    GetAWSOrganizationsAccessStatusOutput.add_member(:access_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessStatus, location_name: 'AccessStatus', traits: {"smithy.api#documentation" => "<p>The status of the portfolio share feature.</p>"}))
    GetAWSOrganizationsAccessStatusOutput.type = Types::GetAWSOrganizationsAccessStatusOutput
    GetProvisionedProductOutputsInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    GetProvisionedProductOutputsInput.add_member(:provisioned_product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisionedProductId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioned product that you want the outputs from.</p>"}))
    GetProvisionedProductOutputsInput.add_member(:provisioned_product_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductName, location_name: 'ProvisionedProductName', traits: {"smithy.api#documentation" => "<p>The name of the provisioned product that you want the outputs from.</p>"}))
    GetProvisionedProductOutputsInput.add_member(:output_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputKeys, location_name: 'OutputKeys', traits: {"smithy.api#documentation" => "<p>The list of keys that the API should return with their values. If none are provided, the API will return all outputs of the provisioned product.</p>"}))
    GetProvisionedProductOutputsInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    GetProvisionedProductOutputsInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    GetProvisionedProductOutputsInput.type = Types::GetProvisionedProductOutputsInput
    GetProvisionedProductOutputsOutput.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordOutputs, location_name: 'Outputs', traits: {"smithy.api#documentation" => "<p>Information about the product created as the result of a request. For example, the output for a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.\n      </p>"}))
    GetProvisionedProductOutputsOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    GetProvisionedProductOutputsOutput.type = Types::GetProvisionedProductOutputsOutput
    ImportAsProvisionedProductInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ImportAsProvisionedProductInput.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>", "smithy.api#required" => {}}))
    ImportAsProvisionedProductInput.add_member(:provisioning_artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisioningArtifactId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact.</p>", "smithy.api#required" => {}}))
    ImportAsProvisionedProductInput.add_member(:provisioned_product_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductName, location_name: 'ProvisionedProductName', traits: {"smithy.api#documentation" => "<p>The user-friendly name of the provisioned product. The value must be unique for the Amazon Web Services account. \n         The name cannot be updated after the product is provisioned. </p>", "smithy.api#required" => {}}))
    ImportAsProvisionedProductInput.add_member(:physical_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PhysicalId, location_name: 'PhysicalId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the resource to be imported. It only currently supports\n         CloudFormation stack IDs.</p>", "smithy.api#required" => {}}))
    ImportAsProvisionedProductInput.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,\n  the same response is returned for each repeated request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ImportAsProvisionedProductInput.type = Types::ImportAsProvisionedProductInput
    ImportAsProvisionedProductOutput.add_member(:record_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordDetail, location_name: 'RecordDetail'))
    ImportAsProvisionedProductOutput.type = Types::ImportAsProvisionedProductOutput
    InvalidParametersException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidParametersException.type = Types::InvalidParametersException
    InvalidStateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidStateException.type = Types::InvalidStateException
    LastSync.add_member(:last_sync_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastSyncTime, location_name: 'LastSyncTime', traits: {"smithy.api#documentation" => "<p>The time of the last attempted sync from the repository to the Service Catalog product. </p>"}))
    LastSync.add_member(:last_sync_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LastSyncStatus, location_name: 'LastSyncStatus', traits: {"smithy.api#documentation" => "<p>The current status of the sync. Responses include <code>SUCCEEDED</code> or <code>FAILED</code>. </p>"}))
    LastSync.add_member(:last_sync_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: LastSyncStatusMessage, location_name: 'LastSyncStatusMessage', traits: {"smithy.api#documentation" => "<p>The sync's status message. </p>"}))
    LastSync.add_member(:last_successful_sync_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastSuccessfulSyncTime, location_name: 'LastSuccessfulSyncTime', traits: {"smithy.api#documentation" => "<p>The time of the latest successful sync from the source repo artifact to the Service Catalog product.</p>"}))
    LastSync.add_member(:last_successful_sync_provisioning_artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'LastSuccessfulSyncProvisioningArtifactId', traits: {"smithy.api#documentation" => "<p>The ProvisioningArtifactID of the ProvisioningArtifact created from the latest successful sync. </p>"}))
    LastSync.type = Types::LastSync
    LastSyncStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    LastSyncStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    LaunchPath.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the launch path.</p>"}))
    LaunchPath.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the launch path.</p>"}))
    LaunchPath.type = Types::LaunchPath
    LaunchPathSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchPathSummary)
    LaunchPathSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the product path.</p>"}))
    LaunchPathSummary.add_member(:constraint_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintSummaries, location_name: 'ConstraintSummaries', traits: {"smithy.api#documentation" => "<p>The constraints on the portfolio-product relationship.</p>"}))
    LaunchPathSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with this product path.</p>"}))
    LaunchPathSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the portfolio that contains the product. </p>"}))
    LaunchPathSummary.type = Types::LaunchPathSummary
    LaunchPaths.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchPath)
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    LimitExceededException.type = Types::LimitExceededException
    ListAcceptedPortfolioSharesInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ListAcceptedPortfolioSharesInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    ListAcceptedPortfolioSharesInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSizeMax100, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    ListAcceptedPortfolioSharesInput.add_member(:portfolio_share_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioShareType, location_name: 'PortfolioShareType', traits: {"smithy.api#documentation" => "<p>The type of shared portfolios to list. The default is to list imported portfolios.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>AWS_ORGANIZATIONS</code> - List portfolios accepted and shared via organizational sharing by the management account or delegated administrator of your organization.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SERVICECATALOG</code> - Deprecated type.</p>\n            </li>\n            <li>\n               <p>\n                  <code>IMPORTED</code> - List imported portfolios that have been accepted and\n               shared through account-to-account sharing.</p>\n            </li>\n         </ul>"}))
    ListAcceptedPortfolioSharesInput.type = Types::ListAcceptedPortfolioSharesInput
    ListAcceptedPortfolioSharesOutput.add_member(:portfolio_details, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioDetails, location_name: 'PortfolioDetails', traits: {"smithy.api#documentation" => "<p>Information about the portfolios.</p>"}))
    ListAcceptedPortfolioSharesOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    ListAcceptedPortfolioSharesOutput.type = Types::ListAcceptedPortfolioSharesOutput
    ListBudgetsForResourceInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ListBudgetsForResourceInput.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The resource identifier.</p>", "smithy.api#required" => {}}))
    ListBudgetsForResourceInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    ListBudgetsForResourceInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    ListBudgetsForResourceInput.type = Types::ListBudgetsForResourceInput
    ListBudgetsForResourceOutput.add_member(:budgets, Smithy::Schema::Shapes::ShapeRef.new(shape: Budgets, location_name: 'Budgets', traits: {"smithy.api#documentation" => "<p>Information about the associated budgets.</p>"}))
    ListBudgetsForResourceOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    ListBudgetsForResourceOutput.type = Types::ListBudgetsForResourceOutput
    ListConstraintsForPortfolioInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ListConstraintsForPortfolioInput.add_member(:portfolio_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioId', traits: {"smithy.api#documentation" => "<p>The portfolio identifier.</p>", "smithy.api#required" => {}}))
    ListConstraintsForPortfolioInput.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>"}))
    ListConstraintsForPortfolioInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    ListConstraintsForPortfolioInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    ListConstraintsForPortfolioInput.type = Types::ListConstraintsForPortfolioInput
    ListConstraintsForPortfolioOutput.add_member(:constraint_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintDetails, location_name: 'ConstraintDetails', traits: {"smithy.api#documentation" => "<p>Information about the constraints.</p>"}))
    ListConstraintsForPortfolioOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    ListConstraintsForPortfolioOutput.type = Types::ListConstraintsForPortfolioOutput
    ListLaunchPathsInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ListLaunchPathsInput.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>", "smithy.api#required" => {}}))
    ListLaunchPathsInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    ListLaunchPathsInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    ListLaunchPathsInput.type = Types::ListLaunchPathsInput
    ListLaunchPathsOutput.add_member(:launch_path_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchPathSummaries, location_name: 'LaunchPathSummaries', traits: {"smithy.api#documentation" => "<p>Information about the launch path.</p>"}))
    ListLaunchPathsOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    ListLaunchPathsOutput.type = Types::ListLaunchPathsOutput
    ListOrganizationPortfolioAccessInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ListOrganizationPortfolioAccessInput.add_member(:portfolio_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioId', traits: {"smithy.api#documentation" => "<p>The portfolio identifier. For example, <code>port-2abcdext3y5fk</code>.</p>", "smithy.api#required" => {}}))
    ListOrganizationPortfolioAccessInput.add_member(:organization_node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNodeType, location_name: 'OrganizationNodeType', traits: {"smithy.api#documentation" => "<p>The organization node type that will be returned in the output.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ORGANIZATION</code> - Organization that has access to the portfolio. </p>\n            </li>\n            <li>\n               <p>\n                  <code>ORGANIZATIONAL_UNIT</code> - Organizational unit that has access to the portfolio within your organization.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACCOUNT</code> - Account that has access to the portfolio within your organization.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ListOrganizationPortfolioAccessInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    ListOrganizationPortfolioAccessInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    ListOrganizationPortfolioAccessInput.type = Types::ListOrganizationPortfolioAccessInput
    ListOrganizationPortfolioAccessOutput.add_member(:organization_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNodes, location_name: 'OrganizationNodes', traits: {"smithy.api#documentation" => "<p>Displays information about the organization nodes.</p>"}))
    ListOrganizationPortfolioAccessOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    ListOrganizationPortfolioAccessOutput.type = Types::ListOrganizationPortfolioAccessOutput
    ListPortfolioAccessInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ListPortfolioAccessInput.add_member(:portfolio_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioId', traits: {"smithy.api#documentation" => "<p>The portfolio identifier.</p>", "smithy.api#required" => {}}))
    ListPortfolioAccessInput.add_member(:organization_parent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'OrganizationParentId', traits: {"smithy.api#documentation" => "<p>The ID of an organization node the portfolio is shared with. All children of this node with an inherited portfolio share will be returned.</p>"}))
    ListPortfolioAccessInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    ListPortfolioAccessInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSizeMax100, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    ListPortfolioAccessInput.type = Types::ListPortfolioAccessInput
    ListPortfolioAccessOutput.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIds, location_name: 'AccountIds', traits: {"smithy.api#documentation" => "<p>Information about the Amazon Web Services accounts with access to the portfolio.</p>"}))
    ListPortfolioAccessOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    ListPortfolioAccessOutput.type = Types::ListPortfolioAccessOutput
    ListPortfoliosForProductInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ListPortfoliosForProductInput.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>", "smithy.api#required" => {}}))
    ListPortfoliosForProductInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    ListPortfoliosForProductInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSizeMax100, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    ListPortfoliosForProductInput.type = Types::ListPortfoliosForProductInput
    ListPortfoliosForProductOutput.add_member(:portfolio_details, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioDetails, location_name: 'PortfolioDetails', traits: {"smithy.api#documentation" => "<p>Information about the portfolios.</p>"}))
    ListPortfoliosForProductOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    ListPortfoliosForProductOutput.type = Types::ListPortfoliosForProductOutput
    ListPortfoliosInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ListPortfoliosInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    ListPortfoliosInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSizeMax100, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    ListPortfoliosInput.type = Types::ListPortfoliosInput
    ListPortfoliosOutput.add_member(:portfolio_details, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioDetails, location_name: 'PortfolioDetails', traits: {"smithy.api#documentation" => "<p>Information about the portfolios.</p>"}))
    ListPortfoliosOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    ListPortfoliosOutput.type = Types::ListPortfoliosOutput
    ListPrincipalsForPortfolioInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ListPrincipalsForPortfolioInput.add_member(:portfolio_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioId', traits: {"smithy.api#documentation" => "<p>The portfolio identifier.</p>", "smithy.api#required" => {}}))
    ListPrincipalsForPortfolioInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    ListPrincipalsForPortfolioInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    ListPrincipalsForPortfolioInput.type = Types::ListPrincipalsForPortfolioInput
    ListPrincipalsForPortfolioOutput.add_member(:principals, Smithy::Schema::Shapes::ShapeRef.new(shape: Principals, location_name: 'Principals', traits: {"smithy.api#documentation" => "<p>The <code>PrincipalARN</code>s and corresponding <code>PrincipalType</code>s associated with the portfolio.</p>"}))
    ListPrincipalsForPortfolioOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    ListPrincipalsForPortfolioOutput.type = Types::ListPrincipalsForPortfolioOutput
    ListProvisionedProductPlansInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ListProvisionedProductPlansInput.add_member(:provision_product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisionProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>"}))
    ListProvisionedProductPlansInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    ListProvisionedProductPlansInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    ListProvisionedProductPlansInput.add_member(:access_level_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLevelFilter, location_name: 'AccessLevelFilter', traits: {"smithy.api#documentation" => "<p>The access level to use to obtain results. The default is <code>User</code>.</p>"}))
    ListProvisionedProductPlansInput.type = Types::ListProvisionedProductPlansInput
    ListProvisionedProductPlansOutput.add_member(:provisioned_product_plans, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductPlans, location_name: 'ProvisionedProductPlans', traits: {"smithy.api#documentation" => "<p>Information about the plans.</p>"}))
    ListProvisionedProductPlansOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    ListProvisionedProductPlansOutput.type = Types::ListProvisionedProductPlansOutput
    ListProvisioningArtifactsForServiceActionInput.add_member(:service_action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ServiceActionId', traits: {"smithy.api#documentation" => "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>", "smithy.api#required" => {}}))
    ListProvisioningArtifactsForServiceActionInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    ListProvisioningArtifactsForServiceActionInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    ListProvisioningArtifactsForServiceActionInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ListProvisioningArtifactsForServiceActionInput.type = Types::ListProvisioningArtifactsForServiceActionInput
    ListProvisioningArtifactsForServiceActionOutput.add_member(:provisioning_artifact_views, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactViews, location_name: 'ProvisioningArtifactViews', traits: {"smithy.api#documentation" => "<p>An array of objects with information about product views and provisioning artifacts.</p>"}))
    ListProvisioningArtifactsForServiceActionOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    ListProvisioningArtifactsForServiceActionOutput.type = Types::ListProvisioningArtifactsForServiceActionOutput
    ListProvisioningArtifactsInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ListProvisioningArtifactsInput.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>", "smithy.api#required" => {}}))
    ListProvisioningArtifactsInput.type = Types::ListProvisioningArtifactsInput
    ListProvisioningArtifactsOutput.add_member(:provisioning_artifact_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactDetails, location_name: 'ProvisioningArtifactDetails', traits: {"smithy.api#documentation" => "<p>Information about the provisioning artifacts.</p>"}))
    ListProvisioningArtifactsOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    ListProvisioningArtifactsOutput.type = Types::ListProvisioningArtifactsOutput
    ListRecordHistoryInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ListRecordHistoryInput.add_member(:access_level_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLevelFilter, location_name: 'AccessLevelFilter', traits: {"smithy.api#documentation" => "<p>The access level to use to obtain results. The default is <code>User</code>.</p>"}))
    ListRecordHistoryInput.add_member(:search_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecordHistorySearchFilter, location_name: 'SearchFilter', traits: {"smithy.api#documentation" => "<p>The search filter to scope the results.</p>"}))
    ListRecordHistoryInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    ListRecordHistoryInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    ListRecordHistoryInput.type = Types::ListRecordHistoryInput
    ListRecordHistoryOutput.add_member(:record_details, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordDetails, location_name: 'RecordDetails', traits: {"smithy.api#documentation" => "<p>The records, in reverse chronological order.</p>"}))
    ListRecordHistoryOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    ListRecordHistoryOutput.type = Types::ListRecordHistoryOutput
    ListRecordHistorySearchFilter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilterKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The filter key.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>product</code> - Filter results based on the specified product identifier.</p>\n            </li>\n            <li>\n               <p>\n                  <code>provisionedproduct</code> - Filter results based on the provisioned product identifier.</p>\n            </li>\n         </ul>"}))
    ListRecordHistorySearchFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilterValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The filter value.</p>"}))
    ListRecordHistorySearchFilter.type = Types::ListRecordHistorySearchFilter
    ListResourcesForTagOptionInput.add_member(:tag_option_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionId, location_name: 'TagOptionId', traits: {"smithy.api#documentation" => "<p>The TagOption identifier.</p>", "smithy.api#httpQuery" => "tagOptionId", "smithy.api#required" => {}}))
    ListResourcesForTagOptionInput.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Portfolio</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Product</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "resourceType"}))
    ListResourcesForTagOptionInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>", "smithy.api#httpQuery" => "pageSize"}))
    ListResourcesForTagOptionInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>", "smithy.api#httpQuery" => "pageToken"}))
    ListResourcesForTagOptionInput.type = Types::ListResourcesForTagOptionInput
    ListResourcesForTagOptionOutput.add_member(:resource_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDetails, location_name: 'ResourceDetails', traits: {"smithy.api#documentation" => "<p>Information about the resources.</p>"}))
    ListResourcesForTagOptionOutput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    ListResourcesForTagOptionOutput.type = Types::ListResourcesForTagOptionOutput
    ListServiceActionsForProvisioningArtifactInput.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>", "smithy.api#required" => {}}))
    ListServiceActionsForProvisioningArtifactInput.add_member(:provisioning_artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisioningArtifactId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>", "smithy.api#required" => {}}))
    ListServiceActionsForProvisioningArtifactInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    ListServiceActionsForProvisioningArtifactInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    ListServiceActionsForProvisioningArtifactInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ListServiceActionsForProvisioningArtifactInput.type = Types::ListServiceActionsForProvisioningArtifactInput
    ListServiceActionsForProvisioningArtifactOutput.add_member(:service_action_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionSummaries, location_name: 'ServiceActionSummaries', traits: {"smithy.api#documentation" => "<p>An object containing information about the self-service actions associated with the provisioning artifact.</p>"}))
    ListServiceActionsForProvisioningArtifactOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    ListServiceActionsForProvisioningArtifactOutput.type = Types::ListServiceActionsForProvisioningArtifactOutput
    ListServiceActionsInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ListServiceActionsInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    ListServiceActionsInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    ListServiceActionsInput.type = Types::ListServiceActionsInput
    ListServiceActionsOutput.add_member(:service_action_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionSummaries, location_name: 'ServiceActionSummaries', traits: {"smithy.api#documentation" => "<p>An object containing information about the service actions associated with the provisioning artifact.</p>"}))
    ListServiceActionsOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    ListServiceActionsOutput.type = Types::ListServiceActionsOutput
    ListStackInstancesForProvisionedProductInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ListStackInstancesForProvisionedProductInput.add_member(:provisioned_product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisionedProductId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioned product.</p>", "smithy.api#required" => {}}))
    ListStackInstancesForProvisionedProductInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    ListStackInstancesForProvisionedProductInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    ListStackInstancesForProvisionedProductInput.type = Types::ListStackInstancesForProvisionedProductInput
    ListStackInstancesForProvisionedProductOutput.add_member(:stack_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: StackInstances, location_name: 'StackInstances', traits: {"smithy.api#documentation" => "<p>List of stack instances.</p>"}))
    ListStackInstancesForProvisionedProductOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    ListStackInstancesForProvisionedProductOutput.type = Types::ListStackInstancesForProvisionedProductOutput
    ListTagOptionsFilters.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The TagOption key.</p>"}))
    ListTagOptionsFilters.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The TagOption value.</p>"}))
    ListTagOptionsFilters.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionActive, location_name: 'Active', traits: {"smithy.api#documentation" => "<p>The active state.</p>"}))
    ListTagOptionsFilters.type = Types::ListTagOptionsFilters
    ListTagOptionsInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagOptionsFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>The search filters. If no search filters are specified, the output includes all TagOptions.</p>"}))
    ListTagOptionsInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    ListTagOptionsInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    ListTagOptionsInput.type = Types::ListTagOptionsInput
    ListTagOptionsOutput.add_member(:tag_option_details, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionDetails, location_name: 'TagOptionDetails', traits: {"smithy.api#documentation" => "<p>Information about the TagOptions.</p>"}))
    ListTagOptionsOutput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    ListTagOptionsOutput.type = Types::ListTagOptionsOutput
    Namespaces.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    NotificationArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationArn)
    NotifyProvisionProductEngineWorkflowResultInput.add_member(:workflow_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineWorkflowToken, location_name: 'WorkflowToken', traits: {"smithy.api#documentation" => "<p>\n         The encrypted contents \n         of the provisioning engine execution payload \n         that Service Catalog sends \n         after the Terraform product provisioning workflow starts.\n      </p>", "smithy.api#required" => {}}))
    NotifyProvisionProductEngineWorkflowResultInput.add_member(:record_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RecordId', traits: {"smithy.api#documentation" => "<p>\n         The identifier \n         of the record.\n      </p>", "smithy.api#required" => {}}))
    NotifyProvisionProductEngineWorkflowResultInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineWorkflowStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>\n         The status \n         of the provisioning engine execution.\n      </p>", "smithy.api#required" => {}}))
    NotifyProvisionProductEngineWorkflowResultInput.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineWorkflowFailureReason, location_name: 'FailureReason', traits: {"smithy.api#documentation" => "<p>\n         The reason \n         why the provisioning engine execution failed.\n      </p>"}))
    NotifyProvisionProductEngineWorkflowResultInput.add_member(:resource_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineWorkflowResourceIdentifier, location_name: 'ResourceIdentifier', traits: {"smithy.api#documentation" => "<p>\n         The ID \n         for the provisioned product resources \n         that are part \n         of a resource group.\n      </p>"}))
    NotifyProvisionProductEngineWorkflowResultInput.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordOutputs, location_name: 'Outputs', traits: {"smithy.api#documentation" => "<p>\n         The output \n         of the provisioning engine execution.\n      </p>"}))
    NotifyProvisionProductEngineWorkflowResultInput.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>\n         The idempotency token \n         that identifies the provisioning engine execution.\n      </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    NotifyProvisionProductEngineWorkflowResultInput.type = Types::NotifyProvisionProductEngineWorkflowResultInput
    NotifyProvisionProductEngineWorkflowResultOutput.type = Types::NotifyProvisionProductEngineWorkflowResultOutput
    NotifyTerminateProvisionedProductEngineWorkflowResultInput.add_member(:workflow_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineWorkflowToken, location_name: 'WorkflowToken', traits: {"smithy.api#documentation" => "<p>\n         The encrypted contents \n         of the terminate engine execution payload \n         that Service Catalog sends \n         after the Terraform product terminate workflow starts.\n      </p>", "smithy.api#required" => {}}))
    NotifyTerminateProvisionedProductEngineWorkflowResultInput.add_member(:record_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RecordId', traits: {"smithy.api#documentation" => "<p>\n         The identifier \n         of the record.\n      </p>", "smithy.api#required" => {}}))
    NotifyTerminateProvisionedProductEngineWorkflowResultInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineWorkflowStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>\n         The status \n         of the terminate engine execution.\n      </p>", "smithy.api#required" => {}}))
    NotifyTerminateProvisionedProductEngineWorkflowResultInput.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineWorkflowFailureReason, location_name: 'FailureReason', traits: {"smithy.api#documentation" => "<p>\n         The reason \n         why the terminate engine execution failed.\n      </p>"}))
    NotifyTerminateProvisionedProductEngineWorkflowResultInput.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>\n         The idempotency token \n         that identifies the terminate engine execution.\n      </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    NotifyTerminateProvisionedProductEngineWorkflowResultInput.type = Types::NotifyTerminateProvisionedProductEngineWorkflowResultInput
    NotifyTerminateProvisionedProductEngineWorkflowResultOutput.type = Types::NotifyTerminateProvisionedProductEngineWorkflowResultOutput
    NotifyUpdateProvisionedProductEngineWorkflowResultInput.add_member(:workflow_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineWorkflowToken, location_name: 'WorkflowToken', traits: {"smithy.api#documentation" => "<p>\n         The encrypted contents \n         of the update engine execution payload \n         that Service Catalog sends \n         after the Terraform product update workflow starts.\n      </p>", "smithy.api#required" => {}}))
    NotifyUpdateProvisionedProductEngineWorkflowResultInput.add_member(:record_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RecordId', traits: {"smithy.api#documentation" => "<p>\n         The identifier \n         of the record.\n      </p>", "smithy.api#required" => {}}))
    NotifyUpdateProvisionedProductEngineWorkflowResultInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineWorkflowStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>\n         The status \n         of the update engine execution.\n      </p>", "smithy.api#required" => {}}))
    NotifyUpdateProvisionedProductEngineWorkflowResultInput.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineWorkflowFailureReason, location_name: 'FailureReason', traits: {"smithy.api#documentation" => "<p>\n         The reason \n         why the update engine execution failed.\n      </p>"}))
    NotifyUpdateProvisionedProductEngineWorkflowResultInput.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordOutputs, location_name: 'Outputs', traits: {"smithy.api#documentation" => "<p>\n         The output \n         of the update engine execution.\n      </p>"}))
    NotifyUpdateProvisionedProductEngineWorkflowResultInput.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>\n         The idempotency token \n         that identifies the update engine execution.\n      </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    NotifyUpdateProvisionedProductEngineWorkflowResultInput.type = Types::NotifyUpdateProvisionedProductEngineWorkflowResultInput
    NotifyUpdateProvisionedProductEngineWorkflowResultOutput.type = Types::NotifyUpdateProvisionedProductEngineWorkflowResultOutput
    OperationNotSupportedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    OperationNotSupportedException.type = Types::OperationNotSupportedException
    OrganizationNode.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNodeType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The organization node type.</p>"}))
    OrganizationNode.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNodeValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The identifier of the organization node.</p>"}))
    OrganizationNode.type = Types::OrganizationNode
    OrganizationNodeType.add_member(:organization, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION', traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    OrganizationNodeType.add_member(:organizational_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATIONAL_UNIT', traits: {"smithy.api#enumValue" => "ORGANIZATIONAL_UNIT"}))
    OrganizationNodeType.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    OrganizationNodes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNode)
    OutputKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OutputKey)
    ParameterConstraints.add_member(:allowed_values, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedValues, location_name: 'AllowedValues', traits: {"smithy.api#documentation" => "<p>The values that the administrator has allowed for the parameter.</p>"}))
    ParameterConstraints.add_member(:allowed_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AllowedPattern', traits: {"smithy.api#documentation" => "<p>A regular expression that represents the patterns that allow for <code>String</code> types. The pattern must match the entire parameter value provided.</p>"}))
    ParameterConstraints.add_member(:constraint_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConstraintDescription', traits: {"smithy.api#documentation" => "<p>A string that explains a constraint when the constraint is violated. For example, without a constraint description, a parameter that has an allowed pattern of <code>[A-Za-z0-9]+</code> displays the following error message when the user specifies an invalid value:</p>\n         <p>\n            <code>Malformed input-Parameter MyParameter must match pattern [A-Za-z0-9]+</code>\n         </p>\n         <p>By adding a constraint description, such as must only contain letters (uppercase and lowercase) and numbers, you can display the following customized error message:</p>\n         <p>\n            <code>Malformed input-Parameter MyParameter must only contain uppercase and lowercase letters and numbers.</code>\n         </p>"}))
    ParameterConstraints.add_member(:max_length, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxLength', traits: {"smithy.api#documentation" => "<p>An integer value that determines the largest number of characters you want to allow for <code>String</code> types. </p>"}))
    ParameterConstraints.add_member(:min_length, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinLength', traits: {"smithy.api#documentation" => "<p>An integer value that determines the smallest number of characters you want to allow for <code>String</code> types.</p>"}))
    ParameterConstraints.add_member(:max_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxValue', traits: {"smithy.api#documentation" => "<p>A numeric value that determines the largest numeric value you want to allow for <code>Number</code> types.</p>"}))
    ParameterConstraints.add_member(:min_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinValue', traits: {"smithy.api#documentation" => "<p>A numeric value that determines the smallest numeric value you want to allow for <code>Number</code> types. </p>"}))
    ParameterConstraints.type = Types::ParameterConstraints
    PortfolioDetail.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The portfolio identifier.</p>"}))
    PortfolioDetail.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The ARN assigned to the portfolio.</p>"}))
    PortfolioDetail.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioDisplayName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The name to use for display purposes.</p>"}))
    PortfolioDetail.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the portfolio.</p>"}))
    PortfolioDetail.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The UTC time stamp of the creation time.</p>"}))
    PortfolioDetail.add_member(:provider_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'ProviderName', traits: {"smithy.api#documentation" => "<p>The name of the portfolio provider.</p>"}))
    PortfolioDetail.type = Types::PortfolioDetail
    PortfolioDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioDetail)
    PortfolioShareDetail.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PrincipalId', traits: {"smithy.api#documentation" => "<p>The identifier of the recipient entity that received the portfolio share. \n         The recipient entity can be one of the following:</p>\n         <p>1. An external account.</p>\n         <p>2. An organziation member account.</p>\n         <p>3. An organzational unit (OU).</p>\n         <p>4. The organization itself. (This shares with every account in the organization).</p>"}))
    PortfolioShareDetail.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePortfolioShareType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the portfolio share.</p>"}))
    PortfolioShareDetail.add_member(:accepted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Accepted', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether the shared portfolio is imported by the recipient account. If the recipient is in an organization node, the share is automatically imported, and the field is always set to true.</p>"}))
    PortfolioShareDetail.add_member(:share_tag_options, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ShareTagOptions', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether TagOptions sharing is enabled or disabled for the portfolio share.</p>"}))
    PortfolioShareDetail.add_member(:share_principals, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SharePrincipals', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates if <code>Principal</code> sharing is enabled or disabled for the portfolio share. </p>"}))
    PortfolioShareDetail.type = Types::PortfolioShareDetail
    PortfolioShareDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioShareDetail)
    PortfolioShareType.add_member(:imported, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORTED', traits: {"smithy.api#enumValue" => "IMPORTED"}))
    PortfolioShareType.add_member(:aws_servicecatalog, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SERVICECATALOG', traits: {"smithy.api#enumValue" => "AWS_SERVICECATALOG"}))
    PortfolioShareType.add_member(:aws_organizations, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_ORGANIZATIONS', traits: {"smithy.api#enumValue" => "AWS_ORGANIZATIONS"}))
    Principal.add_member(:principal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalARN, location_name: 'PrincipalARN', traits: {"smithy.api#documentation" => "<p>The ARN of the principal (user, role, or group). This field allows for an ARN with no <code>accountID</code>, with or without wildcard characters if the\n      <code>PrincipalType</code> is an <code>IAM_PATTERN</code>. </p>\n         <p>For more information, review <a href=\"https://docs.aws.amazon.com/cli/latest/reference/servicecatalog/associate-principal-with-portfolio.html#options\">associate-principal-with-portfolio</a> \n      in the Amazon Web Services CLI Command Reference. </p>"}))
    Principal.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'PrincipalType', traits: {"smithy.api#documentation" => "<p>The principal type. The supported value is <code>IAM</code> if you use a fully defined ARN, or\n         <code>IAM_PATTERN</code> if you use an ARN with no <code>accountID</code>, with or without wildcard characters. </p>"}))
    Principal.type = Types::Principal
    PrincipalType.add_member(:iam, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM', traits: {"smithy.api#enumValue" => "IAM"}))
    PrincipalType.add_member(:iam_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_PATTERN', traits: {"smithy.api#enumValue" => "IAM_PATTERN"}))
    Principals.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Principal)
    ProductSource.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    ProductType.add_member(:cloud_formation_template, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUD_FORMATION_TEMPLATE', traits: {"smithy.api#enumValue" => "CLOUD_FORMATION_TEMPLATE"}))
    ProductType.add_member(:marketplace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MARKETPLACE', traits: {"smithy.api#enumValue" => "MARKETPLACE"}))
    ProductType.add_member(:terraform_open_source, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERRAFORM_OPEN_SOURCE', traits: {"smithy.api#enumValue" => "TERRAFORM_OPEN_SOURCE"}))
    ProductType.add_member(:terraform_cloud, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERRAFORM_CLOUD', traits: {"smithy.api#enumValue" => "TERRAFORM_CLOUD"}))
    ProductType.add_member(:external, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTERNAL', traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    ProductViewAggregationValue.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the product view aggregation.</p>"}))
    ProductViewAggregationValue.add_member(:approximate_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ApproximateCount, location_name: 'ApproximateCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An approximate count of the products that match the value.</p>"}))
    ProductViewAggregationValue.type = Types::ProductViewAggregationValue
    ProductViewAggregationValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewAggregationValue)
    ProductViewAggregations.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewAggregationType)
    ProductViewAggregations.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewAggregationValues)
    ProductViewDetail.add_member(:product_view_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewSummary, location_name: 'ProductViewSummary', traits: {"smithy.api#documentation" => "<p>Summary information about the product view.</p>"}))
    ProductViewDetail.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the product.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>AVAILABLE</code> - The product is ready for use.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CREATING</code> - Product creation has started; the product is not ready for use.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> - An action failed.</p>\n            </li>\n         </ul>"}))
    ProductViewDetail.add_member(:product_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ProductARN', traits: {"smithy.api#documentation" => "<p>The ARN of the product.</p>"}))
    ProductViewDetail.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedTime, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The UTC time stamp of the creation time.</p>"}))
    ProductViewDetail.add_member(:source_connection, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConnectionDetail, location_name: 'SourceConnection', traits: {"smithy.api#documentation" => "<p>A top level <code>ProductViewDetail</code> response containing details about the product’s connection.\n         Service Catalog returns this field for the <code>CreateProduct</code>, <code>UpdateProduct</code>, \n         <code>DescribeProductAsAdmin</code>, and <code>SearchProductAsAdmin</code> APIs. \n         This response contains the same fields as the <code>ConnectionParameters</code> request, with the \n         addition of the <code>LastSync</code> response.</p>"}))
    ProductViewDetail.type = Types::ProductViewDetail
    ProductViewDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewDetail)
    ProductViewFilterBy.add_member(:full_text_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FullTextSearch', traits: {"smithy.api#enumValue" => "FullTextSearch"}))
    ProductViewFilterBy.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Owner', traits: {"smithy.api#enumValue" => "Owner"}))
    ProductViewFilterBy.add_member(:product_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ProductType', traits: {"smithy.api#enumValue" => "ProductType"}))
    ProductViewFilterBy.add_member(:source_product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SourceProductId', traits: {"smithy.api#enumValue" => "SourceProductId"}))
    ProductViewFilterValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewFilterValue)
    ProductViewFilters.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewFilterBy)
    ProductViewFilters.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewFilterValues)
    ProductViewSortBy.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Title', traits: {"smithy.api#enumValue" => "Title"}))
    ProductViewSortBy.add_member(:version_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VersionCount', traits: {"smithy.api#enumValue" => "VersionCount"}))
    ProductViewSortBy.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CreationDate', traits: {"smithy.api#enumValue" => "CreationDate"}))
    ProductViewSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewSummary)
    ProductViewSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The product view identifier.</p>"}))
    ProductViewSummary.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>"}))
    ProductViewSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the product.</p>"}))
    ProductViewSummary.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewOwner, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The owner of the product. Contact the product administrator for the significance of\n         this value.</p>"}))
    ProductViewSummary.add_member(:short_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewShortDescription, location_name: 'ShortDescription', traits: {"smithy.api#documentation" => "<p>Short description of the product.</p>"}))
    ProductViewSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The product type. Contact the product administrator for the significance of this\n         value. If this value is <code>MARKETPLACE</code>, the product was created by Amazon Web Services Marketplace.</p>"}))
    ProductViewSummary.add_member(:distributor, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewDistributor, location_name: 'Distributor', traits: {"smithy.api#documentation" => "<p>The distributor of the product. Contact the product administrator for the\n         significance of this value.</p>"}))
    ProductViewSummary.add_member(:has_default_path, Smithy::Schema::Shapes::ShapeRef.new(shape: HasDefaultPath, location_name: 'HasDefaultPath', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether the product has a default path.\n         If the product does not have a default path, call <a>ListLaunchPaths</a> \n         to disambiguate between paths. Otherwise, <a>ListLaunchPaths</a> is not \n         required, and the output of <a>ProductViewSummary</a> can be used directly with \n         <a>DescribeProvisioningParameters</a>.</p>"}))
    ProductViewSummary.add_member(:support_email, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportEmail, location_name: 'SupportEmail', traits: {"smithy.api#documentation" => "<p>The email contact information to obtain support for this Product.</p>"}))
    ProductViewSummary.add_member(:support_description, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportDescription, location_name: 'SupportDescription', traits: {"smithy.api#documentation" => "<p>The description of the support for this Product.</p>"}))
    ProductViewSummary.add_member(:support_url, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportUrl, location_name: 'SupportUrl', traits: {"smithy.api#documentation" => "<p>The URL information to obtain support for this Product.</p>"}))
    ProductViewSummary.type = Types::ProductViewSummary
    PropertyKey.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Owner', traits: {"smithy.api#enumValue" => "OWNER"}))
    PropertyKey.add_member(:launch_role, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LaunchRole', traits: {"smithy.api#enumValue" => "LAUNCH_ROLE"}))
    ProvisionProductInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ProvisionProductInput.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier. You must provide the name or ID, but not both.</p>"}))
    ProvisionProductInput.add_member(:product_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewName, location_name: 'ProductName', traits: {"smithy.api#documentation" => "<p>The name of the product. You must provide the name or ID, but not both.</p>"}))
    ProvisionProductInput.add_member(:provisioning_artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisioningArtifactId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact. You must provide the name or ID, but not both.</p>"}))
    ProvisionProductInput.add_member(:provisioning_artifact_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactName, location_name: 'ProvisioningArtifactName', traits: {"smithy.api#documentation" => "<p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>"}))
    ProvisionProductInput.add_member(:path_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PathId', traits: {"smithy.api#documentation" => "<p>The path identifier of the product. This value is optional if the product \n         has a default path, and required if the product has more than one path.\n         To list the paths for a product, use <a>ListLaunchPaths</a>. You must provide the name or ID, but not both.</p>"}))
    ProvisionProductInput.add_member(:path_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioDisplayName, location_name: 'PathName', traits: {"smithy.api#documentation" => "<p>The name of the path. You must provide the name or ID, but not both.</p>"}))
    ProvisionProductInput.add_member(:provisioned_product_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductName, location_name: 'ProvisionedProductName', traits: {"smithy.api#documentation" => "<p>A user-friendly name for the provisioned product. This value must be\n         unique for the Amazon Web Services account and cannot be updated after the product is provisioned.</p>", "smithy.api#required" => {}}))
    ProvisionProductInput.add_member(:provisioning_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningParameters, location_name: 'ProvisioningParameters', traits: {"smithy.api#documentation" => "<p>Parameters specified by the administrator that are required for provisioning the\n         product.</p>"}))
    ProvisionProductInput.add_member(:provisioning_preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningPreferences, location_name: 'ProvisioningPreferences', traits: {"smithy.api#documentation" => "<p>An object that contains information about the provisioning preferences for a stack set.</p>"}))
    ProvisionProductInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>One or more tags.</p>"}))
    ProvisionProductInput.add_member(:notification_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationArns, location_name: 'NotificationArns', traits: {"smithy.api#documentation" => "<p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related\n         events.</p>"}))
    ProvisionProductInput.add_member(:provision_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ProvisionToken', traits: {"smithy.api#documentation" => "<p>An idempotency token that uniquely identifies the provisioning request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ProvisionProductInput.type = Types::ProvisionProductInput
    ProvisionProductOutput.add_member(:record_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordDetail, location_name: 'RecordDetail', traits: {"smithy.api#documentation" => "<p>Information about the result of provisioning the product.</p>"}))
    ProvisionProductOutput.type = Types::ProvisionProductOutput
    ProvisionedProductAttribute.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductNameOrArn, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The user-friendly name of the provisioned product.</p>"}))
    ProvisionedProductAttribute.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductNameOrArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the provisioned product.</p>"}))
    ProvisionedProductAttribute.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of provisioned product. \n         The supported values are <code>CFN_STACK</code>, <code>CFN_STACKSET</code>, <code>TERRAFORM_OPEN_SOURCE</code>, \n         <code>TERRAFORM_CLOUD</code>, and <code>EXTERNAL</code>.</p>"}))
    ProvisionedProductAttribute.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioned product.</p>"}))
    ProvisionedProductAttribute.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the provisioned product.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>AVAILABLE</code> - Stable state, ready to perform any operation. The most\n               recent operation succeeded and completed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UNDER_CHANGE</code> - Transitive state. Operations performed might not have valid results.\n               Wait for an <code>AVAILABLE</code> status before performing operations.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TAINTED</code> - Stable state, ready to perform any operation. The stack has\n               completed the requested operation but is not exactly what was requested. For example, a\n               request to update to a new version failed and the stack rolled back to the current version.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ERROR</code> - An unexpected error occurred. The provisioned product exists but the stack is not running. \n               For example, CloudFormation received a parameter value that was not valid and could not launch the stack.</p>\n            </li>\n            <li>\n               <p>\n                  <code>PLAN_IN_PROGRESS</code> - Transitive state. The plan operations were performed to provision a new product,\n                but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an <code>AVAILABLE</code> status before performing operations.</p>\n            </li>\n         </ul>"}))
    ProvisionedProductAttribute.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductStatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The current status message of the provisioned product.</p>"}))
    ProvisionedProductAttribute.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedTime, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The UTC time stamp of the creation time.</p>"}))
    ProvisionedProductAttribute.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,\n  the same response is returned for each repeated request.</p>"}))
    ProvisionedProductAttribute.add_member(:last_record_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'LastRecordId', traits: {"smithy.api#documentation" => "<p>The record identifier of the last request performed on this provisioned product.</p>"}))
    ProvisionedProductAttribute.add_member(:last_provisioning_record_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'LastProvisioningRecordId', traits: {"smithy.api#documentation" => "<p>The record identifier of the last request performed on this provisioned product of the following types:</p>\n         <ul>\n            <li>\n               <p>\n               ProvisionProduct\n            </p>\n            </li>\n            <li>\n               <p>\n               UpdateProvisionedProduct\n            </p>\n            </li>\n            <li>\n               <p>\n               ExecuteProvisionedProductPlan\n            </p>\n            </li>\n            <li>\n               <p>\n               TerminateProvisionedProduct\n            </p>\n            </li>\n         </ul>"}))
    ProvisionedProductAttribute.add_member(:last_successful_provisioning_record_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'LastSuccessfulProvisioningRecordId', traits: {"smithy.api#documentation" => "<p>The record identifier of the last successful request performed on this provisioned product of the following types:</p>\n         <ul>\n            <li>\n               <p>\n               ProvisionProduct\n            </p>\n            </li>\n            <li>\n               <p>\n               UpdateProvisionedProduct\n            </p>\n            </li>\n            <li>\n               <p>\n               ExecuteProvisionedProductPlan\n            </p>\n            </li>\n            <li>\n               <p>\n               TerminateProvisionedProduct\n            </p>\n            </li>\n         </ul>"}))
    ProvisionedProductAttribute.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>One or more tags.</p>"}))
    ProvisionedProductAttribute.add_member(:physical_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PhysicalId, location_name: 'PhysicalId', traits: {"smithy.api#documentation" => "<p>The assigned identifier for the resource, such as an EC2 instance ID or an S3 bucket name.</p>"}))
    ProvisionedProductAttribute.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>"}))
    ProvisionedProductAttribute.add_member(:product_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewName, location_name: 'ProductName', traits: {"smithy.api#documentation" => "<p>The name of the product.</p>"}))
    ProvisionedProductAttribute.add_member(:provisioning_artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisioningArtifactId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact.</p>"}))
    ProvisionedProductAttribute.add_member(:provisioning_artifact_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactName, location_name: 'ProvisioningArtifactName', traits: {"smithy.api#documentation" => "<p>The name of the provisioning artifact.</p>"}))
    ProvisionedProductAttribute.add_member(:user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: UserArn, location_name: 'UserArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user.</p>"}))
    ProvisionedProductAttribute.add_member(:user_arn_session, Smithy::Schema::Shapes::ShapeRef.new(shape: UserArnSession, location_name: 'UserArnSession', traits: {"smithy.api#documentation" => "<p>The ARN of the user in the session. This ARN might contain a session ID.</p>"}))
    ProvisionedProductAttribute.type = Types::ProvisionedProductAttribute
    ProvisionedProductAttributes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductAttribute)
    ProvisionedProductDetail.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductNameOrArn, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The user-friendly name of the provisioned product.</p>"}))
    ProvisionedProductDetail.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductNameOrArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the provisioned product.</p>"}))
    ProvisionedProductDetail.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of provisioned product. \n         The supported values are <code>CFN_STACK</code>, <code>CFN_STACKSET</code>, <code>TERRAFORM_OPEN_SOURCE</code>, \n         <code>TERRAFORM_CLOUD</code>, and <code>EXTERNAL</code>.</p>"}))
    ProvisionedProductDetail.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioned product.</p>"}))
    ProvisionedProductDetail.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the provisioned product.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>AVAILABLE</code> - Stable state, ready to perform any operation. The most\n               recent operation succeeded and completed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UNDER_CHANGE</code> - Transitive state. Operations performed might not have valid results.\n               Wait for an <code>AVAILABLE</code> status before performing operations.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TAINTED</code> - Stable state, ready to perform any operation. The stack has\n               completed the requested operation but is not exactly what was requested. For example, a\n               request to update to a new version failed and the stack rolled back to the current version.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ERROR</code> - An unexpected error occurred. The provisioned product exists but the stack is not running. \n               For example, CloudFormation received a parameter value that was not valid and could not launch the stack.</p>\n            </li>\n            <li>\n               <p>\n                  <code>PLAN_IN_PROGRESS</code> - Transitive state. The plan operations were performed to provision a new product,\n               but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an <code>AVAILABLE</code> status before performing operations.</p>\n            </li>\n         </ul>"}))
    ProvisionedProductDetail.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductStatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The current status message of the provisioned product.</p>"}))
    ProvisionedProductDetail.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedTime, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The UTC time stamp of the creation time.</p>"}))
    ProvisionedProductDetail.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,\n  the same response is returned for each repeated request.</p>"}))
    ProvisionedProductDetail.add_member(:last_record_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LastRequestId, location_name: 'LastRecordId', traits: {"smithy.api#documentation" => "<p>The record identifier of the last request performed on this provisioned product.</p>"}))
    ProvisionedProductDetail.add_member(:last_provisioning_record_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'LastProvisioningRecordId', traits: {"smithy.api#documentation" => "<p>The record identifier of the last request performed on this provisioned product of the following types:</p>\n         <ul>\n            <li>\n               <p>\n               ProvisionProduct\n            </p>\n            </li>\n            <li>\n               <p>\n               UpdateProvisionedProduct\n            </p>\n            </li>\n            <li>\n               <p>\n               ExecuteProvisionedProductPlan\n            </p>\n            </li>\n            <li>\n               <p>\n               TerminateProvisionedProduct\n            </p>\n            </li>\n         </ul>"}))
    ProvisionedProductDetail.add_member(:last_successful_provisioning_record_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'LastSuccessfulProvisioningRecordId', traits: {"smithy.api#documentation" => "<p>The record identifier of the last successful request performed on this provisioned product of the following types:</p>\n         <ul>\n            <li>\n               <p>\n               ProvisionProduct\n            </p>\n            </li>\n            <li>\n               <p>\n               UpdateProvisionedProduct\n            </p>\n            </li>\n            <li>\n               <p>\n               ExecuteProvisionedProductPlan\n            </p>\n            </li>\n            <li>\n               <p>\n               TerminateProvisionedProduct\n            </p>\n            </li>\n         </ul>"}))
    ProvisionedProductDetail.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>"}))
    ProvisionedProductDetail.add_member(:provisioning_artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisioningArtifactId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>"}))
    ProvisionedProductDetail.add_member(:launch_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'LaunchRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the launch role associated with the provisioned product.</p>"}))
    ProvisionedProductDetail.type = Types::ProvisionedProductDetail
    ProvisionedProductDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductDetail)
    ProvisionedProductFilters.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductViewFilterBy)
    ProvisionedProductFilters.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductViewFilterValues)
    ProvisionedProductPlanDetails.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedTime, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The UTC time stamp of the creation time.</p>"}))
    ProvisionedProductPlanDetails.add_member(:path_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PathId', traits: {"smithy.api#documentation" => "<p>The path identifier of the product. This value is optional if the product \n         has a default path, and required if the product has more than one path.\n         To list the paths for a product, use <a>ListLaunchPaths</a>.</p>"}))
    ProvisionedProductPlanDetails.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>"}))
    ProvisionedProductPlanDetails.add_member(:plan_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductPlanName, location_name: 'PlanName', traits: {"smithy.api#documentation" => "<p>The name of the plan.</p>"}))
    ProvisionedProductPlanDetails.add_member(:plan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PlanId', traits: {"smithy.api#documentation" => "<p>The plan identifier.</p>"}))
    ProvisionedProductPlanDetails.add_member(:provision_product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisionProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>"}))
    ProvisionedProductPlanDetails.add_member(:provision_product_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductName, location_name: 'ProvisionProductName', traits: {"smithy.api#documentation" => "<p>The user-friendly name of the provisioned product.</p>"}))
    ProvisionedProductPlanDetails.add_member(:plan_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductPlanType, location_name: 'PlanType', traits: {"smithy.api#documentation" => "<p>The plan type.</p>"}))
    ProvisionedProductPlanDetails.add_member(:provisioning_artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisioningArtifactId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact.</p>"}))
    ProvisionedProductPlanDetails.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductPlanStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status.</p>"}))
    ProvisionedProductPlanDetails.add_member(:updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedTime, location_name: 'UpdatedTime', traits: {"smithy.api#documentation" => "<p>The UTC time stamp when the plan was last updated.</p>"}))
    ProvisionedProductPlanDetails.add_member(:notification_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationArns, location_name: 'NotificationArns', traits: {"smithy.api#documentation" => "<p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related\n         events.</p>"}))
    ProvisionedProductPlanDetails.add_member(:provisioning_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProvisioningParameters, location_name: 'ProvisioningParameters', traits: {"smithy.api#documentation" => "<p>Parameters specified by the administrator that are required for provisioning the\n         product.</p>"}))
    ProvisionedProductPlanDetails.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>One or more tags.</p>"}))
    ProvisionedProductPlanDetails.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message.</p>"}))
    ProvisionedProductPlanDetails.type = Types::ProvisionedProductPlanDetails
    ProvisionedProductPlanStatus.add_member(:create_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    ProvisionedProductPlanStatus.add_member(:create_success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_SUCCESS', traits: {"smithy.api#enumValue" => "CREATE_SUCCESS"}))
    ProvisionedProductPlanStatus.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ProvisionedProductPlanStatus.add_member(:execute_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "EXECUTE_IN_PROGRESS"}))
    ProvisionedProductPlanStatus.add_member(:execute_success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTE_SUCCESS', traits: {"smithy.api#enumValue" => "EXECUTE_SUCCESS"}))
    ProvisionedProductPlanStatus.add_member(:execute_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTE_FAILED', traits: {"smithy.api#enumValue" => "EXECUTE_FAILED"}))
    ProvisionedProductPlanSummary.add_member(:plan_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductPlanName, location_name: 'PlanName', traits: {"smithy.api#documentation" => "<p>The name of the plan.</p>"}))
    ProvisionedProductPlanSummary.add_member(:plan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PlanId', traits: {"smithy.api#documentation" => "<p>The plan identifier.</p>"}))
    ProvisionedProductPlanSummary.add_member(:provision_product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisionProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>"}))
    ProvisionedProductPlanSummary.add_member(:provision_product_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductName, location_name: 'ProvisionProductName', traits: {"smithy.api#documentation" => "<p>The user-friendly name of the provisioned product.</p>"}))
    ProvisionedProductPlanSummary.add_member(:plan_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductPlanType, location_name: 'PlanType', traits: {"smithy.api#documentation" => "<p>The plan type.</p>"}))
    ProvisionedProductPlanSummary.add_member(:provisioning_artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisioningArtifactId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact.</p>"}))
    ProvisionedProductPlanSummary.type = Types::ProvisionedProductPlanSummary
    ProvisionedProductPlanType.add_member(:cloudformation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDFORMATION', traits: {"smithy.api#enumValue" => "CLOUDFORMATION"}))
    ProvisionedProductPlans.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductPlanSummary)
    ProvisionedProductProperties.key = Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyKey)
    ProvisionedProductProperties.value = Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyValue)
    ProvisionedProductStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ProvisionedProductStatus.add_member(:under_change, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNDER_CHANGE', traits: {"smithy.api#enumValue" => "UNDER_CHANGE"}))
    ProvisionedProductStatus.add_member(:tainted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAINTED', traits: {"smithy.api#enumValue" => "TAINTED"}))
    ProvisionedProductStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    ProvisionedProductStatus.add_member(:plan_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLAN_IN_PROGRESS', traits: {"smithy.api#enumValue" => "PLAN_IN_PROGRESS"}))
    ProvisionedProductViewFilterBy.add_member(:search_query, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SearchQuery', traits: {"smithy.api#enumValue" => "SearchQuery"}))
    ProvisionedProductViewFilterValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductViewFilterValue)
    ProvisioningArtifact.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact.</p>"}))
    ProvisioningArtifact.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the provisioning artifact.</p>"}))
    ProvisioningArtifact.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the provisioning artifact.</p>"}))
    ProvisioningArtifact.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactCreatedTime, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The UTC time stamp of the creation time.</p>"}))
    ProvisioningArtifact.add_member(:guidance, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactGuidance, location_name: 'Guidance', traits: {"smithy.api#documentation" => "<p>Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.</p>"}))
    ProvisioningArtifact.type = Types::ProvisioningArtifact
    ProvisioningArtifactDetail.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact.</p>"}))
    ProvisioningArtifactDetail.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the provisioning artifact.</p>"}))
    ProvisioningArtifactDetail.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactName, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the provisioning artifact.</p>"}))
    ProvisioningArtifactDetail.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of provisioning artifact.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CLOUD_FORMATION_TEMPLATE</code> - CloudFormation template</p>\n            </li>\n            <li>\n               <p>\n                  <code>TERRAFORM_OPEN_SOURCE</code> - Terraform Open Source configuration file</p>\n            </li>\n            <li>\n               <p>\n                  <code>TERRAFORM_CLOUD</code> - Terraform Cloud configuration file</p>\n            </li>\n            <li>\n               <p>\n                  <code>EXTERNAL</code> - External configuration file</p>\n            </li>\n         </ul>"}))
    ProvisioningArtifactDetail.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The UTC time stamp of the creation time.</p>"}))
    ProvisioningArtifactDetail.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactActive, location_name: 'Active', traits: {"smithy.api#documentation" => "<p>Indicates whether the product version is active.</p>"}))
    ProvisioningArtifactDetail.add_member(:guidance, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactGuidance, location_name: 'Guidance', traits: {"smithy.api#documentation" => "<p>Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.</p>"}))
    ProvisioningArtifactDetail.add_member(:source_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRevision, location_name: 'SourceRevision', traits: {"smithy.api#documentation" => "<p>Specifies the revision of the external artifact that was used to automatically sync the Service Catalog product \n         and create the provisioning artifact. Service Catalog includes this response parameter as a high level \n         field to the existing <code>ProvisioningArtifactDetail</code> type, which is returned as part of the\n         response for <code>CreateProduct</code>, <code>UpdateProduct</code>, <code>DescribeProductAsAdmin</code>, \n         <code>DescribeProvisioningArtifact</code>, <code>ListProvisioningArtifact</code>, \n         and <code>UpdateProvisioningArticat</code> APIs. </p>\n         <p>This field only exists for Repo-Synced products. </p>"}))
    ProvisioningArtifactDetail.type = Types::ProvisioningArtifactDetail
    ProvisioningArtifactDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactDetail)
    ProvisioningArtifactGuidance.add_member(:default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    ProvisioningArtifactGuidance.add_member(:deprecated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPRECATED', traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    ProvisioningArtifactInfo.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactInfoKey)
    ProvisioningArtifactInfo.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactInfoValue)
    ProvisioningArtifactOutput.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactOutputKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The provisioning artifact output key.</p>"}))
    ProvisioningArtifactOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Description of the provisioning artifact output key.</p>"}))
    ProvisioningArtifactOutput.type = Types::ProvisioningArtifactOutput
    ProvisioningArtifactOutputs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactOutput)
    ProvisioningArtifactParameter.add_member(:parameter_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterKey, location_name: 'ParameterKey', traits: {"smithy.api#documentation" => "<p>The parameter key.</p>"}))
    ProvisioningArtifactParameter.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultValue, location_name: 'DefaultValue', traits: {"smithy.api#documentation" => "<p>The default value.</p>"}))
    ProvisioningArtifactParameter.add_member(:parameter_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterType, location_name: 'ParameterType', traits: {"smithy.api#documentation" => "<p>The parameter type.</p>"}))
    ProvisioningArtifactParameter.add_member(:is_no_echo, Smithy::Schema::Shapes::ShapeRef.new(shape: NoEcho, location_name: 'IsNoEcho', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If this value is true, the value for this parameter is obfuscated from view when the\n         parameter is retrieved. This parameter is used to hide sensitive information.</p>"}))
    ProvisioningArtifactParameter.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the parameter.</p>"}))
    ProvisioningArtifactParameter.add_member(:parameter_constraints, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterConstraints, location_name: 'ParameterConstraints', traits: {"smithy.api#documentation" => "<p>Constraints that the administrator has put on a parameter.</p>"}))
    ProvisioningArtifactParameter.type = Types::ProvisioningArtifactParameter
    ProvisioningArtifactParameters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactParameter)
    ProvisioningArtifactPreferences.add_member(:stack_set_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetAccounts, location_name: 'StackSetAccounts', traits: {"smithy.api#documentation" => "<p>One or more Amazon Web Services accounts where stack instances are deployed from the stack set. These accounts can be scoped in <code>ProvisioningPreferences$StackSetAccounts</code> and <code>UpdateProvisioningPreferences$StackSetAccounts</code>.</p>\n         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>"}))
    ProvisioningArtifactPreferences.add_member(:stack_set_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetRegions, location_name: 'StackSetRegions', traits: {"smithy.api#documentation" => "<p>One or more Amazon Web Services Regions where stack instances are deployed from the stack set. These Regions can be scoped in <code>ProvisioningPreferences$StackSetRegions</code> and <code>UpdateProvisioningPreferences$StackSetRegions</code>.</p>\n         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>"}))
    ProvisioningArtifactPreferences.type = Types::ProvisioningArtifactPreferences
    ProvisioningArtifactProperties.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the provisioning artifact (for example, v1 v2beta). No spaces are allowed.</p>"}))
    ProvisioningArtifactProperties.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the provisioning artifact, including how it differs from the previous provisioning artifact.</p>"}))
    ProvisioningArtifactProperties.add_member(:info, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactInfo, location_name: 'Info', traits: {"smithy.api#documentation" => "<p>Specify the template source with one of the following options, but not both.\n         Keys accepted: [ <code>LoadTemplateFromURL</code>, <code>ImportFromPhysicalId</code> ]</p>\n         <p>The URL of the CloudFormation template in Amazon S3 or GitHub in JSON format.\n       Specify the URL in JSON format as follows:</p>\n         <p>\n            <code>\"LoadTemplateFromURL\": \"https://s3.amazonaws.com/cf-templates-ozkq9d3hgiq2-us-east-1/...\"</code>\n         </p>\n         <p>\n            <code>ImportFromPhysicalId</code>: The physical id of the resource that contains the\n         template. Currently only supports CloudFormation stack arn. Specify the physical id in JSON\n         format as follows: <code>ImportFromPhysicalId: “arn:aws:cloudformation:[us-east-1]:[accountId]:stack/[StackName]/[resourceId]</code>\n         </p>"}))
    ProvisioningArtifactProperties.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of provisioning artifact.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CLOUD_FORMATION_TEMPLATE</code> - CloudFormation template</p>\n            </li>\n            <li>\n               <p>\n                  <code>TERRAFORM_OPEN_SOURCE</code> - Terraform Open Source configuration file</p>\n            </li>\n            <li>\n               <p>\n                  <code>TERRAFORM_CLOUD</code> - Terraform Cloud configuration file</p>\n            </li>\n            <li>\n               <p>\n                  <code>EXTERNAL</code> - External configuration file</p>\n            </li>\n         </ul>"}))
    ProvisioningArtifactProperties.add_member(:disable_template_validation, Smithy::Schema::Shapes::ShapeRef.new(shape: DisableTemplateValidation, location_name: 'DisableTemplateValidation', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If set to true, Service Catalog stops validating the specified provisioning artifact even if it is invalid. </p>\n         <p>Service Catalog does not support template validation for the <code>TERRAFORM_OS</code> product type. </p>"}))
    ProvisioningArtifactProperties.type = Types::ProvisioningArtifactProperties
    ProvisioningArtifactPropertyName.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Id', traits: {"smithy.api#enumValue" => "Id"}))
    ProvisioningArtifactSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactSummary)
    ProvisioningArtifactSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact.</p>"}))
    ProvisioningArtifactSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the provisioning artifact.</p>"}))
    ProvisioningArtifactSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the provisioning artifact.</p>"}))
    ProvisioningArtifactSummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactCreatedTime, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The UTC time stamp of the creation time.</p>"}))
    ProvisioningArtifactSummary.add_member(:provisioning_artifact_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactInfo, location_name: 'ProvisioningArtifactMetadata', traits: {"smithy.api#documentation" => "<p>The metadata for the provisioning artifact. This is used with Amazon Web Services Marketplace products.</p>"}))
    ProvisioningArtifactSummary.type = Types::ProvisioningArtifactSummary
    ProvisioningArtifactType.add_member(:cloud_formation_template, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUD_FORMATION_TEMPLATE', traits: {"smithy.api#enumValue" => "CLOUD_FORMATION_TEMPLATE"}))
    ProvisioningArtifactType.add_member(:marketplace_ami, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MARKETPLACE_AMI', traits: {"smithy.api#enumValue" => "MARKETPLACE_AMI"}))
    ProvisioningArtifactType.add_member(:marketplace_car, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MARKETPLACE_CAR', traits: {"smithy.api#enumValue" => "MARKETPLACE_CAR"}))
    ProvisioningArtifactType.add_member(:terraform_open_source, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERRAFORM_OPEN_SOURCE', traits: {"smithy.api#enumValue" => "TERRAFORM_OPEN_SOURCE"}))
    ProvisioningArtifactType.add_member(:terraform_cloud, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERRAFORM_CLOUD', traits: {"smithy.api#enumValue" => "TERRAFORM_CLOUD"}))
    ProvisioningArtifactType.add_member(:external, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTERNAL', traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    ProvisioningArtifactView.add_member(:product_view_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewSummary, location_name: 'ProductViewSummary', traits: {"smithy.api#documentation" => "<p>Summary information about a product view.</p>"}))
    ProvisioningArtifactView.add_member(:provisioning_artifact, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifact, location_name: 'ProvisioningArtifact', traits: {"smithy.api#documentation" => "<p>Information about a provisioning artifact. A provisioning artifact is also known as a product version.</p>"}))
    ProvisioningArtifactView.type = Types::ProvisioningArtifactView
    ProvisioningArtifactViews.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactView)
    ProvisioningArtifacts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifact)
    ProvisioningParameter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The parameter key.</p>"}))
    ProvisioningParameter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The parameter value.</p>"}))
    ProvisioningParameter.type = Types::ProvisioningParameter
    ProvisioningParameters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningParameter)
    ProvisioningPreferences.add_member(:stack_set_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetAccounts, location_name: 'StackSetAccounts', traits: {"smithy.api#documentation" => "<p>One or more Amazon Web Services accounts where the provisioned product will be available.</p>\n         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>\n         <p>The specified accounts should be within the list of accounts from the <code>STACKSET</code> constraint. To get the list of accounts in the <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code> operation.</p>\n         <p>If no values are specified, the default value is all acounts from the <code>STACKSET</code> constraint.</p>"}))
    ProvisioningPreferences.add_member(:stack_set_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetRegions, location_name: 'StackSetRegions', traits: {"smithy.api#documentation" => "<p>One or more Amazon Web Services Regions where the provisioned product will be available.</p>\n         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>\n         <p>The specified Regions should be within the list of Regions from the <code>STACKSET</code> constraint. To get the list of Regions in the <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code> operation.</p>\n         <p>If no values are specified, the default value is all Regions from the <code>STACKSET</code> constraint.</p>"}))
    ProvisioningPreferences.add_member(:stack_set_failure_tolerance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetFailureToleranceCount, location_name: 'StackSetFailureToleranceCount', traits: {"smithy.api#documentation" => "<p>The number of accounts, per Region, for which this operation can fail before Service Catalog stops the operation in that Region. If the operation is stopped in a Region, Service Catalog doesn't attempt the operation in any subsequent Regions.</p>\n         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>\n         <p>Conditional: You must specify either <code>StackSetFailureToleranceCount</code> or <code>StackSetFailureTolerancePercentage</code>, but not both.</p>\n         <p>The default value is <code>0</code> if no value is specified.</p>"}))
    ProvisioningPreferences.add_member(:stack_set_failure_tolerance_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetFailureTolerancePercentage, location_name: 'StackSetFailureTolerancePercentage', traits: {"smithy.api#documentation" => "<p>The percentage of accounts, per Region, for which this stack operation can fail before Service Catalog stops the operation in that Region. If the operation is stopped in a Region, Service Catalog doesn't attempt the operation in any subsequent Regions.</p>\n         <p>When calculating the number of accounts based on the specified percentage, Service Catalog rounds down to the next whole number.</p>\n         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>\n         <p>Conditional: You must specify either <code>StackSetFailureToleranceCount</code> or <code>StackSetFailureTolerancePercentage</code>, but not both.</p>"}))
    ProvisioningPreferences.add_member(:stack_set_max_concurrency_count, Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetMaxConcurrencyCount, location_name: 'StackSetMaxConcurrencyCount', traits: {"smithy.api#documentation" => "<p>The maximum number of accounts in which to perform this operation at one time. This is dependent on the value of <code>StackSetFailureToleranceCount</code>. <code>StackSetMaxConcurrentCount</code> is at most one more than the <code>StackSetFailureToleranceCount</code>.</p>\n         <p>Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p>\n         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>\n         <p>Conditional: You must specify either <code>StackSetMaxConcurrentCount</code> or <code>StackSetMaxConcurrentPercentage</code>, but not both.</p>"}))
    ProvisioningPreferences.add_member(:stack_set_max_concurrency_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetMaxConcurrencyPercentage, location_name: 'StackSetMaxConcurrencyPercentage', traits: {"smithy.api#documentation" => "<p>The maximum percentage of accounts in which to perform this operation at one time.</p>\n         <p>When calculating the number of accounts based on the specified percentage, Service Catalog rounds down to the next whole number. This is true except in cases where rounding down would result is zero. In this case, Service Catalog sets the number as <code>1</code> instead.</p>\n         <p>Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p>\n         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>\n         <p>Conditional: You must specify either <code>StackSetMaxConcurrentCount</code> or <code>StackSetMaxConcurrentPercentage</code>, but not both.</p>"}))
    ProvisioningPreferences.type = Types::ProvisioningPreferences
    RecordDetail.add_member(:record_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RecordId', traits: {"smithy.api#documentation" => "<p>The identifier of the record.</p>"}))
    RecordDetail.add_member(:provisioned_product_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductName, location_name: 'ProvisionedProductName', traits: {"smithy.api#documentation" => "<p>The user-friendly name of the provisioned product.</p>"}))
    RecordDetail.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the provisioned product.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATED</code> - The request was created but the operation has not started.</p>\n            </li>\n            <li>\n               <p>\n                  <code>IN_PROGRESS</code> - The requested operation is in progress.</p>\n            </li>\n            <li>\n               <p>\n                  <code>IN_PROGRESS_IN_ERROR</code> - The provisioned product is under change but the\n            requested operation failed and some remediation is occurring. For example, a rollback.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUCCEEDED</code> - The requested operation has successfully completed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> - The requested operation has unsuccessfully completed.\n            Investigate using the error messages returned.</p>\n            </li>\n         </ul>"}))
    RecordDetail.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedTime, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The UTC time stamp of the creation time.</p>"}))
    RecordDetail.add_member(:updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedTime, location_name: 'UpdatedTime', traits: {"smithy.api#documentation" => "<p>The time when the record was last updated.</p>"}))
    RecordDetail.add_member(:provisioned_product_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductType, location_name: 'ProvisionedProductType', traits: {"smithy.api#documentation" => "<p>The type of provisioned product. The supported values are <code>CFN_STACK</code>, <code>CFN_STACKSET</code>, \n         <code>TERRAFORM_OPEN_SOURCE</code>, <code>TERRAFORM_CLOUD</code>, and <code>EXTERNAL</code>.</p>"}))
    RecordDetail.add_member(:record_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordType, location_name: 'RecordType', traits: {"smithy.api#documentation" => "<p>The record type.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PROVISION_PRODUCT</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>UPDATE_PROVISIONED_PRODUCT</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>TERMINATE_PROVISIONED_PRODUCT</code>\n               </p>\n            </li>\n         </ul>"}))
    RecordDetail.add_member(:provisioned_product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisionedProductId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioned product.</p>"}))
    RecordDetail.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>"}))
    RecordDetail.add_member(:provisioning_artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisioningArtifactId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact.</p>"}))
    RecordDetail.add_member(:path_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PathId', traits: {"smithy.api#documentation" => "<p>The path identifier.</p>"}))
    RecordDetail.add_member(:record_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordErrors, location_name: 'RecordErrors', traits: {"smithy.api#documentation" => "<p>The errors that occurred.</p>"}))
    RecordDetail.add_member(:record_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordTags, location_name: 'RecordTags', traits: {"smithy.api#documentation" => "<p>One or more tags.</p>"}))
    RecordDetail.add_member(:launch_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'LaunchRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the launch role associated with the provisioned product.</p>"}))
    RecordDetail.type = Types::RecordDetail
    RecordDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecordDetail)
    RecordError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>The numeric value of the error.</p>"}))
    RecordError.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the error.</p>"}))
    RecordError.type = Types::RecordError
    RecordErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecordError)
    RecordOutput.add_member(:output_key, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputKey, location_name: 'OutputKey', traits: {"smithy.api#documentation" => "<p>The output key.</p>"}))
    RecordOutput.add_member(:output_value, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputValue, location_name: 'OutputValue', traits: {"smithy.api#documentation" => "<p>The output value.</p>"}))
    RecordOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the output.</p>"}))
    RecordOutput.type = Types::RecordOutput
    RecordOutputs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecordOutput)
    RecordStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    RecordStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    RecordStatus.add_member(:in_progress_in_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS_IN_ERROR', traits: {"smithy.api#enumValue" => "IN_PROGRESS_IN_ERROR"}))
    RecordStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    RecordStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    RecordTag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordTagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key for this tag.</p>"}))
    RecordTag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordTagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value for this tag.</p>"}))
    RecordTag.type = Types::RecordTag
    RecordTags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecordTag)
    RejectPortfolioShareInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    RejectPortfolioShareInput.add_member(:portfolio_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioId', traits: {"smithy.api#documentation" => "<p>The portfolio identifier.</p>", "smithy.api#required" => {}}))
    RejectPortfolioShareInput.add_member(:portfolio_share_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioShareType, location_name: 'PortfolioShareType', traits: {"smithy.api#documentation" => "<p>The type of shared portfolios to reject. The default is to reject imported portfolios.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>AWS_ORGANIZATIONS</code> - Reject portfolios shared by the management account of your\n               organization.</p>\n            </li>\n            <li>\n               <p>\n                  <code>IMPORTED</code> - Reject imported portfolios.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SERVICECATALOG</code> - Not supported. (Throws ResourceNotFoundException.)</p>\n            </li>\n         </ul>\n         <p>For example, <code>aws servicecatalog reject-portfolio-share --portfolio-id \"port-2qwzkwxt3y5fk\" --portfolio-share-type AWS_ORGANIZATIONS</code>\n         </p>"}))
    RejectPortfolioShareInput.type = Types::RejectPortfolioShareInput
    RejectPortfolioShareOutput.type = Types::RejectPortfolioShareOutput
    Replacement.add_member(:true, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRUE', traits: {"smithy.api#enumValue" => "TRUE"}))
    Replacement.add_member(:false, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FALSE', traits: {"smithy.api#enumValue" => "FALSE"}))
    Replacement.add_member(:conditional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONDITIONAL', traits: {"smithy.api#enumValue" => "CONDITIONAL"}))
    RequiresRecreation.add_member(:never, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEVER', traits: {"smithy.api#enumValue" => "NEVER"}))
    RequiresRecreation.add_member(:conditionally, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONDITIONALLY', traits: {"smithy.api#enumValue" => "CONDITIONALLY"}))
    RequiresRecreation.add_member(:always, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALWAYS', traits: {"smithy.api#enumValue" => "ALWAYS"}))
    ResourceAttribute.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROPERTIES', traits: {"smithy.api#enumValue" => "PROPERTIES"}))
    ResourceAttribute.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'METADATA', traits: {"smithy.api#enumValue" => "METADATA"}))
    ResourceAttribute.add_member(:creationpolicy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATIONPOLICY', traits: {"smithy.api#enumValue" => "CREATIONPOLICY"}))
    ResourceAttribute.add_member(:updatepolicy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATEPOLICY', traits: {"smithy.api#enumValue" => "UPDATEPOLICY"}))
    ResourceAttribute.add_member(:deletionpolicy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETIONPOLICY', traits: {"smithy.api#enumValue" => "DELETIONPOLICY"}))
    ResourceAttribute.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAGS', traits: {"smithy.api#enumValue" => "TAGS"}))
    ResourceChange.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The change action.</p>"}))
    ResourceChange.add_member(:logical_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LogicalResourceId, location_name: 'LogicalResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource, as defined in the CloudFormation template.</p>"}))
    ResourceChange.add_member(:physical_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PhysicalResourceId, location_name: 'PhysicalResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource, if it was already created.</p>"}))
    ResourceChange.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PlanResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource.</p>"}))
    ResourceChange.add_member(:replacement, Smithy::Schema::Shapes::ShapeRef.new(shape: Replacement, location_name: 'Replacement', traits: {"smithy.api#documentation" => "<p>If the change type is <code>Modify</code>, indicates whether the existing resource\n         is deleted and replaced with a new one.</p>"}))
    ResourceChange.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: Scope, location_name: 'Scope', traits: {"smithy.api#documentation" => "<p>The change scope.</p>"}))
    ResourceChange.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceChangeDetails, location_name: 'Details', traits: {"smithy.api#documentation" => "<p>Information about the resource changes.</p>"}))
    ResourceChange.type = Types::ResourceChange
    ResourceChangeDetail.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTargetDefinition, location_name: 'Target', traits: {"smithy.api#documentation" => "<p>Information about the resource attribute to be modified.</p>"}))
    ResourceChangeDetail.add_member(:evaluation, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationType, location_name: 'Evaluation', traits: {"smithy.api#documentation" => "<p>For static evaluations, the value of the resource attribute will change and the new value is known.\n         For dynamic evaluations, the value might change, and any new value will be determined when the plan is updated.</p>"}))
    ResourceChangeDetail.add_member(:causing_entity, Smithy::Schema::Shapes::ShapeRef.new(shape: CausingEntity, location_name: 'CausingEntity', traits: {"smithy.api#documentation" => "<p>The ID of the entity that caused the change.</p>"}))
    ResourceChangeDetail.type = Types::ResourceChangeDetail
    ResourceChangeDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceChangeDetail)
    ResourceChanges.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceChange)
    ResourceDetail.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDetailId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the resource.</p>"}))
    ResourceDetail.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDetailARN, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>"}))
    ResourceDetail.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDetailName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the resource.</p>"}))
    ResourceDetail.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDetailDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the resource.</p>"}))
    ResourceDetail.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDetailCreatedTime, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The creation time of the resource.</p>"}))
    ResourceDetail.type = Types::ResourceDetail
    ResourceDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDetail)
    ResourceInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTargetDefinition.add_member(:attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAttribute, location_name: 'Attribute', traits: {"smithy.api#documentation" => "<p>The attribute to be changed.</p>"}))
    ResourceTargetDefinition.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>If the attribute is <code>Properties</code>, the value is the name of the property. \n         Otherwise, the value is null.</p>"}))
    ResourceTargetDefinition.add_member(:requires_recreation, Smithy::Schema::Shapes::ShapeRef.new(shape: RequiresRecreation, location_name: 'RequiresRecreation', traits: {"smithy.api#documentation" => "<p>If the attribute is <code>Properties</code>, indicates whether a change to this property\n         causes the resource to be re-created.</p>"}))
    ResourceTargetDefinition.type = Types::ResourceTargetDefinition
    ScanProvisionedProductsInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    ScanProvisionedProductsInput.add_member(:access_level_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLevelFilter, location_name: 'AccessLevelFilter', traits: {"smithy.api#documentation" => "<p>The access level to use to obtain results. The default is <code>User</code>.</p>"}))
    ScanProvisionedProductsInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    ScanProvisionedProductsInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    ScanProvisionedProductsInput.type = Types::ScanProvisionedProductsInput
    ScanProvisionedProductsOutput.add_member(:provisioned_products, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductDetails, location_name: 'ProvisionedProducts', traits: {"smithy.api#documentation" => "<p>Information about the provisioned products.</p>"}))
    ScanProvisionedProductsOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    ScanProvisionedProductsOutput.type = Types::ScanProvisionedProductsOutput
    Scope.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAttribute)
    SearchProductsAsAdminInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    SearchProductsAsAdminInput.add_member(:portfolio_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioId', traits: {"smithy.api#documentation" => "<p>The portfolio identifier.</p>"}))
    SearchProductsAsAdminInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>The search filters. If no search filters are specified, the output includes all products \n         to which the administrator has access.</p>"}))
    SearchProductsAsAdminInput.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewSortBy, location_name: 'SortBy', traits: {"smithy.api#documentation" => "<p>The sort field. If no value is specified, the results are not sorted.</p>"}))
    SearchProductsAsAdminInput.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'SortOrder', traits: {"smithy.api#documentation" => "<p>The sort order. If no value is specified, the results are not sorted.</p>"}))
    SearchProductsAsAdminInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    SearchProductsAsAdminInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    SearchProductsAsAdminInput.add_member(:product_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductSource, location_name: 'ProductSource', traits: {"smithy.api#documentation" => "<p>Access level of the source of the product.</p>"}))
    SearchProductsAsAdminInput.type = Types::SearchProductsAsAdminInput
    SearchProductsAsAdminOutput.add_member(:product_view_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewDetails, location_name: 'ProductViewDetails', traits: {"smithy.api#documentation" => "<p>Information about the product views.</p>"}))
    SearchProductsAsAdminOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    SearchProductsAsAdminOutput.type = Types::SearchProductsAsAdminOutput
    SearchProductsInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    SearchProductsInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>The search filters. If no search filters are specified, the output includes\n         all products to which the caller has access.</p>"}))
    SearchProductsInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSizeMax100, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    SearchProductsInput.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewSortBy, location_name: 'SortBy', traits: {"smithy.api#documentation" => "<p>The sort field. If no value is specified, the results are not sorted.</p>"}))
    SearchProductsInput.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'SortOrder', traits: {"smithy.api#documentation" => "<p>The sort order. If no value is specified, the results are not sorted.</p>"}))
    SearchProductsInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    SearchProductsInput.type = Types::SearchProductsInput
    SearchProductsOutput.add_member(:product_view_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewSummaries, location_name: 'ProductViewSummaries', traits: {"smithy.api#documentation" => "<p>Information about the product views.</p>"}))
    SearchProductsOutput.add_member(:product_view_aggregations, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewAggregations, location_name: 'ProductViewAggregations', traits: {"smithy.api#documentation" => "<p>The product view aggregations.</p>"}))
    SearchProductsOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    SearchProductsOutput.type = Types::SearchProductsOutput
    SearchProvisionedProductsInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    SearchProvisionedProductsInput.add_member(:access_level_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLevelFilter, location_name: 'AccessLevelFilter', traits: {"smithy.api#documentation" => "<p>The access level to use to obtain results. The default is\n         <code>Account</code>.</p>"}))
    SearchProvisionedProductsInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>The search filters.</p>\n         <p>When the key is <code>SearchQuery</code>, the searchable fields are <code>arn</code>, \n         <code>createdTime</code>, <code>id</code>, <code>lastRecordId</code>,\n         <code>idempotencyToken</code>, <code>name</code>, <code>physicalId</code>, <code>productId</code>, \n         <code>provisioningArtifactId</code>, <code>type</code>, <code>status</code>,\n         <code>tags</code>, <code>userArn</code>, <code>userArnSession</code>, <code>lastProvisioningRecordId</code>, <code>lastSuccessfulProvisioningRecordId</code>, \n         <code>productName</code>, and <code>provisioningArtifactName</code>.</p>\n         <p>Example: <code>\"SearchQuery\":[\"status:AVAILABLE\"]</code>\n         </p>"}))
    SearchProvisionedProductsInput.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: SortField, location_name: 'SortBy', traits: {"smithy.api#documentation" => "<p>The sort field. If no value is specified, the results are not sorted. The valid values are <code>arn</code>, <code>id</code>, <code>name</code>, \n         and <code>lastRecordId</code>.</p>"}))
    SearchProvisionedProductsInput.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'SortOrder', traits: {"smithy.api#documentation" => "<p>The sort order. If no value is specified, the results are not sorted.</p>"}))
    SearchProvisionedProductsInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchProvisionedProductsPageSize, location_name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of items to return with this call.</p>"}))
    SearchProvisionedProductsInput.add_member(:page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'PageToken', traits: {"smithy.api#documentation" => "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"}))
    SearchProvisionedProductsInput.type = Types::SearchProvisionedProductsInput
    SearchProvisionedProductsOutput.add_member(:provisioned_products, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductAttributes, location_name: 'ProvisionedProducts', traits: {"smithy.api#documentation" => "<p>Information about the provisioned products.</p>"}))
    SearchProvisionedProductsOutput.add_member(:total_results_count, Smithy::Schema::Shapes::ShapeRef.new(shape: TotalResultsCount, location_name: 'TotalResultsCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of provisioned products found.</p>"}))
    SearchProvisionedProductsOutput.add_member(:next_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#documentation" => "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"}))
    SearchProvisionedProductsOutput.type = Types::SearchProvisionedProductsOutput
    ServiceActionAssociation.add_member(:service_action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ServiceActionId', traits: {"smithy.api#documentation" => "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>", "smithy.api#required" => {}}))
    ServiceActionAssociation.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>", "smithy.api#required" => {}}))
    ServiceActionAssociation.add_member(:provisioning_artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisioningArtifactId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>", "smithy.api#required" => {}}))
    ServiceActionAssociation.type = Types::ServiceActionAssociation
    ServiceActionAssociationErrorCode.add_member(:duplicate_resource_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DuplicateResourceException', traits: {"smithy.api#enumValue" => "DUPLICATE_RESOURCE"}))
    ServiceActionAssociationErrorCode.add_member(:internal_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalFailure', traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    ServiceActionAssociationErrorCode.add_member(:limit_exceeded_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LimitExceededException', traits: {"smithy.api#enumValue" => "LIMIT_EXCEEDED"}))
    ServiceActionAssociationErrorCode.add_member(:resource_not_found_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceNotFoundException', traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    ServiceActionAssociationErrorCode.add_member(:throttling_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ThrottlingException', traits: {"smithy.api#enumValue" => "THROTTLING"}))
    ServiceActionAssociationErrorCode.add_member(:invalid_parameter_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidParameterException', traits: {"smithy.api#enumValue" => "INVALID_PARAMETER"}))
    ServiceActionAssociations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionAssociation)
    ServiceActionDefinitionKey.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Name', traits: {"smithy.api#enumValue" => "Name"}))
    ServiceActionDefinitionKey.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Version', traits: {"smithy.api#enumValue" => "Version"}))
    ServiceActionDefinitionKey.add_member(:assume_role, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AssumeRole', traits: {"smithy.api#enumValue" => "AssumeRole"}))
    ServiceActionDefinitionKey.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Parameters', traits: {"smithy.api#enumValue" => "Parameters"}))
    ServiceActionDefinitionMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionDefinitionKey)
    ServiceActionDefinitionMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionDefinitionValue)
    ServiceActionDefinitionType.add_member(:ssm_automation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SsmAutomation', traits: {"smithy.api#enumValue" => "SSM_AUTOMATION"}))
    ServiceActionDetail.add_member(:service_action_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionSummary, location_name: 'ServiceActionSummary', traits: {"smithy.api#documentation" => "<p>Summary information about the self-service action.</p>"}))
    ServiceActionDetail.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionDefinitionMap, location_name: 'Definition', traits: {"smithy.api#documentation" => "<p>A map that defines the self-service action.</p>"}))
    ServiceActionDetail.type = Types::ServiceActionDetail
    ServiceActionSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionSummary)
    ServiceActionSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The self-service action identifier.</p>"}))
    ServiceActionSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The self-service action name.</p>"}))
    ServiceActionSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The self-service action description.</p>"}))
    ServiceActionSummary.add_member(:definition_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionDefinitionType, location_name: 'DefinitionType', traits: {"smithy.api#documentation" => "<p>The self-service action definition type. For example, <code>SSM_AUTOMATION</code>.</p>"}))
    ServiceActionSummary.type = Types::ServiceActionSummary
    ShareDetails.add_member(:successful_shares, Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessfulShares, location_name: 'SuccessfulShares', traits: {"smithy.api#documentation" => "<p>List of accounts for whom the operation succeeded.</p>"}))
    ShareDetails.add_member(:share_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareErrors, location_name: 'ShareErrors', traits: {"smithy.api#documentation" => "<p>List of errors.</p>"}))
    ShareDetails.type = Types::ShareDetails
    ShareError.add_member(:accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: Namespaces, location_name: 'Accounts', traits: {"smithy.api#documentation" => "<p>List of accounts impacted by the error.</p>"}))
    ShareError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Information about the error.</p>"}))
    ShareError.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>Error type that happened when processing the operation.</p>"}))
    ShareError.type = Types::ShareError
    ShareErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ShareError)
    ShareStatus.add_member(:not_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_STARTED', traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    ShareStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ShareStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ShareStatus.add_member(:completed_with_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED_WITH_ERRORS', traits: {"smithy.api#enumValue" => "COMPLETED_WITH_ERRORS"}))
    ShareStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    SortOrder.add_member(:ascending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASCENDING', traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESCENDING', traits: {"smithy.api#enumValue" => "DESCENDING"}))
    SourceConnection.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The only supported <code>SourceConnection</code> type is Codestar. </p>"}))
    SourceConnection.add_member(:connection_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConnectionParameters, location_name: 'ConnectionParameters', traits: {"smithy.api#documentation" => "<p>The connection details based on the connection <code>Type</code>. </p>", "smithy.api#required" => {}}))
    SourceConnection.type = Types::SourceConnection
    SourceConnectionDetail.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The only supported <code>SourceConnection</code> type is Codestar.</p>"}))
    SourceConnectionDetail.add_member(:connection_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConnectionParameters, location_name: 'ConnectionParameters', traits: {"smithy.api#documentation" => "<p>The connection details based on the connection <code>Type</code>.</p>"}))
    SourceConnectionDetail.add_member(:last_sync, Smithy::Schema::Shapes::ShapeRef.new(shape: LastSync, location_name: 'LastSync', traits: {"smithy.api#documentation" => "<p>Provides details about the product's connection sync and contains the following sub-fields. </p>\n         <ul>\n            <li>\n               <p>\n                  <code>LastSyncTime</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>LastSyncStatus</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>LastSyncStatusMessage</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>LastSuccessfulSyncTime</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>LastSuccessfulSyncProvisioningArtifactID</code>\n               </p>\n            </li>\n         </ul>"}))
    SourceConnectionDetail.type = Types::SourceConnectionDetail
    SourceConnectionParameters.add_member(:code_star, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeStarParameters, location_name: 'CodeStar', traits: {"smithy.api#documentation" => "<p>Provides <code>ConnectionType</code> details.</p>"}))
    SourceConnectionParameters.type = Types::SourceConnectionParameters
    SourceProvisioningArtifactProperties.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceProvisioningArtifactPropertiesMap)
    SourceProvisioningArtifactPropertiesMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactPropertyName)
    SourceProvisioningArtifactPropertiesMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactPropertyValue)
    SourceType.add_member(:codestar, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CODESTAR', traits: {"smithy.api#enumValue" => "CODESTAR"}))
    StackInstance.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'Account', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Web Services account that the stack instance is associated with.</p>"}))
    StackInstance.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Web Services Region that the stack instance is associated with.</p>"}))
    StackInstance.add_member(:stack_instance_status, Smithy::Schema::Shapes::ShapeRef.new(shape: StackInstanceStatus, location_name: 'StackInstanceStatus', traits: {"smithy.api#documentation" => "<p>The status of the stack instance, in terms of its synchronization with its associated stack set. </p>\n         <ul>\n            <li>\n               <p>\n                  <code>INOPERABLE</code>: A <code>DeleteStackInstances</code> operation has failed and left the stack in an unstable state. Stacks in this state are excluded from further <code>UpdateStackSet</code> operations. You might need to perform a <code>DeleteStackInstances</code> operation, with <code>RetainStacks</code> set to true, to delete the stack instance, and then delete the stack manually. </p>\n            </li>\n            <li>\n               <p>\n                  <code>OUTDATED</code>: The stack isn't currently up to date with the stack set because either            \n            the associated stack failed during a <code>CreateStackSet</code> or <code>UpdateStackSet</code> operation,           \n            or the stack was part of a <code>CreateStackSet</code> or <code>UpdateStackSet</code> operation that failed or was stopped before the stack was created or updated.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CURRENT</code>: The stack is currently up to date with the stack set.</p>\n            </li>\n         </ul>"}))
    StackInstance.type = Types::StackInstance
    StackInstanceStatus.add_member(:current, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CURRENT', traits: {"smithy.api#enumValue" => "CURRENT"}))
    StackInstanceStatus.add_member(:outdated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OUTDATED', traits: {"smithy.api#enumValue" => "OUTDATED"}))
    StackInstanceStatus.add_member(:inoperable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INOPERABLE', traits: {"smithy.api#enumValue" => "INOPERABLE"}))
    StackInstances.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StackInstance)
    StackSetAccounts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    StackSetOperationType.add_member(:create, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE', traits: {"smithy.api#enumValue" => "CREATE"}))
    StackSetOperationType.add_member(:update, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE', traits: {"smithy.api#enumValue" => "UPDATE"}))
    StackSetOperationType.add_member(:delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    StackSetRegions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Region)
    Status.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    Status.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    Status.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    SuccessfulShares.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The tag key.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value for this key.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagOptionDetail.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The TagOption key.</p>"}))
    TagOptionDetail.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The TagOption value.</p>"}))
    TagOptionDetail.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionActive, location_name: 'Active', traits: {"smithy.api#documentation" => "<p>The TagOption active state.</p>"}))
    TagOptionDetail.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The TagOption identifier.</p>"}))
    TagOptionDetail.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Owner, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account Id of the owner account that created the TagOption.</p>"}))
    TagOptionDetail.type = Types::TagOptionDetail
    TagOptionDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionDetail)
    TagOptionNotMigratedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    TagOptionNotMigratedException.type = Types::TagOptionNotMigratedException
    TagOptionSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionSummary)
    TagOptionSummary.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The TagOption key.</p>"}))
    TagOptionSummary.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionValues, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The TagOption value.</p>"}))
    TagOptionSummary.type = Types::TagOptionSummary
    TagOptionValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionValue)
    Tags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TerminateProvisionedProductInput.add_member(:provisioned_product_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductNameOrArn, location_name: 'ProvisionedProductName', traits: {"smithy.api#documentation" => "<p>The name of the provisioned product. You cannot specify both\n         <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>"}))
    TerminateProvisionedProductInput.add_member(:provisioned_product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisionedProductId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioned product. You cannot specify both\n         <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>"}))
    TerminateProvisionedProductInput.add_member(:terminate_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'TerminateToken', traits: {"smithy.api#documentation" => "<p>An idempotency token that uniquely identifies the termination request. This token is\n         only valid during the termination process. After the provisioned product is terminated,\n         subsequent requests to terminate the same provisioned product always return\n         <b>ResourceNotFound</b>.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    TerminateProvisionedProductInput.add_member(:ignore_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: IgnoreErrors, location_name: 'IgnoreErrors', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If set to true, Service Catalog stops managing the specified provisioned product even\n         if it cannot delete the underlying resources.</p>"}))
    TerminateProvisionedProductInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    TerminateProvisionedProductInput.add_member(:retain_physical_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: RetainPhysicalResources, location_name: 'RetainPhysicalResources', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>When this boolean parameter is set to true, the <code>TerminateProvisionedProduct</code> API deletes\n         the Service Catalog provisioned product. However, it does not remove the CloudFormation\n         stack, stack set, or the underlying resources of the deleted provisioned product. The\n         default value is false.</p>"}))
    TerminateProvisionedProductInput.type = Types::TerminateProvisionedProductInput
    TerminateProvisionedProductOutput.add_member(:record_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordDetail, location_name: 'RecordDetail', traits: {"smithy.api#documentation" => "<p>Information about the result of this request.</p>"}))
    TerminateProvisionedProductOutput.type = Types::TerminateProvisionedProductOutput
    UniqueTagResourceIdentifier.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueTagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>\n         A unique key \n         that's attached \n         to a resource.\n      </p>"}))
    UniqueTagResourceIdentifier.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueTagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>\n         A unique value \n         that's attached \n         to a resource.\n      </p>"}))
    UniqueTagResourceIdentifier.type = Types::UniqueTagResourceIdentifier
    UpdateConstraintInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    UpdateConstraintInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the constraint.</p>", "smithy.api#required" => {}}))
    UpdateConstraintInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The updated description of the constraint.</p>"}))
    UpdateConstraintInput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintParameters, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:</p>\n         <dl>\n            <dt>LAUNCH</dt>\n            <dd>\n               <p>You are required to specify either the <code>RoleArn</code> or the <code>LocalRoleName</code> but can't use both.</p>\n               <p>Specify the <code>RoleArn</code> property as follows:</p>\n               <p>\n                  <code>{\"RoleArn\" : \"arn:aws:iam::123456789012:role/LaunchRole\"}</code>\n               </p>\n               <p>Specify the <code>LocalRoleName</code> property as follows:</p>\n               <p>\n                  <code>{\"LocalRoleName\": \"SCBasicLaunchRole\"}</code>\n               </p>\n               <p>If you specify the <code>LocalRoleName</code> property, when an account uses the launch constraint, the IAM role with that name in the account will be used. This allows launch-role constraints to be \n                  account-agnostic so the administrator can create fewer resources per shared account.</p>\n               <note>\n                  <p>The given role name must exist in the account used to create the launch constraint and the account of the user who launches a product with this launch constraint.</p>\n               </note>\n               <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>\n               <p>You also cannot have more than one <code>LAUNCH</code> constraint on a product and portfolio.</p>\n            </dd>\n            <dt>NOTIFICATION</dt>\n            <dd>\n               <p>Specify the <code>NotificationArns</code> property as follows:</p>\n               <p>\n                  <code>{\"NotificationArns\" : [\"arn:aws:sns:us-east-1:123456789012:Topic\"]}</code>\n               </p>\n            </dd>\n            <dt>RESOURCE_UPDATE</dt>\n            <dd>\n               <p>Specify the <code>TagUpdatesOnProvisionedProduct</code> property as follows:</p>\n               <p>\n                  <code>{\"Version\":\"2.0\",\"Properties\":{\"TagUpdateOnProvisionedProduct\":\"String\"}}</code>\n               </p>\n               <p>The <code>TagUpdatesOnProvisionedProduct</code> property accepts a string value of <code>ALLOWED</code> or <code>NOT_ALLOWED</code>.</p>\n            </dd>\n            <dt>STACKSET</dt>\n            <dd>\n               <p>Specify the <code>Parameters</code> property as follows:</p>\n               <p>\n                  <code>{\"Version\": \"String\", \"Properties\": {\"AccountList\": [ \"String\" ], \"RegionList\": [ \"String\" ], \"AdminRole\": \"String\", \"ExecutionRole\": \"String\"}}</code>\n               </p>\n               <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>\n               <p>You also cannot have more than one <code>STACKSET</code> constraint on a product and portfolio.</p>\n               <p>Products with a <code>STACKSET</code> constraint will launch an CloudFormation stack set.</p>\n            </dd>\n            <dt>TEMPLATE</dt>\n            <dd>\n               <p>Specify the <code>Rules</code> property. For more information, see\n                  <a href=\"http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html\">Template Constraint Rules</a>.</p>\n            </dd>\n         </dl>"}))
    UpdateConstraintInput.type = Types::UpdateConstraintInput
    UpdateConstraintOutput.add_member(:constraint_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintDetail, location_name: 'ConstraintDetail', traits: {"smithy.api#documentation" => "<p>Information about the constraint.</p>"}))
    UpdateConstraintOutput.add_member(:constraint_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintParameters, location_name: 'ConstraintParameters', traits: {"smithy.api#documentation" => "<p>The constraint parameters.</p>"}))
    UpdateConstraintOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the current request.</p>"}))
    UpdateConstraintOutput.type = Types::UpdateConstraintOutput
    UpdatePortfolioInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    UpdatePortfolioInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The portfolio identifier.</p>", "smithy.api#required" => {}}))
    UpdatePortfolioInput.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioDisplayName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The name to use for display purposes.</p>"}))
    UpdatePortfolioInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The updated description of the portfolio.</p>"}))
    UpdatePortfolioInput.add_member(:provider_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'ProviderName', traits: {"smithy.api#documentation" => "<p>The updated name of the portfolio provider.</p>"}))
    UpdatePortfolioInput.add_member(:add_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: AddTags, location_name: 'AddTags', traits: {"smithy.api#documentation" => "<p>The tags to add.</p>"}))
    UpdatePortfolioInput.add_member(:remove_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'RemoveTags', traits: {"smithy.api#documentation" => "<p>The tags to remove.</p>"}))
    UpdatePortfolioInput.type = Types::UpdatePortfolioInput
    UpdatePortfolioOutput.add_member(:portfolio_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioDetail, location_name: 'PortfolioDetail', traits: {"smithy.api#documentation" => "<p>Information about the portfolio.</p>"}))
    UpdatePortfolioOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Information about the tags associated with the portfolio.</p>"}))
    UpdatePortfolioOutput.type = Types::UpdatePortfolioOutput
    UpdatePortfolioShareInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    UpdatePortfolioShareInput.add_member(:portfolio_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the portfolio for which the share will be updated.</p>", "smithy.api#required" => {}}))
    UpdatePortfolioShareInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account Id of the recipient account. This field is required when updating an external account to account type share.</p>"}))
    UpdatePortfolioShareInput.add_member(:organization_node, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNode, location_name: 'OrganizationNode'))
    UpdatePortfolioShareInput.add_member(:share_tag_options, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'ShareTagOptions', traits: {"smithy.api#documentation" => "<p>Enables or disables <code>TagOptions</code> sharing for the portfolio share. If this field is not provided, the current state of \n         TagOptions sharing on the portfolio share will not be modified.</p>"}))
    UpdatePortfolioShareInput.add_member(:share_principals, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'SharePrincipals', traits: {"smithy.api#documentation" => "<p>A flag to enables or disables <code>Principals</code> sharing in the portfolio. If this field is not provided,\n         the current state of the <code>Principals</code> sharing on the portfolio share will not be modified. </p>"}))
    UpdatePortfolioShareInput.type = Types::UpdatePortfolioShareInput
    UpdatePortfolioShareOutput.add_member(:portfolio_share_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PortfolioShareToken', traits: {"smithy.api#documentation" => "<p>The token that tracks the status of the <code>UpdatePortfolioShare</code> operation for external account to account or  organizational type sharing.</p>"}))
    UpdatePortfolioShareOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of <code>UpdatePortfolioShare</code> operation.\n         You can also obtain the operation status using <code>DescribePortfolioShareStatus</code> API. \n      </p>"}))
    UpdatePortfolioShareOutput.type = Types::UpdatePortfolioShareOutput
    UpdateProductInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    UpdateProductInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>", "smithy.api#required" => {}}))
    UpdateProductInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The updated product name.</p>"}))
    UpdateProductInput.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewOwner, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The updated owner of the product.</p>"}))
    UpdateProductInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewShortDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The updated description of the product.</p>"}))
    UpdateProductInput.add_member(:distributor, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewOwner, location_name: 'Distributor', traits: {"smithy.api#documentation" => "<p>The updated distributor of the product.</p>"}))
    UpdateProductInput.add_member(:support_description, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportDescription, location_name: 'SupportDescription', traits: {"smithy.api#documentation" => "<p>The updated support description for the product.</p>"}))
    UpdateProductInput.add_member(:support_email, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportEmail, location_name: 'SupportEmail', traits: {"smithy.api#documentation" => "<p>The updated support email for the product.</p>"}))
    UpdateProductInput.add_member(:support_url, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportUrl, location_name: 'SupportUrl', traits: {"smithy.api#documentation" => "<p>The updated support URL for the product.</p>"}))
    UpdateProductInput.add_member(:add_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: AddTags, location_name: 'AddTags', traits: {"smithy.api#documentation" => "<p>The tags to add to the product.</p>"}))
    UpdateProductInput.add_member(:remove_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'RemoveTags', traits: {"smithy.api#documentation" => "<p>The tags to remove from the product.</p>"}))
    UpdateProductInput.add_member(:source_connection, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConnection, location_name: 'SourceConnection', traits: {"smithy.api#documentation" => "<p>Specifies connection details for the updated product and syncs the product to the connection source\n         artifact. This automatically manages the product's artifacts based on changes to the source.\n         The <code>SourceConnection</code> parameter consists of the following sub-fields.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Type</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>ConnectionParamters</code>\n               </p>\n            </li>\n         </ul>"}))
    UpdateProductInput.type = Types::UpdateProductInput
    UpdateProductOutput.add_member(:product_view_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewDetail, location_name: 'ProductViewDetail', traits: {"smithy.api#documentation" => "<p>Information about the product view.</p>"}))
    UpdateProductOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Information about the tags associated with the product.</p>"}))
    UpdateProductOutput.type = Types::UpdateProductOutput
    UpdateProvisionedProductInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    UpdateProvisionedProductInput.add_member(:provisioned_product_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductNameOrArn, location_name: 'ProvisionedProductName', traits: {"smithy.api#documentation" => "<p>The name of the provisioned product. You cannot specify both\n         <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>"}))
    UpdateProvisionedProductInput.add_member(:provisioned_product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisionedProductId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioned product. You must provide the name or ID, but not both.</p>"}))
    UpdateProvisionedProductInput.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The identifier of the product. You must provide the name or ID, but not both.</p>"}))
    UpdateProvisionedProductInput.add_member(:product_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductViewName, location_name: 'ProductName', traits: {"smithy.api#documentation" => "<p>The name of the product. You must provide the name or ID, but not both.</p>"}))
    UpdateProvisionedProductInput.add_member(:provisioning_artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisioningArtifactId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact.</p>"}))
    UpdateProvisionedProductInput.add_member(:provisioning_artifact_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactName, location_name: 'ProvisioningArtifactName', traits: {"smithy.api#documentation" => "<p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>"}))
    UpdateProvisionedProductInput.add_member(:path_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PathId', traits: {"smithy.api#documentation" => "<p>The path identifier. This value is optional if the product \n         has a default path, and required if the product has more than one path. You must provide the name or ID, but not both.</p>"}))
    UpdateProvisionedProductInput.add_member(:path_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PortfolioDisplayName, location_name: 'PathName', traits: {"smithy.api#documentation" => "<p>The name of the path. You must provide the name or ID, but not both.</p>"}))
    UpdateProvisionedProductInput.add_member(:provisioning_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProvisioningParameters, location_name: 'ProvisioningParameters', traits: {"smithy.api#documentation" => "<p>The new parameters.</p>"}))
    UpdateProvisionedProductInput.add_member(:provisioning_preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProvisioningPreferences, location_name: 'ProvisioningPreferences', traits: {"smithy.api#documentation" => "<p>An object that contains information about the provisioning preferences for a stack set.</p>"}))
    UpdateProvisionedProductInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>One or more tags. Requires the product to have <code>RESOURCE_UPDATE</code> constraint with <code>TagUpdatesOnProvisionedProduct</code> set to <code>ALLOWED</code> to allow tag updates.</p>"}))
    UpdateProvisionedProductInput.add_member(:update_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'UpdateToken', traits: {"smithy.api#documentation" => "<p>The idempotency token that uniquely identifies the provisioning update request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateProvisionedProductInput.type = Types::UpdateProvisionedProductInput
    UpdateProvisionedProductOutput.add_member(:record_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordDetail, location_name: 'RecordDetail', traits: {"smithy.api#documentation" => "<p>Information about the result of the request.</p>"}))
    UpdateProvisionedProductOutput.type = Types::UpdateProvisionedProductOutput
    UpdateProvisionedProductPropertiesInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    UpdateProvisionedProductPropertiesInput.add_member(:provisioned_product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisionedProductId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioned product.</p>", "smithy.api#required" => {}}))
    UpdateProvisionedProductPropertiesInput.add_member(:provisioned_product_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductProperties, location_name: 'ProvisionedProductProperties', traits: {"smithy.api#documentation" => "<p>A map that contains the provisioned product properties to be updated.</p>\n         <p>The <code>LAUNCH_ROLE</code> key accepts role ARNs. This key allows an\n         administrator to call <code>UpdateProvisionedProductProperties</code> to update the launch\n         role that is associated with a provisioned product. This role is used when an end user\n         calls a provisioning operation such as <code>UpdateProvisionedProduct</code>,\n            <code>TerminateProvisionedProduct</code>, or\n            <code>ExecuteProvisionedProductServiceAction</code>. Only a role ARN is valid. A user ARN is invalid. </p>\n         <p>The <code>OWNER</code> key accepts user ARNs, IAM role ARNs, and STS \n         assumed-role ARNs. The owner is the user that has permission to see, update, terminate, and \n         execute service actions in the provisioned product.</p>\n         <p>The administrator can change the owner of a provisioned product to another IAM or STS entity within the \n         same account. Both end user owners and administrators can see ownership history of the provisioned \n         product using the <code>ListRecordHistory</code> API. The new owner can describe all past records \n         for the provisioned product using the <code>DescribeRecord</code> API. The previous owner can no \n         longer use <code>DescribeRecord</code>, but can still see the product's history from when he was \n         an owner using <code>ListRecordHistory</code>.</p>\n         <p>If a provisioned product ownership is assigned to an end user, they can see and perform any action through the API or \n         Service Catalog console such as update, terminate, and execute service actions. \n         If an end user provisions a product and the owner is updated to someone else, they will no longer be able to see or perform any actions through \n         API or the Service Catalog console on that provisioned product.</p>", "smithy.api#required" => {}}))
    UpdateProvisionedProductPropertiesInput.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>The idempotency token that uniquely identifies the provisioning product update request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateProvisionedProductPropertiesInput.type = Types::UpdateProvisionedProductPropertiesInput
    UpdateProvisionedProductPropertiesOutput.add_member(:provisioned_product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisionedProductId', traits: {"smithy.api#documentation" => "<p>The provisioned product identifier.</p>"}))
    UpdateProvisionedProductPropertiesOutput.add_member(:provisioned_product_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedProductProperties, location_name: 'ProvisionedProductProperties', traits: {"smithy.api#documentation" => "<p>A map that contains the properties updated.</p>"}))
    UpdateProvisionedProductPropertiesOutput.add_member(:record_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RecordId', traits: {"smithy.api#documentation" => "<p>The identifier of the record.</p>"}))
    UpdateProvisionedProductPropertiesOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the request.</p>"}))
    UpdateProvisionedProductPropertiesOutput.type = Types::UpdateProvisionedProductPropertiesOutput
    UpdateProvisioningArtifactInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    UpdateProvisioningArtifactInput.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product identifier.</p>", "smithy.api#required" => {}}))
    UpdateProvisioningArtifactInput.add_member(:provisioning_artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ProvisioningArtifactId', traits: {"smithy.api#documentation" => "<p>The identifier of the provisioning artifact.</p>", "smithy.api#required" => {}}))
    UpdateProvisioningArtifactInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The updated name of the provisioning artifact.</p>"}))
    UpdateProvisioningArtifactInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The updated description of the provisioning artifact.</p>"}))
    UpdateProvisioningArtifactInput.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactActive, location_name: 'Active', traits: {"smithy.api#documentation" => "<p>Indicates whether the product version is active.</p>\n         <p>Inactive provisioning artifacts are invisible to end users. End users cannot launch or update a provisioned product from an inactive provisioning artifact.</p>"}))
    UpdateProvisioningArtifactInput.add_member(:guidance, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactGuidance, location_name: 'Guidance', traits: {"smithy.api#documentation" => "<p>Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.</p>\n         <p>The <code>DEFAULT</code> value indicates that the product version is active.</p>\n         <p>The administrator can set the guidance to <code>DEPRECATED</code> to inform\n          users that the product version is deprecated. Users are able to make updates to a provisioned product \n          of a deprecated version but cannot launch new provisioned products using a deprecated version.</p>"}))
    UpdateProvisioningArtifactInput.type = Types::UpdateProvisioningArtifactInput
    UpdateProvisioningArtifactOutput.add_member(:provisioning_artifact_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactDetail, location_name: 'ProvisioningArtifactDetail', traits: {"smithy.api#documentation" => "<p>Information about the provisioning artifact.</p>"}))
    UpdateProvisioningArtifactOutput.add_member(:info, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningArtifactInfo, location_name: 'Info', traits: {"smithy.api#documentation" => "<p>The URL of the CloudFormation template in Amazon S3 or GitHub in JSON format.</p>"}))
    UpdateProvisioningArtifactOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the current request.</p>"}))
    UpdateProvisioningArtifactOutput.type = Types::UpdateProvisioningArtifactOutput
    UpdateProvisioningParameter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The parameter key.</p>"}))
    UpdateProvisioningParameter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The parameter value.</p>"}))
    UpdateProvisioningParameter.add_member(:use_previous_value, Smithy::Schema::Shapes::ShapeRef.new(shape: UsePreviousValue, location_name: 'UsePreviousValue', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If set to true, <code>Value</code> is ignored and the previous parameter value is kept.</p>"}))
    UpdateProvisioningParameter.type = Types::UpdateProvisioningParameter
    UpdateProvisioningParameters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProvisioningParameter)
    UpdateProvisioningPreferences.add_member(:stack_set_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetAccounts, location_name: 'StackSetAccounts', traits: {"smithy.api#documentation" => "<p>One or more Amazon Web Services accounts that will have access to the provisioned product.</p>\n         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>\n         <p>The Amazon Web Services accounts specified should be within the list of accounts in the <code>STACKSET</code> constraint. To get the list of accounts in the <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code> operation.</p>\n         <p>If no values are specified, the default value is all accounts from the <code>STACKSET</code> constraint.</p>"}))
    UpdateProvisioningPreferences.add_member(:stack_set_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetRegions, location_name: 'StackSetRegions', traits: {"smithy.api#documentation" => "<p>One or more Amazon Web Services Regions where the provisioned product will be available.</p>\n         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>\n         <p>The specified Regions should be within the list of Regions from the <code>STACKSET</code> constraint. To get the list of Regions in the <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code> operation.</p>\n         <p>If no values are specified, the default value is all Regions from the <code>STACKSET</code> constraint.</p>"}))
    UpdateProvisioningPreferences.add_member(:stack_set_failure_tolerance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetFailureToleranceCount, location_name: 'StackSetFailureToleranceCount', traits: {"smithy.api#documentation" => "<p>The number of accounts, per Region, for which this operation can fail before Service Catalog stops the operation in that Region. If the operation is stopped in a Region, Service Catalog doesn't attempt the operation in any subsequent Regions.</p>\n         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>\n         <p>Conditional: You must specify either <code>StackSetFailureToleranceCount</code> or <code>StackSetFailureTolerancePercentage</code>, but not both.</p>\n         <p>The default value is <code>0</code> if no value is specified.</p>"}))
    UpdateProvisioningPreferences.add_member(:stack_set_failure_tolerance_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetFailureTolerancePercentage, location_name: 'StackSetFailureTolerancePercentage', traits: {"smithy.api#documentation" => "<p>The percentage of accounts, per Region, for which this stack operation can fail before Service Catalog stops the operation in that Region. If the operation is stopped in a Region, Service Catalog doesn't attempt the operation in any subsequent Regions.</p>\n         <p>When calculating the number of accounts based on the specified percentage, Service Catalog rounds down to the next whole number.</p>\n         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>\n         <p>Conditional: You must specify either <code>StackSetFailureToleranceCount</code> or <code>StackSetFailureTolerancePercentage</code>, but not both.</p>"}))
    UpdateProvisioningPreferences.add_member(:stack_set_max_concurrency_count, Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetMaxConcurrencyCount, location_name: 'StackSetMaxConcurrencyCount', traits: {"smithy.api#documentation" => "<p>The maximum number of accounts in which to perform this operation at one time. This is dependent on the value of <code>StackSetFailureToleranceCount</code>. <code>StackSetMaxConcurrentCount</code> is at most one more than the <code>StackSetFailureToleranceCount</code>.</p>\n         <p>Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p>\n         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>\n         <p>Conditional: You must specify either <code>StackSetMaxConcurrentCount</code> or <code>StackSetMaxConcurrentPercentage</code>, but not both.</p>"}))
    UpdateProvisioningPreferences.add_member(:stack_set_max_concurrency_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetMaxConcurrencyPercentage, location_name: 'StackSetMaxConcurrencyPercentage', traits: {"smithy.api#documentation" => "<p>The maximum percentage of accounts in which to perform this operation at one time.</p>\n         <p>When calculating the number of accounts based on the specified percentage, Service Catalog rounds down to the next whole number. This is true except in cases where rounding down would result is zero. In this case, Service Catalog sets the number as <code>1</code> instead.</p>\n         <p>Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p>\n         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>\n         <p>Conditional: You must specify either <code>StackSetMaxConcurrentCount</code> or <code>StackSetMaxConcurrentPercentage</code>, but not both.</p>"}))
    UpdateProvisioningPreferences.add_member(:stack_set_operation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetOperationType, location_name: 'StackSetOperationType', traits: {"smithy.api#documentation" => "<p>Determines what action Service Catalog performs to a stack set or a stack instance represented by the provisioned product. The default value is <code>UPDATE</code> if nothing is specified.</p>\n         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>\n         <dl>\n            <dt>CREATE</dt>\n            <dd>\n               <p>Creates a new stack instance in the stack set represented by the provisioned product. In this case, only new stack instances are created based on accounts and Regions; if new ProductId or ProvisioningArtifactID are passed, they will be ignored.</p>\n            </dd>\n            <dt>UPDATE</dt>\n            <dd>\n               <p>Updates the stack set represented by the provisioned product and also its stack instances.</p>\n            </dd>\n            <dt>DELETE</dt>\n            <dd>\n               <p>Deletes a stack instance in the stack set represented by the provisioned product.</p>\n            </dd>\n         </dl>"}))
    UpdateProvisioningPreferences.type = Types::UpdateProvisioningPreferences
    UpdateServiceActionInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The self-service action identifier.</p>", "smithy.api#required" => {}}))
    UpdateServiceActionInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The self-service action name.</p>"}))
    UpdateServiceActionInput.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionDefinitionMap, location_name: 'Definition', traits: {"smithy.api#documentation" => "<p>A map that defines the self-service action.</p>"}))
    UpdateServiceActionInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The self-service action description.</p>"}))
    UpdateServiceActionInput.add_member(:accept_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: 'AcceptLanguage', traits: {"smithy.api#documentation" => "<p>The language code.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>jp</code> - Japanese</p>\n            </li>\n            <li>\n               <p>\n                  <code>zh</code> - Chinese</p>\n            </li>\n         </ul>"}))
    UpdateServiceActionInput.type = Types::UpdateServiceActionInput
    UpdateServiceActionOutput.add_member(:service_action_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceActionDetail, location_name: 'ServiceActionDetail', traits: {"smithy.api#documentation" => "<p>Detailed information about the self-service action.</p>"}))
    UpdateServiceActionOutput.type = Types::UpdateServiceActionOutput
    UpdateTagOptionInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The TagOption identifier.</p>", "smithy.api#required" => {}}))
    UpdateTagOptionInput.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The updated value.</p>"}))
    UpdateTagOptionInput.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionActive, location_name: 'Active', traits: {"smithy.api#documentation" => "<p>The updated active state.</p>"}))
    UpdateTagOptionInput.type = Types::UpdateTagOptionInput
    UpdateTagOptionOutput.add_member(:tag_option_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionDetail, location_name: 'TagOptionDetail', traits: {"smithy.api#documentation" => "<p>Information about the TagOption.</p>"}))
    UpdateTagOptionOutput.type = Types::UpdateTagOptionOutput
    UsageInstruction.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstructionType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The usage instruction type for the value.</p>"}))
    UsageInstruction.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: InstructionValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The usage instruction value for this type.</p>"}))
    UsageInstruction.type = Types::UsageInstruction
    UsageInstructions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UsageInstruction)

    AWS242ServiceCatalogService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.servicecatalog#AWS242ServiceCatalogService"
      service.name = "AWS242ServiceCatalogService"
      service.version = "2015-12-10"
      service.traits = {"aws.api#service" => {"sdkId" => "Service Catalog", "arnNamespace" => "servicecatalog", "cloudFormationName" => "ServiceCatalog", "cloudTrailEventSource" => "servicecatalog.amazonaws.com", "docId" => "servicecatalog-2015-12-10", "endpointPrefix" => "servicecatalog"}, "aws.auth#sigv4" => {"name" => "servicecatalog"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Service Catalog"}
      service.add_operation(:accept_portfolio_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#AcceptPortfolioShare"
        operation.name = "AcceptPortfolioShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptPortfolioShareInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptPortfolioShareOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:associate_budget_with_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#AssociateBudgetWithResource"
        operation.name = "AssociateBudgetWithResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateBudgetWithResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateBudgetWithResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:associate_principal_with_portfolio, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#AssociatePrincipalWithPortfolio"
        operation.name = "AssociatePrincipalWithPortfolio"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePrincipalWithPortfolioInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePrincipalWithPortfolioOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:associate_product_with_portfolio, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#AssociateProductWithPortfolio"
        operation.name = "AssociateProductWithPortfolio"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateProductWithPortfolioInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateProductWithPortfolioOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:associate_service_action_with_provisioning_artifact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#AssociateServiceActionWithProvisioningArtifact"
        operation.name = "AssociateServiceActionWithProvisioningArtifact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateServiceActionWithProvisioningArtifactInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateServiceActionWithProvisioningArtifactOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:associate_tag_option_with_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#AssociateTagOptionWithResource"
        operation.name = "AssociateTagOptionWithResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateTagOptionWithResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateTagOptionWithResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        operation.traits = {}
      end)
      service.add_operation(:batch_associate_service_action_with_provisioning_artifact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#BatchAssociateServiceActionWithProvisioningArtifact"
        operation.name = "BatchAssociateServiceActionWithProvisioningArtifact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateServiceActionWithProvisioningArtifactInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateServiceActionWithProvisioningArtifactOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.traits = {}
      end)
      service.add_operation(:batch_disassociate_service_action_from_provisioning_artifact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#BatchDisassociateServiceActionFromProvisioningArtifact"
        operation.name = "BatchDisassociateServiceActionFromProvisioningArtifact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateServiceActionFromProvisioningArtifactInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateServiceActionFromProvisioningArtifactOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.traits = {}
      end)
      service.add_operation(:copy_product, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#CopyProduct"
        operation.name = "CopyProduct"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyProductInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyProductOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_constraint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#CreateConstraint"
        operation.name = "CreateConstraint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConstraintInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConstraintOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_portfolio, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#CreatePortfolio"
        operation.name = "CreatePortfolio"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePortfolioInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePortfolioOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        operation.traits = {}
      end)
      service.add_operation(:create_portfolio_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#CreatePortfolioShare"
        operation.name = "CreatePortfolioShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePortfolioShareInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePortfolioShareOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_product, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#CreateProduct"
        operation.name = "CreateProduct"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProductInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProductOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        operation.traits = {}
      end)
      service.add_operation(:create_provisioned_product_plan, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#CreateProvisionedProductPlan"
        operation.name = "CreateProvisionedProductPlan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProvisionedProductPlanInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProvisionedProductPlanOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_provisioning_artifact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#CreateProvisioningArtifact"
        operation.name = "CreateProvisioningArtifact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProvisioningArtifactInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProvisioningArtifactOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_service_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#CreateServiceAction"
        operation.name = "CreateServiceAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceActionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceActionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_tag_option, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#CreateTagOption"
        operation.name = "CreateTagOption"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTagOptionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTagOptionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        operation.traits = {}
      end)
      service.add_operation(:delete_constraint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DeleteConstraint"
        operation.name = "DeleteConstraint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConstraintInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConstraintOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_portfolio, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DeletePortfolio"
        operation.name = "DeletePortfolio"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePortfolioInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePortfolioOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        operation.traits = {}
      end)
      service.add_operation(:delete_portfolio_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DeletePortfolioShare"
        operation.name = "DeletePortfolioShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePortfolioShareInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePortfolioShareOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_product, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DeleteProduct"
        operation.name = "DeleteProduct"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProductInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProductOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        operation.traits = {}
      end)
      service.add_operation(:delete_provisioned_product_plan, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DeleteProvisionedProductPlan"
        operation.name = "DeleteProvisionedProductPlan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProvisionedProductPlanInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProvisionedProductPlanOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_provisioning_artifact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DeleteProvisioningArtifact"
        operation.name = "DeleteProvisioningArtifact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProvisioningArtifactInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProvisioningArtifactOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_service_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DeleteServiceAction"
        operation.name = "DeleteServiceAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceActionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceActionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_tag_option, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DeleteTagOption"
        operation.name = "DeleteTagOption"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTagOptionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTagOptionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        operation.traits = {}
      end)
      service.add_operation(:describe_constraint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeConstraint"
        operation.name = "DescribeConstraint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConstraintInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConstraintOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_copy_product_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeCopyProductStatus"
        operation.name = "DescribeCopyProductStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCopyProductStatusInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCopyProductStatusOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_portfolio, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribePortfolio"
        operation.name = "DescribePortfolio"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePortfolioInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePortfolioOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_portfolio_share_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribePortfolioShareStatus"
        operation.name = "DescribePortfolioShareStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePortfolioShareStatusInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePortfolioShareStatusOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_portfolio_shares, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribePortfolioShares"
        operation.name = "DescribePortfolioShares"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePortfolioSharesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePortfolioSharesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePortfolioShares.new
      end)
      service.add_operation(:describe_product, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeProduct"
        operation.name = "DescribeProduct"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProductInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProductOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_product_as_admin, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeProductAsAdmin"
        operation.name = "DescribeProductAsAdmin"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProductAsAdminInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProductAsAdminOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_product_view, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeProductView"
        operation.name = "DescribeProductView"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProductViewInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProductViewOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_provisioned_product, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeProvisionedProduct"
        operation.name = "DescribeProvisionedProduct"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProvisionedProductInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProvisionedProductOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_provisioned_product_plan, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeProvisionedProductPlan"
        operation.name = "DescribeProvisionedProductPlan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProvisionedProductPlanInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProvisionedProductPlanOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_provisioning_artifact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeProvisioningArtifact"
        operation.name = "DescribeProvisioningArtifact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProvisioningArtifactInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProvisioningArtifactOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_provisioning_parameters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeProvisioningParameters"
        operation.name = "DescribeProvisioningParameters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProvisioningParametersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProvisioningParametersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_record, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeRecord"
        operation.name = "DescribeRecord"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecordInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecordOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_service_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeServiceAction"
        operation.name = "DescribeServiceAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceActionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceActionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_service_action_execution_parameters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeServiceActionExecutionParameters"
        operation.name = "DescribeServiceActionExecutionParameters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceActionExecutionParametersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceActionExecutionParametersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_tag_option, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeTagOption"
        operation.name = "DescribeTagOption"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTagOptionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTagOptionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        operation.traits = {}
      end)
      service.add_operation(:disable_aws_organizations_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DisableAWSOrganizationsAccess"
        operation.name = "DisableAWSOrganizationsAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableAWSOrganizationsAccessInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableAWSOrganizationsAccessOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_budget_from_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DisassociateBudgetFromResource"
        operation.name = "DisassociateBudgetFromResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateBudgetFromResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateBudgetFromResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_principal_from_portfolio, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DisassociatePrincipalFromPortfolio"
        operation.name = "DisassociatePrincipalFromPortfolio"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatePrincipalFromPortfolioInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatePrincipalFromPortfolioOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_product_from_portfolio, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DisassociateProductFromPortfolio"
        operation.name = "DisassociateProductFromPortfolio"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateProductFromPortfolioInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateProductFromPortfolioOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_service_action_from_provisioning_artifact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DisassociateServiceActionFromProvisioningArtifact"
        operation.name = "DisassociateServiceActionFromProvisioningArtifact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateServiceActionFromProvisioningArtifactInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateServiceActionFromProvisioningArtifactOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_tag_option_from_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DisassociateTagOptionFromResource"
        operation.name = "DisassociateTagOptionFromResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateTagOptionFromResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateTagOptionFromResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        operation.traits = {}
      end)
      service.add_operation(:enable_aws_organizations_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#EnableAWSOrganizationsAccess"
        operation.name = "EnableAWSOrganizationsAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAWSOrganizationsAccessInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAWSOrganizationsAccessOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:execute_provisioned_product_plan, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ExecuteProvisionedProductPlan"
        operation.name = "ExecuteProvisionedProductPlan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteProvisionedProductPlanInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteProvisionedProductPlanOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:execute_provisioned_product_service_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ExecuteProvisionedProductServiceAction"
        operation.name = "ExecuteProvisionedProductServiceAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteProvisionedProductServiceActionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteProvisionedProductServiceActionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_aws_organizations_access_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#GetAWSOrganizationsAccessStatus"
        operation.name = "GetAWSOrganizationsAccessStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAWSOrganizationsAccessStatusInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAWSOrganizationsAccessStatusOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_provisioned_product_outputs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#GetProvisionedProductOutputs"
        operation.name = "GetProvisionedProductOutputs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProvisionedProductOutputsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProvisionedProductOutputsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetProvisionedProductOutputs.new
      end)
      service.add_operation(:import_as_provisioned_product, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ImportAsProvisionedProduct"
        operation.name = "ImportAsProvisionedProduct"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportAsProvisionedProductInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportAsProvisionedProductOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_accepted_portfolio_shares, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListAcceptedPortfolioShares"
        operation.name = "ListAcceptedPortfolioShares"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAcceptedPortfolioSharesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAcceptedPortfolioSharesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAcceptedPortfolioShares.new
      end)
      service.add_operation(:list_budgets_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListBudgetsForResource"
        operation.name = "ListBudgetsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBudgetsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBudgetsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListBudgetsForResource.new
      end)
      service.add_operation(:list_constraints_for_portfolio, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListConstraintsForPortfolio"
        operation.name = "ListConstraintsForPortfolio"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConstraintsForPortfolioInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConstraintsForPortfolioOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListConstraintsForPortfolio.new
      end)
      service.add_operation(:list_launch_paths, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListLaunchPaths"
        operation.name = "ListLaunchPaths"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLaunchPathsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLaunchPathsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListLaunchPaths.new
      end)
      service.add_operation(:list_organization_portfolio_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListOrganizationPortfolioAccess"
        operation.name = "ListOrganizationPortfolioAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrganizationPortfolioAccessInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrganizationPortfolioAccessOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListOrganizationPortfolioAccess.new
      end)
      service.add_operation(:list_portfolio_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListPortfolioAccess"
        operation.name = "ListPortfolioAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPortfolioAccessInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPortfolioAccessOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPortfolioAccess.new
      end)
      service.add_operation(:list_portfolios, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListPortfolios"
        operation.name = "ListPortfolios"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPortfoliosInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPortfoliosOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPortfolios.new
      end)
      service.add_operation(:list_portfolios_for_product, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListPortfoliosForProduct"
        operation.name = "ListPortfoliosForProduct"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPortfoliosForProductInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPortfoliosForProductOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPortfoliosForProduct.new
      end)
      service.add_operation(:list_principals_for_portfolio, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListPrincipalsForPortfolio"
        operation.name = "ListPrincipalsForPortfolio"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPrincipalsForPortfolioInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPrincipalsForPortfolioOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPrincipalsForPortfolio.new
      end)
      service.add_operation(:list_provisioned_product_plans, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListProvisionedProductPlans"
        operation.name = "ListProvisionedProductPlans"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProvisionedProductPlansInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProvisionedProductPlansOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_provisioning_artifacts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListProvisioningArtifacts"
        operation.name = "ListProvisioningArtifacts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProvisioningArtifactsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProvisioningArtifactsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_provisioning_artifacts_for_service_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListProvisioningArtifactsForServiceAction"
        operation.name = "ListProvisioningArtifactsForServiceAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProvisioningArtifactsForServiceActionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProvisioningArtifactsForServiceActionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListProvisioningArtifactsForServiceAction.new
      end)
      service.add_operation(:list_record_history, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListRecordHistory"
        operation.name = "ListRecordHistory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecordHistoryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecordHistoryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.traits = {}
      end)
      service.add_operation(:list_resources_for_tag_option, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListResourcesForTagOption"
        operation.name = "ListResourcesForTagOption"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesForTagOptionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesForTagOptionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListResourcesForTagOption.new
      end)
      service.add_operation(:list_service_actions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListServiceActions"
        operation.name = "ListServiceActions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceActionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceActionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListServiceActions.new
      end)
      service.add_operation(:list_service_actions_for_provisioning_artifact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListServiceActionsForProvisioningArtifact"
        operation.name = "ListServiceActionsForProvisioningArtifact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceActionsForProvisioningArtifactInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceActionsForProvisioningArtifactOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListServiceActionsForProvisioningArtifact.new
      end)
      service.add_operation(:list_stack_instances_for_provisioned_product, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListStackInstancesForProvisionedProduct"
        operation.name = "ListStackInstancesForProvisionedProduct"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStackInstancesForProvisionedProductInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStackInstancesForProvisionedProductOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_tag_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListTagOptions"
        operation.name = "ListTagOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagOptionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagOptionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagOptions.new
      end)
      service.add_operation(:notify_provision_product_engine_workflow_result, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#NotifyProvisionProductEngineWorkflowResult"
        operation.name = "NotifyProvisionProductEngineWorkflowResult"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyProvisionProductEngineWorkflowResultInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyProvisionProductEngineWorkflowResultOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:notify_terminate_provisioned_product_engine_workflow_result, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#NotifyTerminateProvisionedProductEngineWorkflowResult"
        operation.name = "NotifyTerminateProvisionedProductEngineWorkflowResult"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyTerminateProvisionedProductEngineWorkflowResultInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyTerminateProvisionedProductEngineWorkflowResultOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:notify_update_provisioned_product_engine_workflow_result, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#NotifyUpdateProvisionedProductEngineWorkflowResult"
        operation.name = "NotifyUpdateProvisionedProductEngineWorkflowResult"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyUpdateProvisionedProductEngineWorkflowResultInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyUpdateProvisionedProductEngineWorkflowResultOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:provision_product, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ProvisionProduct"
        operation.name = "ProvisionProduct"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionProductInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionProductOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:reject_portfolio_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#RejectPortfolioShare"
        operation.name = "RejectPortfolioShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectPortfolioShareInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectPortfolioShareOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:scan_provisioned_products, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ScanProvisionedProducts"
        operation.name = "ScanProvisionedProducts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ScanProvisionedProductsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ScanProvisionedProductsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.traits = {}
      end)
      service.add_operation(:search_products, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#SearchProducts"
        operation.name = "SearchProducts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchProductsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchProductsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.traits = {}
        operation[:paginator] = Paginators::SearchProducts.new
      end)
      service.add_operation(:search_products_as_admin, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#SearchProductsAsAdmin"
        operation.name = "SearchProductsAsAdmin"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchProductsAsAdminInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchProductsAsAdminOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::SearchProductsAsAdmin.new
      end)
      service.add_operation(:search_provisioned_products, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#SearchProvisionedProducts"
        operation.name = "SearchProvisionedProducts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchProvisionedProductsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchProvisionedProductsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.traits = {}
        operation[:paginator] = Paginators::SearchProvisionedProducts.new
      end)
      service.add_operation(:terminate_provisioned_product, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#TerminateProvisionedProduct"
        operation.name = "TerminateProvisionedProduct"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateProvisionedProductInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateProvisionedProductOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_constraint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#UpdateConstraint"
        operation.name = "UpdateConstraint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConstraintInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConstraintOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_portfolio, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#UpdatePortfolio"
        operation.name = "UpdatePortfolio"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePortfolioInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePortfolioOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        operation.traits = {}
      end)
      service.add_operation(:update_portfolio_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#UpdatePortfolioShare"
        operation.name = "UpdatePortfolioShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePortfolioShareInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePortfolioShareOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_product, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#UpdateProduct"
        operation.name = "UpdateProduct"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProductInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProductOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        operation.traits = {}
      end)
      service.add_operation(:update_provisioned_product, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#UpdateProvisionedProduct"
        operation.name = "UpdateProvisionedProduct"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProvisionedProductInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProvisionedProductOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_provisioned_product_properties, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#UpdateProvisionedProductProperties"
        operation.name = "UpdateProvisionedProductProperties"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProvisionedProductPropertiesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProvisionedProductPropertiesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_provisioning_artifact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#UpdateProvisioningArtifact"
        operation.name = "UpdateProvisioningArtifact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProvisioningArtifactInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProvisioningArtifactOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_service_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#UpdateServiceAction"
        operation.name = "UpdateServiceAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceActionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceActionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_tag_option, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#UpdateTagOption"
        operation.name = "UpdateTagOption"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTagOptionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTagOptionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
