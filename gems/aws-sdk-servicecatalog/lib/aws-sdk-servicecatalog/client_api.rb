# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ServiceCatalog
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptLanguage = Shapes::StringShape.new(name: 'AcceptLanguage')
    AcceptPortfolioShareInput = Shapes::StructureShape.new(name: 'AcceptPortfolioShareInput')
    AcceptPortfolioShareOutput = Shapes::StructureShape.new(name: 'AcceptPortfolioShareOutput')
    AccessLevelFilter = Shapes::StructureShape.new(name: 'AccessLevelFilter')
    AccessLevelFilterKey = Shapes::StringShape.new(name: 'AccessLevelFilterKey')
    AccessLevelFilterValue = Shapes::StringShape.new(name: 'AccessLevelFilterValue')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIds = Shapes::ListShape.new(name: 'AccountIds')
    AddTags = Shapes::ListShape.new(name: 'AddTags')
    AllowedValue = Shapes::StringShape.new(name: 'AllowedValue')
    AllowedValues = Shapes::ListShape.new(name: 'AllowedValues')
    ApproximateCount = Shapes::IntegerShape.new(name: 'ApproximateCount')
    AssociatePrincipalWithPortfolioInput = Shapes::StructureShape.new(name: 'AssociatePrincipalWithPortfolioInput')
    AssociatePrincipalWithPortfolioOutput = Shapes::StructureShape.new(name: 'AssociatePrincipalWithPortfolioOutput')
    AssociateProductWithPortfolioInput = Shapes::StructureShape.new(name: 'AssociateProductWithPortfolioInput')
    AssociateProductWithPortfolioOutput = Shapes::StructureShape.new(name: 'AssociateProductWithPortfolioOutput')
    AssociateTagOptionWithResourceInput = Shapes::StructureShape.new(name: 'AssociateTagOptionWithResourceInput')
    AssociateTagOptionWithResourceOutput = Shapes::StructureShape.new(name: 'AssociateTagOptionWithResourceOutput')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    CausingEntity = Shapes::StringShape.new(name: 'CausingEntity')
    ChangeAction = Shapes::StringShape.new(name: 'ChangeAction')
    CloudWatchDashboard = Shapes::StructureShape.new(name: 'CloudWatchDashboard')
    CloudWatchDashboardName = Shapes::StringShape.new(name: 'CloudWatchDashboardName')
    CloudWatchDashboards = Shapes::ListShape.new(name: 'CloudWatchDashboards')
    ConstraintDescription = Shapes::StringShape.new(name: 'ConstraintDescription')
    ConstraintDetail = Shapes::StructureShape.new(name: 'ConstraintDetail')
    ConstraintDetails = Shapes::ListShape.new(name: 'ConstraintDetails')
    ConstraintParameters = Shapes::StringShape.new(name: 'ConstraintParameters')
    ConstraintSummaries = Shapes::ListShape.new(name: 'ConstraintSummaries')
    ConstraintSummary = Shapes::StructureShape.new(name: 'ConstraintSummary')
    ConstraintType = Shapes::StringShape.new(name: 'ConstraintType')
    CopyOption = Shapes::StringShape.new(name: 'CopyOption')
    CopyOptions = Shapes::ListShape.new(name: 'CopyOptions')
    CopyProductInput = Shapes::StructureShape.new(name: 'CopyProductInput')
    CopyProductOutput = Shapes::StructureShape.new(name: 'CopyProductOutput')
    CopyProductStatus = Shapes::StringShape.new(name: 'CopyProductStatus')
    CreateConstraintInput = Shapes::StructureShape.new(name: 'CreateConstraintInput')
    CreateConstraintOutput = Shapes::StructureShape.new(name: 'CreateConstraintOutput')
    CreatePortfolioInput = Shapes::StructureShape.new(name: 'CreatePortfolioInput')
    CreatePortfolioOutput = Shapes::StructureShape.new(name: 'CreatePortfolioOutput')
    CreatePortfolioShareInput = Shapes::StructureShape.new(name: 'CreatePortfolioShareInput')
    CreatePortfolioShareOutput = Shapes::StructureShape.new(name: 'CreatePortfolioShareOutput')
    CreateProductInput = Shapes::StructureShape.new(name: 'CreateProductInput')
    CreateProductOutput = Shapes::StructureShape.new(name: 'CreateProductOutput')
    CreateProvisionedProductPlanInput = Shapes::StructureShape.new(name: 'CreateProvisionedProductPlanInput')
    CreateProvisionedProductPlanOutput = Shapes::StructureShape.new(name: 'CreateProvisionedProductPlanOutput')
    CreateProvisioningArtifactInput = Shapes::StructureShape.new(name: 'CreateProvisioningArtifactInput')
    CreateProvisioningArtifactOutput = Shapes::StructureShape.new(name: 'CreateProvisioningArtifactOutput')
    CreateTagOptionInput = Shapes::StructureShape.new(name: 'CreateTagOptionInput')
    CreateTagOptionOutput = Shapes::StructureShape.new(name: 'CreateTagOptionOutput')
    CreatedTime = Shapes::TimestampShape.new(name: 'CreatedTime')
    CreationTime = Shapes::TimestampShape.new(name: 'CreationTime')
    DefaultValue = Shapes::StringShape.new(name: 'DefaultValue')
    DeleteConstraintInput = Shapes::StructureShape.new(name: 'DeleteConstraintInput')
    DeleteConstraintOutput = Shapes::StructureShape.new(name: 'DeleteConstraintOutput')
    DeletePortfolioInput = Shapes::StructureShape.new(name: 'DeletePortfolioInput')
    DeletePortfolioOutput = Shapes::StructureShape.new(name: 'DeletePortfolioOutput')
    DeletePortfolioShareInput = Shapes::StructureShape.new(name: 'DeletePortfolioShareInput')
    DeletePortfolioShareOutput = Shapes::StructureShape.new(name: 'DeletePortfolioShareOutput')
    DeleteProductInput = Shapes::StructureShape.new(name: 'DeleteProductInput')
    DeleteProductOutput = Shapes::StructureShape.new(name: 'DeleteProductOutput')
    DeleteProvisionedProductPlanInput = Shapes::StructureShape.new(name: 'DeleteProvisionedProductPlanInput')
    DeleteProvisionedProductPlanOutput = Shapes::StructureShape.new(name: 'DeleteProvisionedProductPlanOutput')
    DeleteProvisioningArtifactInput = Shapes::StructureShape.new(name: 'DeleteProvisioningArtifactInput')
    DeleteProvisioningArtifactOutput = Shapes::StructureShape.new(name: 'DeleteProvisioningArtifactOutput')
    DeleteTagOptionInput = Shapes::StructureShape.new(name: 'DeleteTagOptionInput')
    DeleteTagOptionOutput = Shapes::StructureShape.new(name: 'DeleteTagOptionOutput')
    DescribeConstraintInput = Shapes::StructureShape.new(name: 'DescribeConstraintInput')
    DescribeConstraintOutput = Shapes::StructureShape.new(name: 'DescribeConstraintOutput')
    DescribeCopyProductStatusInput = Shapes::StructureShape.new(name: 'DescribeCopyProductStatusInput')
    DescribeCopyProductStatusOutput = Shapes::StructureShape.new(name: 'DescribeCopyProductStatusOutput')
    DescribePortfolioInput = Shapes::StructureShape.new(name: 'DescribePortfolioInput')
    DescribePortfolioOutput = Shapes::StructureShape.new(name: 'DescribePortfolioOutput')
    DescribeProductAsAdminInput = Shapes::StructureShape.new(name: 'DescribeProductAsAdminInput')
    DescribeProductAsAdminOutput = Shapes::StructureShape.new(name: 'DescribeProductAsAdminOutput')
    DescribeProductInput = Shapes::StructureShape.new(name: 'DescribeProductInput')
    DescribeProductOutput = Shapes::StructureShape.new(name: 'DescribeProductOutput')
    DescribeProductViewInput = Shapes::StructureShape.new(name: 'DescribeProductViewInput')
    DescribeProductViewOutput = Shapes::StructureShape.new(name: 'DescribeProductViewOutput')
    DescribeProvisionedProductInput = Shapes::StructureShape.new(name: 'DescribeProvisionedProductInput')
    DescribeProvisionedProductOutput = Shapes::StructureShape.new(name: 'DescribeProvisionedProductOutput')
    DescribeProvisionedProductPlanInput = Shapes::StructureShape.new(name: 'DescribeProvisionedProductPlanInput')
    DescribeProvisionedProductPlanOutput = Shapes::StructureShape.new(name: 'DescribeProvisionedProductPlanOutput')
    DescribeProvisioningArtifactInput = Shapes::StructureShape.new(name: 'DescribeProvisioningArtifactInput')
    DescribeProvisioningArtifactOutput = Shapes::StructureShape.new(name: 'DescribeProvisioningArtifactOutput')
    DescribeProvisioningParametersInput = Shapes::StructureShape.new(name: 'DescribeProvisioningParametersInput')
    DescribeProvisioningParametersOutput = Shapes::StructureShape.new(name: 'DescribeProvisioningParametersOutput')
    DescribeRecordInput = Shapes::StructureShape.new(name: 'DescribeRecordInput')
    DescribeRecordOutput = Shapes::StructureShape.new(name: 'DescribeRecordOutput')
    DescribeTagOptionInput = Shapes::StructureShape.new(name: 'DescribeTagOptionInput')
    DescribeTagOptionOutput = Shapes::StructureShape.new(name: 'DescribeTagOptionOutput')
    Description = Shapes::StringShape.new(name: 'Description')
    DisassociatePrincipalFromPortfolioInput = Shapes::StructureShape.new(name: 'DisassociatePrincipalFromPortfolioInput')
    DisassociatePrincipalFromPortfolioOutput = Shapes::StructureShape.new(name: 'DisassociatePrincipalFromPortfolioOutput')
    DisassociateProductFromPortfolioInput = Shapes::StructureShape.new(name: 'DisassociateProductFromPortfolioInput')
    DisassociateProductFromPortfolioOutput = Shapes::StructureShape.new(name: 'DisassociateProductFromPortfolioOutput')
    DisassociateTagOptionFromResourceInput = Shapes::StructureShape.new(name: 'DisassociateTagOptionFromResourceInput')
    DisassociateTagOptionFromResourceOutput = Shapes::StructureShape.new(name: 'DisassociateTagOptionFromResourceOutput')
    DuplicateResourceException = Shapes::StructureShape.new(name: 'DuplicateResourceException')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorDescription = Shapes::StringShape.new(name: 'ErrorDescription')
    EvaluationType = Shapes::StringShape.new(name: 'EvaluationType')
    ExecuteProvisionedProductPlanInput = Shapes::StructureShape.new(name: 'ExecuteProvisionedProductPlanInput')
    ExecuteProvisionedProductPlanOutput = Shapes::StructureShape.new(name: 'ExecuteProvisionedProductPlanOutput')
    HasDefaultPath = Shapes::BooleanShape.new(name: 'HasDefaultPath')
    Id = Shapes::StringShape.new(name: 'Id')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    IgnoreErrors = Shapes::BooleanShape.new(name: 'IgnoreErrors')
    InstructionType = Shapes::StringShape.new(name: 'InstructionType')
    InstructionValue = Shapes::StringShape.new(name: 'InstructionValue')
    InvalidParametersException = Shapes::StructureShape.new(name: 'InvalidParametersException')
    InvalidStateException = Shapes::StructureShape.new(name: 'InvalidStateException')
    LastRequestId = Shapes::StringShape.new(name: 'LastRequestId')
    LaunchPathSummaries = Shapes::ListShape.new(name: 'LaunchPathSummaries')
    LaunchPathSummary = Shapes::StructureShape.new(name: 'LaunchPathSummary')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAcceptedPortfolioSharesInput = Shapes::StructureShape.new(name: 'ListAcceptedPortfolioSharesInput')
    ListAcceptedPortfolioSharesOutput = Shapes::StructureShape.new(name: 'ListAcceptedPortfolioSharesOutput')
    ListConstraintsForPortfolioInput = Shapes::StructureShape.new(name: 'ListConstraintsForPortfolioInput')
    ListConstraintsForPortfolioOutput = Shapes::StructureShape.new(name: 'ListConstraintsForPortfolioOutput')
    ListLaunchPathsInput = Shapes::StructureShape.new(name: 'ListLaunchPathsInput')
    ListLaunchPathsOutput = Shapes::StructureShape.new(name: 'ListLaunchPathsOutput')
    ListPortfolioAccessInput = Shapes::StructureShape.new(name: 'ListPortfolioAccessInput')
    ListPortfolioAccessOutput = Shapes::StructureShape.new(name: 'ListPortfolioAccessOutput')
    ListPortfoliosForProductInput = Shapes::StructureShape.new(name: 'ListPortfoliosForProductInput')
    ListPortfoliosForProductOutput = Shapes::StructureShape.new(name: 'ListPortfoliosForProductOutput')
    ListPortfoliosInput = Shapes::StructureShape.new(name: 'ListPortfoliosInput')
    ListPortfoliosOutput = Shapes::StructureShape.new(name: 'ListPortfoliosOutput')
    ListPrincipalsForPortfolioInput = Shapes::StructureShape.new(name: 'ListPrincipalsForPortfolioInput')
    ListPrincipalsForPortfolioOutput = Shapes::StructureShape.new(name: 'ListPrincipalsForPortfolioOutput')
    ListProvisionedProductPlansInput = Shapes::StructureShape.new(name: 'ListProvisionedProductPlansInput')
    ListProvisionedProductPlansOutput = Shapes::StructureShape.new(name: 'ListProvisionedProductPlansOutput')
    ListProvisioningArtifactsInput = Shapes::StructureShape.new(name: 'ListProvisioningArtifactsInput')
    ListProvisioningArtifactsOutput = Shapes::StructureShape.new(name: 'ListProvisioningArtifactsOutput')
    ListRecordHistoryInput = Shapes::StructureShape.new(name: 'ListRecordHistoryInput')
    ListRecordHistoryOutput = Shapes::StructureShape.new(name: 'ListRecordHistoryOutput')
    ListRecordHistorySearchFilter = Shapes::StructureShape.new(name: 'ListRecordHistorySearchFilter')
    ListResourcesForTagOptionInput = Shapes::StructureShape.new(name: 'ListResourcesForTagOptionInput')
    ListResourcesForTagOptionOutput = Shapes::StructureShape.new(name: 'ListResourcesForTagOptionOutput')
    ListTagOptionsFilters = Shapes::StructureShape.new(name: 'ListTagOptionsFilters')
    ListTagOptionsInput = Shapes::StructureShape.new(name: 'ListTagOptionsInput')
    ListTagOptionsOutput = Shapes::StructureShape.new(name: 'ListTagOptionsOutput')
    LogicalResourceId = Shapes::StringShape.new(name: 'LogicalResourceId')
    NoEcho = Shapes::BooleanShape.new(name: 'NoEcho')
    NotificationArn = Shapes::StringShape.new(name: 'NotificationArn')
    NotificationArns = Shapes::ListShape.new(name: 'NotificationArns')
    OutputKey = Shapes::StringShape.new(name: 'OutputKey')
    OutputValue = Shapes::StringShape.new(name: 'OutputValue')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    PageToken = Shapes::StringShape.new(name: 'PageToken')
    ParameterConstraints = Shapes::StructureShape.new(name: 'ParameterConstraints')
    ParameterKey = Shapes::StringShape.new(name: 'ParameterKey')
    ParameterType = Shapes::StringShape.new(name: 'ParameterType')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    PhysicalId = Shapes::StringShape.new(name: 'PhysicalId')
    PhysicalResourceId = Shapes::StringShape.new(name: 'PhysicalResourceId')
    PlanResourceType = Shapes::StringShape.new(name: 'PlanResourceType')
    PortfolioDescription = Shapes::StringShape.new(name: 'PortfolioDescription')
    PortfolioDetail = Shapes::StructureShape.new(name: 'PortfolioDetail')
    PortfolioDetails = Shapes::ListShape.new(name: 'PortfolioDetails')
    PortfolioDisplayName = Shapes::StringShape.new(name: 'PortfolioDisplayName')
    PortfolioName = Shapes::StringShape.new(name: 'PortfolioName')
    PortfolioShareType = Shapes::StringShape.new(name: 'PortfolioShareType')
    Principal = Shapes::StructureShape.new(name: 'Principal')
    PrincipalARN = Shapes::StringShape.new(name: 'PrincipalARN')
    PrincipalType = Shapes::StringShape.new(name: 'PrincipalType')
    Principals = Shapes::ListShape.new(name: 'Principals')
    ProductArn = Shapes::StringShape.new(name: 'ProductArn')
    ProductSource = Shapes::StringShape.new(name: 'ProductSource')
    ProductType = Shapes::StringShape.new(name: 'ProductType')
    ProductViewAggregationType = Shapes::StringShape.new(name: 'ProductViewAggregationType')
    ProductViewAggregationValue = Shapes::StructureShape.new(name: 'ProductViewAggregationValue')
    ProductViewAggregationValues = Shapes::ListShape.new(name: 'ProductViewAggregationValues')
    ProductViewAggregations = Shapes::MapShape.new(name: 'ProductViewAggregations')
    ProductViewDetail = Shapes::StructureShape.new(name: 'ProductViewDetail')
    ProductViewDetails = Shapes::ListShape.new(name: 'ProductViewDetails')
    ProductViewDistributor = Shapes::StringShape.new(name: 'ProductViewDistributor')
    ProductViewFilterBy = Shapes::StringShape.new(name: 'ProductViewFilterBy')
    ProductViewFilterValue = Shapes::StringShape.new(name: 'ProductViewFilterValue')
    ProductViewFilterValues = Shapes::ListShape.new(name: 'ProductViewFilterValues')
    ProductViewFilters = Shapes::MapShape.new(name: 'ProductViewFilters')
    ProductViewName = Shapes::StringShape.new(name: 'ProductViewName')
    ProductViewOwner = Shapes::StringShape.new(name: 'ProductViewOwner')
    ProductViewShortDescription = Shapes::StringShape.new(name: 'ProductViewShortDescription')
    ProductViewSortBy = Shapes::StringShape.new(name: 'ProductViewSortBy')
    ProductViewSummaries = Shapes::ListShape.new(name: 'ProductViewSummaries')
    ProductViewSummary = Shapes::StructureShape.new(name: 'ProductViewSummary')
    PropertyName = Shapes::StringShape.new(name: 'PropertyName')
    ProviderName = Shapes::StringShape.new(name: 'ProviderName')
    ProvisionProductInput = Shapes::StructureShape.new(name: 'ProvisionProductInput')
    ProvisionProductOutput = Shapes::StructureShape.new(name: 'ProvisionProductOutput')
    ProvisionedProductAttribute = Shapes::StructureShape.new(name: 'ProvisionedProductAttribute')
    ProvisionedProductAttributes = Shapes::ListShape.new(name: 'ProvisionedProductAttributes')
    ProvisionedProductDetail = Shapes::StructureShape.new(name: 'ProvisionedProductDetail')
    ProvisionedProductDetails = Shapes::ListShape.new(name: 'ProvisionedProductDetails')
    ProvisionedProductFilters = Shapes::MapShape.new(name: 'ProvisionedProductFilters')
    ProvisionedProductId = Shapes::StringShape.new(name: 'ProvisionedProductId')
    ProvisionedProductName = Shapes::StringShape.new(name: 'ProvisionedProductName')
    ProvisionedProductNameOrArn = Shapes::StringShape.new(name: 'ProvisionedProductNameOrArn')
    ProvisionedProductPlanDetails = Shapes::StructureShape.new(name: 'ProvisionedProductPlanDetails')
    ProvisionedProductPlanName = Shapes::StringShape.new(name: 'ProvisionedProductPlanName')
    ProvisionedProductPlanStatus = Shapes::StringShape.new(name: 'ProvisionedProductPlanStatus')
    ProvisionedProductPlanSummary = Shapes::StructureShape.new(name: 'ProvisionedProductPlanSummary')
    ProvisionedProductPlanType = Shapes::StringShape.new(name: 'ProvisionedProductPlanType')
    ProvisionedProductPlans = Shapes::ListShape.new(name: 'ProvisionedProductPlans')
    ProvisionedProductStatus = Shapes::StringShape.new(name: 'ProvisionedProductStatus')
    ProvisionedProductStatusMessage = Shapes::StringShape.new(name: 'ProvisionedProductStatusMessage')
    ProvisionedProductType = Shapes::StringShape.new(name: 'ProvisionedProductType')
    ProvisionedProductViewFilterBy = Shapes::StringShape.new(name: 'ProvisionedProductViewFilterBy')
    ProvisionedProductViewFilterValue = Shapes::StringShape.new(name: 'ProvisionedProductViewFilterValue')
    ProvisionedProductViewFilterValues = Shapes::ListShape.new(name: 'ProvisionedProductViewFilterValues')
    ProvisioningArtifact = Shapes::StructureShape.new(name: 'ProvisioningArtifact')
    ProvisioningArtifactActive = Shapes::BooleanShape.new(name: 'ProvisioningArtifactActive')
    ProvisioningArtifactCreatedTime = Shapes::TimestampShape.new(name: 'ProvisioningArtifactCreatedTime')
    ProvisioningArtifactDescription = Shapes::StringShape.new(name: 'ProvisioningArtifactDescription')
    ProvisioningArtifactDetail = Shapes::StructureShape.new(name: 'ProvisioningArtifactDetail')
    ProvisioningArtifactDetails = Shapes::ListShape.new(name: 'ProvisioningArtifactDetails')
    ProvisioningArtifactInfo = Shapes::MapShape.new(name: 'ProvisioningArtifactInfo')
    ProvisioningArtifactInfoKey = Shapes::StringShape.new(name: 'ProvisioningArtifactInfoKey')
    ProvisioningArtifactInfoValue = Shapes::StringShape.new(name: 'ProvisioningArtifactInfoValue')
    ProvisioningArtifactName = Shapes::StringShape.new(name: 'ProvisioningArtifactName')
    ProvisioningArtifactParameter = Shapes::StructureShape.new(name: 'ProvisioningArtifactParameter')
    ProvisioningArtifactParameters = Shapes::ListShape.new(name: 'ProvisioningArtifactParameters')
    ProvisioningArtifactProperties = Shapes::StructureShape.new(name: 'ProvisioningArtifactProperties')
    ProvisioningArtifactPropertyName = Shapes::StringShape.new(name: 'ProvisioningArtifactPropertyName')
    ProvisioningArtifactPropertyValue = Shapes::StringShape.new(name: 'ProvisioningArtifactPropertyValue')
    ProvisioningArtifactSummaries = Shapes::ListShape.new(name: 'ProvisioningArtifactSummaries')
    ProvisioningArtifactSummary = Shapes::StructureShape.new(name: 'ProvisioningArtifactSummary')
    ProvisioningArtifactType = Shapes::StringShape.new(name: 'ProvisioningArtifactType')
    ProvisioningArtifacts = Shapes::ListShape.new(name: 'ProvisioningArtifacts')
    ProvisioningParameter = Shapes::StructureShape.new(name: 'ProvisioningParameter')
    ProvisioningParameters = Shapes::ListShape.new(name: 'ProvisioningParameters')
    RecordDetail = Shapes::StructureShape.new(name: 'RecordDetail')
    RecordDetails = Shapes::ListShape.new(name: 'RecordDetails')
    RecordError = Shapes::StructureShape.new(name: 'RecordError')
    RecordErrors = Shapes::ListShape.new(name: 'RecordErrors')
    RecordOutput = Shapes::StructureShape.new(name: 'RecordOutput')
    RecordOutputs = Shapes::ListShape.new(name: 'RecordOutputs')
    RecordStatus = Shapes::StringShape.new(name: 'RecordStatus')
    RecordTag = Shapes::StructureShape.new(name: 'RecordTag')
    RecordTagKey = Shapes::StringShape.new(name: 'RecordTagKey')
    RecordTagValue = Shapes::StringShape.new(name: 'RecordTagValue')
    RecordTags = Shapes::ListShape.new(name: 'RecordTags')
    RecordType = Shapes::StringShape.new(name: 'RecordType')
    RejectPortfolioShareInput = Shapes::StructureShape.new(name: 'RejectPortfolioShareInput')
    RejectPortfolioShareOutput = Shapes::StructureShape.new(name: 'RejectPortfolioShareOutput')
    Replacement = Shapes::StringShape.new(name: 'Replacement')
    RequiresRecreation = Shapes::StringShape.new(name: 'RequiresRecreation')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceAttribute = Shapes::StringShape.new(name: 'ResourceAttribute')
    ResourceChange = Shapes::StructureShape.new(name: 'ResourceChange')
    ResourceChangeDetail = Shapes::StructureShape.new(name: 'ResourceChangeDetail')
    ResourceChangeDetails = Shapes::ListShape.new(name: 'ResourceChangeDetails')
    ResourceChanges = Shapes::ListShape.new(name: 'ResourceChanges')
    ResourceDetail = Shapes::StructureShape.new(name: 'ResourceDetail')
    ResourceDetailARN = Shapes::StringShape.new(name: 'ResourceDetailARN')
    ResourceDetailCreatedTime = Shapes::TimestampShape.new(name: 'ResourceDetailCreatedTime')
    ResourceDetailDescription = Shapes::StringShape.new(name: 'ResourceDetailDescription')
    ResourceDetailId = Shapes::StringShape.new(name: 'ResourceDetailId')
    ResourceDetailName = Shapes::StringShape.new(name: 'ResourceDetailName')
    ResourceDetails = Shapes::ListShape.new(name: 'ResourceDetails')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTargetDefinition = Shapes::StructureShape.new(name: 'ResourceTargetDefinition')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ScanProvisionedProductsInput = Shapes::StructureShape.new(name: 'ScanProvisionedProductsInput')
    ScanProvisionedProductsOutput = Shapes::StructureShape.new(name: 'ScanProvisionedProductsOutput')
    Scope = Shapes::ListShape.new(name: 'Scope')
    SearchFilterKey = Shapes::StringShape.new(name: 'SearchFilterKey')
    SearchFilterValue = Shapes::StringShape.new(name: 'SearchFilterValue')
    SearchProductsAsAdminInput = Shapes::StructureShape.new(name: 'SearchProductsAsAdminInput')
    SearchProductsAsAdminOutput = Shapes::StructureShape.new(name: 'SearchProductsAsAdminOutput')
    SearchProductsInput = Shapes::StructureShape.new(name: 'SearchProductsInput')
    SearchProductsOutput = Shapes::StructureShape.new(name: 'SearchProductsOutput')
    SearchProvisionedProductsInput = Shapes::StructureShape.new(name: 'SearchProvisionedProductsInput')
    SearchProvisionedProductsOutput = Shapes::StructureShape.new(name: 'SearchProvisionedProductsOutput')
    SearchProvisionedProductsPageSize = Shapes::IntegerShape.new(name: 'SearchProvisionedProductsPageSize')
    SortField = Shapes::StringShape.new(name: 'SortField')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    SourceProvisioningArtifactProperties = Shapes::ListShape.new(name: 'SourceProvisioningArtifactProperties')
    SourceProvisioningArtifactPropertiesMap = Shapes::MapShape.new(name: 'SourceProvisioningArtifactPropertiesMap')
    Status = Shapes::StringShape.new(name: 'Status')
    StatusDetail = Shapes::StringShape.new(name: 'StatusDetail')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    SupportDescription = Shapes::StringShape.new(name: 'SupportDescription')
    SupportEmail = Shapes::StringShape.new(name: 'SupportEmail')
    SupportUrl = Shapes::StringShape.new(name: 'SupportUrl')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagOptionActive = Shapes::BooleanShape.new(name: 'TagOptionActive')
    TagOptionDetail = Shapes::StructureShape.new(name: 'TagOptionDetail')
    TagOptionDetails = Shapes::ListShape.new(name: 'TagOptionDetails')
    TagOptionId = Shapes::StringShape.new(name: 'TagOptionId')
    TagOptionKey = Shapes::StringShape.new(name: 'TagOptionKey')
    TagOptionNotMigratedException = Shapes::StructureShape.new(name: 'TagOptionNotMigratedException')
    TagOptionSummaries = Shapes::ListShape.new(name: 'TagOptionSummaries')
    TagOptionSummary = Shapes::StructureShape.new(name: 'TagOptionSummary')
    TagOptionValue = Shapes::StringShape.new(name: 'TagOptionValue')
    TagOptionValues = Shapes::ListShape.new(name: 'TagOptionValues')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TerminateProvisionedProductInput = Shapes::StructureShape.new(name: 'TerminateProvisionedProductInput')
    TerminateProvisionedProductOutput = Shapes::StructureShape.new(name: 'TerminateProvisionedProductOutput')
    TotalResultsCount = Shapes::IntegerShape.new(name: 'TotalResultsCount')
    UpdateConstraintInput = Shapes::StructureShape.new(name: 'UpdateConstraintInput')
    UpdateConstraintOutput = Shapes::StructureShape.new(name: 'UpdateConstraintOutput')
    UpdatePortfolioInput = Shapes::StructureShape.new(name: 'UpdatePortfolioInput')
    UpdatePortfolioOutput = Shapes::StructureShape.new(name: 'UpdatePortfolioOutput')
    UpdateProductInput = Shapes::StructureShape.new(name: 'UpdateProductInput')
    UpdateProductOutput = Shapes::StructureShape.new(name: 'UpdateProductOutput')
    UpdateProvisionedProductInput = Shapes::StructureShape.new(name: 'UpdateProvisionedProductInput')
    UpdateProvisionedProductOutput = Shapes::StructureShape.new(name: 'UpdateProvisionedProductOutput')
    UpdateProvisioningArtifactInput = Shapes::StructureShape.new(name: 'UpdateProvisioningArtifactInput')
    UpdateProvisioningArtifactOutput = Shapes::StructureShape.new(name: 'UpdateProvisioningArtifactOutput')
    UpdateProvisioningParameter = Shapes::StructureShape.new(name: 'UpdateProvisioningParameter')
    UpdateProvisioningParameters = Shapes::ListShape.new(name: 'UpdateProvisioningParameters')
    UpdateTagOptionInput = Shapes::StructureShape.new(name: 'UpdateTagOptionInput')
    UpdateTagOptionOutput = Shapes::StructureShape.new(name: 'UpdateTagOptionOutput')
    UpdatedTime = Shapes::TimestampShape.new(name: 'UpdatedTime')
    UsageInstruction = Shapes::StructureShape.new(name: 'UsageInstruction')
    UsageInstructions = Shapes::ListShape.new(name: 'UsageInstructions')
    UsePreviousValue = Shapes::BooleanShape.new(name: 'UsePreviousValue')
    UserArn = Shapes::StringShape.new(name: 'UserArn')
    UserArnSession = Shapes::StringShape.new(name: 'UserArnSession')
    Verbose = Shapes::BooleanShape.new(name: 'Verbose')

    AcceptPortfolioShareInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    AcceptPortfolioShareInput.add_member(:portfolio_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "PortfolioId"))
    AcceptPortfolioShareInput.struct_class = Types::AcceptPortfolioShareInput

    AcceptPortfolioShareOutput.struct_class = Types::AcceptPortfolioShareOutput

    AccessLevelFilter.add_member(:key, Shapes::ShapeRef.new(shape: AccessLevelFilterKey, location_name: "Key"))
    AccessLevelFilter.add_member(:value, Shapes::ShapeRef.new(shape: AccessLevelFilterValue, location_name: "Value"))
    AccessLevelFilter.struct_class = Types::AccessLevelFilter

    AccountIds.member = Shapes::ShapeRef.new(shape: AccountId)

    AddTags.member = Shapes::ShapeRef.new(shape: Tag)

    AllowedValues.member = Shapes::ShapeRef.new(shape: AllowedValue)

    AssociatePrincipalWithPortfolioInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    AssociatePrincipalWithPortfolioInput.add_member(:portfolio_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "PortfolioId"))
    AssociatePrincipalWithPortfolioInput.add_member(:principal_arn, Shapes::ShapeRef.new(shape: PrincipalARN, required: true, location_name: "PrincipalARN"))
    AssociatePrincipalWithPortfolioInput.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "PrincipalType"))
    AssociatePrincipalWithPortfolioInput.struct_class = Types::AssociatePrincipalWithPortfolioInput

    AssociatePrincipalWithPortfolioOutput.struct_class = Types::AssociatePrincipalWithPortfolioOutput

    AssociateProductWithPortfolioInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    AssociateProductWithPortfolioInput.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProductId"))
    AssociateProductWithPortfolioInput.add_member(:portfolio_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "PortfolioId"))
    AssociateProductWithPortfolioInput.add_member(:source_portfolio_id, Shapes::ShapeRef.new(shape: Id, location_name: "SourcePortfolioId"))
    AssociateProductWithPortfolioInput.struct_class = Types::AssociateProductWithPortfolioInput

    AssociateProductWithPortfolioOutput.struct_class = Types::AssociateProductWithPortfolioOutput

    AssociateTagOptionWithResourceInput.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    AssociateTagOptionWithResourceInput.add_member(:tag_option_id, Shapes::ShapeRef.new(shape: TagOptionId, required: true, location_name: "TagOptionId"))
    AssociateTagOptionWithResourceInput.struct_class = Types::AssociateTagOptionWithResourceInput

    AssociateTagOptionWithResourceOutput.struct_class = Types::AssociateTagOptionWithResourceOutput

    CloudWatchDashboard.add_member(:name, Shapes::ShapeRef.new(shape: CloudWatchDashboardName, location_name: "Name"))
    CloudWatchDashboard.struct_class = Types::CloudWatchDashboard

    CloudWatchDashboards.member = Shapes::ShapeRef.new(shape: CloudWatchDashboard)

    ConstraintDetail.add_member(:constraint_id, Shapes::ShapeRef.new(shape: Id, location_name: "ConstraintId"))
    ConstraintDetail.add_member(:type, Shapes::ShapeRef.new(shape: ConstraintType, location_name: "Type"))
    ConstraintDetail.add_member(:description, Shapes::ShapeRef.new(shape: ConstraintDescription, location_name: "Description"))
    ConstraintDetail.add_member(:owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "Owner"))
    ConstraintDetail.struct_class = Types::ConstraintDetail

    ConstraintDetails.member = Shapes::ShapeRef.new(shape: ConstraintDetail)

    ConstraintSummaries.member = Shapes::ShapeRef.new(shape: ConstraintSummary)

    ConstraintSummary.add_member(:type, Shapes::ShapeRef.new(shape: ConstraintType, location_name: "Type"))
    ConstraintSummary.add_member(:description, Shapes::ShapeRef.new(shape: ConstraintDescription, location_name: "Description"))
    ConstraintSummary.struct_class = Types::ConstraintSummary

    CopyOptions.member = Shapes::ShapeRef.new(shape: CopyOption)

    CopyProductInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    CopyProductInput.add_member(:source_product_arn, Shapes::ShapeRef.new(shape: ProductArn, required: true, location_name: "SourceProductArn"))
    CopyProductInput.add_member(:target_product_id, Shapes::ShapeRef.new(shape: Id, location_name: "TargetProductId"))
    CopyProductInput.add_member(:target_product_name, Shapes::ShapeRef.new(shape: ProductViewName, location_name: "TargetProductName"))
    CopyProductInput.add_member(:source_provisioning_artifact_identifiers, Shapes::ShapeRef.new(shape: SourceProvisioningArtifactProperties, location_name: "SourceProvisioningArtifactIdentifiers"))
    CopyProductInput.add_member(:copy_options, Shapes::ShapeRef.new(shape: CopyOptions, location_name: "CopyOptions"))
    CopyProductInput.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "IdempotencyToken", metadata: {"idempotencyToken"=>true}))
    CopyProductInput.struct_class = Types::CopyProductInput

    CopyProductOutput.add_member(:copy_product_token, Shapes::ShapeRef.new(shape: Id, location_name: "CopyProductToken"))
    CopyProductOutput.struct_class = Types::CopyProductOutput

    CreateConstraintInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    CreateConstraintInput.add_member(:portfolio_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "PortfolioId"))
    CreateConstraintInput.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProductId"))
    CreateConstraintInput.add_member(:parameters, Shapes::ShapeRef.new(shape: ConstraintParameters, required: true, location_name: "Parameters"))
    CreateConstraintInput.add_member(:type, Shapes::ShapeRef.new(shape: ConstraintType, required: true, location_name: "Type"))
    CreateConstraintInput.add_member(:description, Shapes::ShapeRef.new(shape: ConstraintDescription, location_name: "Description"))
    CreateConstraintInput.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "IdempotencyToken", metadata: {"idempotencyToken"=>true}))
    CreateConstraintInput.struct_class = Types::CreateConstraintInput

    CreateConstraintOutput.add_member(:constraint_detail, Shapes::ShapeRef.new(shape: ConstraintDetail, location_name: "ConstraintDetail"))
    CreateConstraintOutput.add_member(:constraint_parameters, Shapes::ShapeRef.new(shape: ConstraintParameters, location_name: "ConstraintParameters"))
    CreateConstraintOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    CreateConstraintOutput.struct_class = Types::CreateConstraintOutput

    CreatePortfolioInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    CreatePortfolioInput.add_member(:display_name, Shapes::ShapeRef.new(shape: PortfolioDisplayName, required: true, location_name: "DisplayName"))
    CreatePortfolioInput.add_member(:description, Shapes::ShapeRef.new(shape: PortfolioDescription, location_name: "Description"))
    CreatePortfolioInput.add_member(:provider_name, Shapes::ShapeRef.new(shape: ProviderName, required: true, location_name: "ProviderName"))
    CreatePortfolioInput.add_member(:tags, Shapes::ShapeRef.new(shape: AddTags, location_name: "Tags"))
    CreatePortfolioInput.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "IdempotencyToken", metadata: {"idempotencyToken"=>true}))
    CreatePortfolioInput.struct_class = Types::CreatePortfolioInput

    CreatePortfolioOutput.add_member(:portfolio_detail, Shapes::ShapeRef.new(shape: PortfolioDetail, location_name: "PortfolioDetail"))
    CreatePortfolioOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreatePortfolioOutput.struct_class = Types::CreatePortfolioOutput

    CreatePortfolioShareInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    CreatePortfolioShareInput.add_member(:portfolio_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "PortfolioId"))
    CreatePortfolioShareInput.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    CreatePortfolioShareInput.struct_class = Types::CreatePortfolioShareInput

    CreatePortfolioShareOutput.struct_class = Types::CreatePortfolioShareOutput

    CreateProductInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    CreateProductInput.add_member(:name, Shapes::ShapeRef.new(shape: ProductViewName, required: true, location_name: "Name"))
    CreateProductInput.add_member(:owner, Shapes::ShapeRef.new(shape: ProductViewOwner, required: true, location_name: "Owner"))
    CreateProductInput.add_member(:description, Shapes::ShapeRef.new(shape: ProductViewShortDescription, location_name: "Description"))
    CreateProductInput.add_member(:distributor, Shapes::ShapeRef.new(shape: ProductViewOwner, location_name: "Distributor"))
    CreateProductInput.add_member(:support_description, Shapes::ShapeRef.new(shape: SupportDescription, location_name: "SupportDescription"))
    CreateProductInput.add_member(:support_email, Shapes::ShapeRef.new(shape: SupportEmail, location_name: "SupportEmail"))
    CreateProductInput.add_member(:support_url, Shapes::ShapeRef.new(shape: SupportUrl, location_name: "SupportUrl"))
    CreateProductInput.add_member(:product_type, Shapes::ShapeRef.new(shape: ProductType, required: true, location_name: "ProductType"))
    CreateProductInput.add_member(:tags, Shapes::ShapeRef.new(shape: AddTags, location_name: "Tags"))
    CreateProductInput.add_member(:provisioning_artifact_parameters, Shapes::ShapeRef.new(shape: ProvisioningArtifactProperties, required: true, location_name: "ProvisioningArtifactParameters"))
    CreateProductInput.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "IdempotencyToken", metadata: {"idempotencyToken"=>true}))
    CreateProductInput.struct_class = Types::CreateProductInput

    CreateProductOutput.add_member(:product_view_detail, Shapes::ShapeRef.new(shape: ProductViewDetail, location_name: "ProductViewDetail"))
    CreateProductOutput.add_member(:provisioning_artifact_detail, Shapes::ShapeRef.new(shape: ProvisioningArtifactDetail, location_name: "ProvisioningArtifactDetail"))
    CreateProductOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateProductOutput.struct_class = Types::CreateProductOutput

    CreateProvisionedProductPlanInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    CreateProvisionedProductPlanInput.add_member(:plan_name, Shapes::ShapeRef.new(shape: ProvisionedProductPlanName, required: true, location_name: "PlanName"))
    CreateProvisionedProductPlanInput.add_member(:plan_type, Shapes::ShapeRef.new(shape: ProvisionedProductPlanType, required: true, location_name: "PlanType"))
    CreateProvisionedProductPlanInput.add_member(:notification_arns, Shapes::ShapeRef.new(shape: NotificationArns, location_name: "NotificationArns"))
    CreateProvisionedProductPlanInput.add_member(:path_id, Shapes::ShapeRef.new(shape: Id, location_name: "PathId"))
    CreateProvisionedProductPlanInput.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProductId"))
    CreateProvisionedProductPlanInput.add_member(:provisioned_product_name, Shapes::ShapeRef.new(shape: ProvisionedProductName, required: true, location_name: "ProvisionedProductName"))
    CreateProvisionedProductPlanInput.add_member(:provisioning_artifact_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProvisioningArtifactId"))
    CreateProvisionedProductPlanInput.add_member(:provisioning_parameters, Shapes::ShapeRef.new(shape: UpdateProvisioningParameters, location_name: "ProvisioningParameters"))
    CreateProvisionedProductPlanInput.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "IdempotencyToken", metadata: {"idempotencyToken"=>true}))
    CreateProvisionedProductPlanInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateProvisionedProductPlanInput.struct_class = Types::CreateProvisionedProductPlanInput

    CreateProvisionedProductPlanOutput.add_member(:plan_name, Shapes::ShapeRef.new(shape: ProvisionedProductPlanName, location_name: "PlanName"))
    CreateProvisionedProductPlanOutput.add_member(:plan_id, Shapes::ShapeRef.new(shape: Id, location_name: "PlanId"))
    CreateProvisionedProductPlanOutput.add_member(:provision_product_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProvisionProductId"))
    CreateProvisionedProductPlanOutput.add_member(:provisioned_product_name, Shapes::ShapeRef.new(shape: ProvisionedProductName, location_name: "ProvisionedProductName"))
    CreateProvisionedProductPlanOutput.add_member(:provisioning_artifact_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProvisioningArtifactId"))
    CreateProvisionedProductPlanOutput.struct_class = Types::CreateProvisionedProductPlanOutput

    CreateProvisioningArtifactInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    CreateProvisioningArtifactInput.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProductId"))
    CreateProvisioningArtifactInput.add_member(:parameters, Shapes::ShapeRef.new(shape: ProvisioningArtifactProperties, required: true, location_name: "Parameters"))
    CreateProvisioningArtifactInput.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "IdempotencyToken", metadata: {"idempotencyToken"=>true}))
    CreateProvisioningArtifactInput.struct_class = Types::CreateProvisioningArtifactInput

    CreateProvisioningArtifactOutput.add_member(:provisioning_artifact_detail, Shapes::ShapeRef.new(shape: ProvisioningArtifactDetail, location_name: "ProvisioningArtifactDetail"))
    CreateProvisioningArtifactOutput.add_member(:info, Shapes::ShapeRef.new(shape: ProvisioningArtifactInfo, location_name: "Info"))
    CreateProvisioningArtifactOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    CreateProvisioningArtifactOutput.struct_class = Types::CreateProvisioningArtifactOutput

    CreateTagOptionInput.add_member(:key, Shapes::ShapeRef.new(shape: TagOptionKey, required: true, location_name: "Key"))
    CreateTagOptionInput.add_member(:value, Shapes::ShapeRef.new(shape: TagOptionValue, required: true, location_name: "Value"))
    CreateTagOptionInput.struct_class = Types::CreateTagOptionInput

    CreateTagOptionOutput.add_member(:tag_option_detail, Shapes::ShapeRef.new(shape: TagOptionDetail, location_name: "TagOptionDetail"))
    CreateTagOptionOutput.struct_class = Types::CreateTagOptionOutput

    DeleteConstraintInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    DeleteConstraintInput.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    DeleteConstraintInput.struct_class = Types::DeleteConstraintInput

    DeleteConstraintOutput.struct_class = Types::DeleteConstraintOutput

    DeletePortfolioInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    DeletePortfolioInput.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    DeletePortfolioInput.struct_class = Types::DeletePortfolioInput

    DeletePortfolioOutput.struct_class = Types::DeletePortfolioOutput

    DeletePortfolioShareInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    DeletePortfolioShareInput.add_member(:portfolio_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "PortfolioId"))
    DeletePortfolioShareInput.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    DeletePortfolioShareInput.struct_class = Types::DeletePortfolioShareInput

    DeletePortfolioShareOutput.struct_class = Types::DeletePortfolioShareOutput

    DeleteProductInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    DeleteProductInput.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    DeleteProductInput.struct_class = Types::DeleteProductInput

    DeleteProductOutput.struct_class = Types::DeleteProductOutput

    DeleteProvisionedProductPlanInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    DeleteProvisionedProductPlanInput.add_member(:plan_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "PlanId"))
    DeleteProvisionedProductPlanInput.add_member(:ignore_errors, Shapes::ShapeRef.new(shape: IgnoreErrors, location_name: "IgnoreErrors"))
    DeleteProvisionedProductPlanInput.struct_class = Types::DeleteProvisionedProductPlanInput

    DeleteProvisionedProductPlanOutput.struct_class = Types::DeleteProvisionedProductPlanOutput

    DeleteProvisioningArtifactInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    DeleteProvisioningArtifactInput.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProductId"))
    DeleteProvisioningArtifactInput.add_member(:provisioning_artifact_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProvisioningArtifactId"))
    DeleteProvisioningArtifactInput.struct_class = Types::DeleteProvisioningArtifactInput

    DeleteProvisioningArtifactOutput.struct_class = Types::DeleteProvisioningArtifactOutput

    DeleteTagOptionInput.add_member(:id, Shapes::ShapeRef.new(shape: TagOptionId, required: true, location_name: "Id"))
    DeleteTagOptionInput.struct_class = Types::DeleteTagOptionInput

    DeleteTagOptionOutput.struct_class = Types::DeleteTagOptionOutput

    DescribeConstraintInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    DescribeConstraintInput.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    DescribeConstraintInput.struct_class = Types::DescribeConstraintInput

    DescribeConstraintOutput.add_member(:constraint_detail, Shapes::ShapeRef.new(shape: ConstraintDetail, location_name: "ConstraintDetail"))
    DescribeConstraintOutput.add_member(:constraint_parameters, Shapes::ShapeRef.new(shape: ConstraintParameters, location_name: "ConstraintParameters"))
    DescribeConstraintOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    DescribeConstraintOutput.struct_class = Types::DescribeConstraintOutput

    DescribeCopyProductStatusInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    DescribeCopyProductStatusInput.add_member(:copy_product_token, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "CopyProductToken"))
    DescribeCopyProductStatusInput.struct_class = Types::DescribeCopyProductStatusInput

    DescribeCopyProductStatusOutput.add_member(:copy_product_status, Shapes::ShapeRef.new(shape: CopyProductStatus, location_name: "CopyProductStatus"))
    DescribeCopyProductStatusOutput.add_member(:target_product_id, Shapes::ShapeRef.new(shape: Id, location_name: "TargetProductId"))
    DescribeCopyProductStatusOutput.add_member(:status_detail, Shapes::ShapeRef.new(shape: StatusDetail, location_name: "StatusDetail"))
    DescribeCopyProductStatusOutput.struct_class = Types::DescribeCopyProductStatusOutput

    DescribePortfolioInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    DescribePortfolioInput.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    DescribePortfolioInput.struct_class = Types::DescribePortfolioInput

    DescribePortfolioOutput.add_member(:portfolio_detail, Shapes::ShapeRef.new(shape: PortfolioDetail, location_name: "PortfolioDetail"))
    DescribePortfolioOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    DescribePortfolioOutput.add_member(:tag_options, Shapes::ShapeRef.new(shape: TagOptionDetails, location_name: "TagOptions"))
    DescribePortfolioOutput.struct_class = Types::DescribePortfolioOutput

    DescribeProductAsAdminInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    DescribeProductAsAdminInput.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    DescribeProductAsAdminInput.struct_class = Types::DescribeProductAsAdminInput

    DescribeProductAsAdminOutput.add_member(:product_view_detail, Shapes::ShapeRef.new(shape: ProductViewDetail, location_name: "ProductViewDetail"))
    DescribeProductAsAdminOutput.add_member(:provisioning_artifact_summaries, Shapes::ShapeRef.new(shape: ProvisioningArtifactSummaries, location_name: "ProvisioningArtifactSummaries"))
    DescribeProductAsAdminOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    DescribeProductAsAdminOutput.add_member(:tag_options, Shapes::ShapeRef.new(shape: TagOptionDetails, location_name: "TagOptions"))
    DescribeProductAsAdminOutput.struct_class = Types::DescribeProductAsAdminOutput

    DescribeProductInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    DescribeProductInput.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    DescribeProductInput.struct_class = Types::DescribeProductInput

    DescribeProductOutput.add_member(:product_view_summary, Shapes::ShapeRef.new(shape: ProductViewSummary, location_name: "ProductViewSummary"))
    DescribeProductOutput.add_member(:provisioning_artifacts, Shapes::ShapeRef.new(shape: ProvisioningArtifacts, location_name: "ProvisioningArtifacts"))
    DescribeProductOutput.struct_class = Types::DescribeProductOutput

    DescribeProductViewInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    DescribeProductViewInput.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    DescribeProductViewInput.struct_class = Types::DescribeProductViewInput

    DescribeProductViewOutput.add_member(:product_view_summary, Shapes::ShapeRef.new(shape: ProductViewSummary, location_name: "ProductViewSummary"))
    DescribeProductViewOutput.add_member(:provisioning_artifacts, Shapes::ShapeRef.new(shape: ProvisioningArtifacts, location_name: "ProvisioningArtifacts"))
    DescribeProductViewOutput.struct_class = Types::DescribeProductViewOutput

    DescribeProvisionedProductInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    DescribeProvisionedProductInput.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    DescribeProvisionedProductInput.struct_class = Types::DescribeProvisionedProductInput

    DescribeProvisionedProductOutput.add_member(:provisioned_product_detail, Shapes::ShapeRef.new(shape: ProvisionedProductDetail, location_name: "ProvisionedProductDetail"))
    DescribeProvisionedProductOutput.add_member(:cloud_watch_dashboards, Shapes::ShapeRef.new(shape: CloudWatchDashboards, location_name: "CloudWatchDashboards"))
    DescribeProvisionedProductOutput.struct_class = Types::DescribeProvisionedProductOutput

    DescribeProvisionedProductPlanInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    DescribeProvisionedProductPlanInput.add_member(:plan_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "PlanId"))
    DescribeProvisionedProductPlanInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeProvisionedProductPlanInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
    DescribeProvisionedProductPlanInput.struct_class = Types::DescribeProvisionedProductPlanInput

    DescribeProvisionedProductPlanOutput.add_member(:provisioned_product_plan_details, Shapes::ShapeRef.new(shape: ProvisionedProductPlanDetails, location_name: "ProvisionedProductPlanDetails"))
    DescribeProvisionedProductPlanOutput.add_member(:resource_changes, Shapes::ShapeRef.new(shape: ResourceChanges, location_name: "ResourceChanges"))
    DescribeProvisionedProductPlanOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
    DescribeProvisionedProductPlanOutput.struct_class = Types::DescribeProvisionedProductPlanOutput

    DescribeProvisioningArtifactInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    DescribeProvisioningArtifactInput.add_member(:provisioning_artifact_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProvisioningArtifactId"))
    DescribeProvisioningArtifactInput.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProductId"))
    DescribeProvisioningArtifactInput.add_member(:verbose, Shapes::ShapeRef.new(shape: Verbose, location_name: "Verbose"))
    DescribeProvisioningArtifactInput.struct_class = Types::DescribeProvisioningArtifactInput

    DescribeProvisioningArtifactOutput.add_member(:provisioning_artifact_detail, Shapes::ShapeRef.new(shape: ProvisioningArtifactDetail, location_name: "ProvisioningArtifactDetail"))
    DescribeProvisioningArtifactOutput.add_member(:info, Shapes::ShapeRef.new(shape: ProvisioningArtifactInfo, location_name: "Info"))
    DescribeProvisioningArtifactOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    DescribeProvisioningArtifactOutput.struct_class = Types::DescribeProvisioningArtifactOutput

    DescribeProvisioningParametersInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    DescribeProvisioningParametersInput.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProductId"))
    DescribeProvisioningParametersInput.add_member(:provisioning_artifact_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProvisioningArtifactId"))
    DescribeProvisioningParametersInput.add_member(:path_id, Shapes::ShapeRef.new(shape: Id, location_name: "PathId"))
    DescribeProvisioningParametersInput.struct_class = Types::DescribeProvisioningParametersInput

    DescribeProvisioningParametersOutput.add_member(:provisioning_artifact_parameters, Shapes::ShapeRef.new(shape: ProvisioningArtifactParameters, location_name: "ProvisioningArtifactParameters"))
    DescribeProvisioningParametersOutput.add_member(:constraint_summaries, Shapes::ShapeRef.new(shape: ConstraintSummaries, location_name: "ConstraintSummaries"))
    DescribeProvisioningParametersOutput.add_member(:usage_instructions, Shapes::ShapeRef.new(shape: UsageInstructions, location_name: "UsageInstructions"))
    DescribeProvisioningParametersOutput.add_member(:tag_options, Shapes::ShapeRef.new(shape: TagOptionSummaries, location_name: "TagOptions"))
    DescribeProvisioningParametersOutput.struct_class = Types::DescribeProvisioningParametersOutput

    DescribeRecordInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    DescribeRecordInput.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    DescribeRecordInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
    DescribeRecordInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeRecordInput.struct_class = Types::DescribeRecordInput

    DescribeRecordOutput.add_member(:record_detail, Shapes::ShapeRef.new(shape: RecordDetail, location_name: "RecordDetail"))
    DescribeRecordOutput.add_member(:record_outputs, Shapes::ShapeRef.new(shape: RecordOutputs, location_name: "RecordOutputs"))
    DescribeRecordOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
    DescribeRecordOutput.struct_class = Types::DescribeRecordOutput

    DescribeTagOptionInput.add_member(:id, Shapes::ShapeRef.new(shape: TagOptionId, required: true, location_name: "Id"))
    DescribeTagOptionInput.struct_class = Types::DescribeTagOptionInput

    DescribeTagOptionOutput.add_member(:tag_option_detail, Shapes::ShapeRef.new(shape: TagOptionDetail, location_name: "TagOptionDetail"))
    DescribeTagOptionOutput.struct_class = Types::DescribeTagOptionOutput

    DisassociatePrincipalFromPortfolioInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    DisassociatePrincipalFromPortfolioInput.add_member(:portfolio_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "PortfolioId"))
    DisassociatePrincipalFromPortfolioInput.add_member(:principal_arn, Shapes::ShapeRef.new(shape: PrincipalARN, required: true, location_name: "PrincipalARN"))
    DisassociatePrincipalFromPortfolioInput.struct_class = Types::DisassociatePrincipalFromPortfolioInput

    DisassociatePrincipalFromPortfolioOutput.struct_class = Types::DisassociatePrincipalFromPortfolioOutput

    DisassociateProductFromPortfolioInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    DisassociateProductFromPortfolioInput.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProductId"))
    DisassociateProductFromPortfolioInput.add_member(:portfolio_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "PortfolioId"))
    DisassociateProductFromPortfolioInput.struct_class = Types::DisassociateProductFromPortfolioInput

    DisassociateProductFromPortfolioOutput.struct_class = Types::DisassociateProductFromPortfolioOutput

    DisassociateTagOptionFromResourceInput.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    DisassociateTagOptionFromResourceInput.add_member(:tag_option_id, Shapes::ShapeRef.new(shape: TagOptionId, required: true, location_name: "TagOptionId"))
    DisassociateTagOptionFromResourceInput.struct_class = Types::DisassociateTagOptionFromResourceInput

    DisassociateTagOptionFromResourceOutput.struct_class = Types::DisassociateTagOptionFromResourceOutput

    ExecuteProvisionedProductPlanInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    ExecuteProvisionedProductPlanInput.add_member(:plan_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "PlanId"))
    ExecuteProvisionedProductPlanInput.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "IdempotencyToken", metadata: {"idempotencyToken"=>true}))
    ExecuteProvisionedProductPlanInput.struct_class = Types::ExecuteProvisionedProductPlanInput

    ExecuteProvisionedProductPlanOutput.add_member(:record_detail, Shapes::ShapeRef.new(shape: RecordDetail, location_name: "RecordDetail"))
    ExecuteProvisionedProductPlanOutput.struct_class = Types::ExecuteProvisionedProductPlanOutput

    LaunchPathSummaries.member = Shapes::ShapeRef.new(shape: LaunchPathSummary)

    LaunchPathSummary.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    LaunchPathSummary.add_member(:constraint_summaries, Shapes::ShapeRef.new(shape: ConstraintSummaries, location_name: "ConstraintSummaries"))
    LaunchPathSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    LaunchPathSummary.add_member(:name, Shapes::ShapeRef.new(shape: PortfolioName, location_name: "Name"))
    LaunchPathSummary.struct_class = Types::LaunchPathSummary

    ListAcceptedPortfolioSharesInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    ListAcceptedPortfolioSharesInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
    ListAcceptedPortfolioSharesInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ListAcceptedPortfolioSharesInput.add_member(:portfolio_share_type, Shapes::ShapeRef.new(shape: PortfolioShareType, location_name: "PortfolioShareType"))
    ListAcceptedPortfolioSharesInput.struct_class = Types::ListAcceptedPortfolioSharesInput

    ListAcceptedPortfolioSharesOutput.add_member(:portfolio_details, Shapes::ShapeRef.new(shape: PortfolioDetails, location_name: "PortfolioDetails"))
    ListAcceptedPortfolioSharesOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
    ListAcceptedPortfolioSharesOutput.struct_class = Types::ListAcceptedPortfolioSharesOutput

    ListConstraintsForPortfolioInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    ListConstraintsForPortfolioInput.add_member(:portfolio_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "PortfolioId"))
    ListConstraintsForPortfolioInput.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProductId"))
    ListConstraintsForPortfolioInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ListConstraintsForPortfolioInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
    ListConstraintsForPortfolioInput.struct_class = Types::ListConstraintsForPortfolioInput

    ListConstraintsForPortfolioOutput.add_member(:constraint_details, Shapes::ShapeRef.new(shape: ConstraintDetails, location_name: "ConstraintDetails"))
    ListConstraintsForPortfolioOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
    ListConstraintsForPortfolioOutput.struct_class = Types::ListConstraintsForPortfolioOutput

    ListLaunchPathsInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    ListLaunchPathsInput.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProductId"))
    ListLaunchPathsInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ListLaunchPathsInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
    ListLaunchPathsInput.struct_class = Types::ListLaunchPathsInput

    ListLaunchPathsOutput.add_member(:launch_path_summaries, Shapes::ShapeRef.new(shape: LaunchPathSummaries, location_name: "LaunchPathSummaries"))
    ListLaunchPathsOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
    ListLaunchPathsOutput.struct_class = Types::ListLaunchPathsOutput

    ListPortfolioAccessInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    ListPortfolioAccessInput.add_member(:portfolio_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "PortfolioId"))
    ListPortfolioAccessInput.struct_class = Types::ListPortfolioAccessInput

    ListPortfolioAccessOutput.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, location_name: "AccountIds"))
    ListPortfolioAccessOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
    ListPortfolioAccessOutput.struct_class = Types::ListPortfolioAccessOutput

    ListPortfoliosForProductInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    ListPortfoliosForProductInput.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProductId"))
    ListPortfoliosForProductInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
    ListPortfoliosForProductInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ListPortfoliosForProductInput.struct_class = Types::ListPortfoliosForProductInput

    ListPortfoliosForProductOutput.add_member(:portfolio_details, Shapes::ShapeRef.new(shape: PortfolioDetails, location_name: "PortfolioDetails"))
    ListPortfoliosForProductOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
    ListPortfoliosForProductOutput.struct_class = Types::ListPortfoliosForProductOutput

    ListPortfoliosInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    ListPortfoliosInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
    ListPortfoliosInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ListPortfoliosInput.struct_class = Types::ListPortfoliosInput

    ListPortfoliosOutput.add_member(:portfolio_details, Shapes::ShapeRef.new(shape: PortfolioDetails, location_name: "PortfolioDetails"))
    ListPortfoliosOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
    ListPortfoliosOutput.struct_class = Types::ListPortfoliosOutput

    ListPrincipalsForPortfolioInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    ListPrincipalsForPortfolioInput.add_member(:portfolio_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "PortfolioId"))
    ListPrincipalsForPortfolioInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ListPrincipalsForPortfolioInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
    ListPrincipalsForPortfolioInput.struct_class = Types::ListPrincipalsForPortfolioInput

    ListPrincipalsForPortfolioOutput.add_member(:principals, Shapes::ShapeRef.new(shape: Principals, location_name: "Principals"))
    ListPrincipalsForPortfolioOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
    ListPrincipalsForPortfolioOutput.struct_class = Types::ListPrincipalsForPortfolioOutput

    ListProvisionedProductPlansInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    ListProvisionedProductPlansInput.add_member(:provision_product_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProvisionProductId"))
    ListProvisionedProductPlansInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ListProvisionedProductPlansInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
    ListProvisionedProductPlansInput.add_member(:access_level_filter, Shapes::ShapeRef.new(shape: AccessLevelFilter, location_name: "AccessLevelFilter"))
    ListProvisionedProductPlansInput.struct_class = Types::ListProvisionedProductPlansInput

    ListProvisionedProductPlansOutput.add_member(:provisioned_product_plans, Shapes::ShapeRef.new(shape: ProvisionedProductPlans, location_name: "ProvisionedProductPlans"))
    ListProvisionedProductPlansOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
    ListProvisionedProductPlansOutput.struct_class = Types::ListProvisionedProductPlansOutput

    ListProvisioningArtifactsInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    ListProvisioningArtifactsInput.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProductId"))
    ListProvisioningArtifactsInput.struct_class = Types::ListProvisioningArtifactsInput

    ListProvisioningArtifactsOutput.add_member(:provisioning_artifact_details, Shapes::ShapeRef.new(shape: ProvisioningArtifactDetails, location_name: "ProvisioningArtifactDetails"))
    ListProvisioningArtifactsOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
    ListProvisioningArtifactsOutput.struct_class = Types::ListProvisioningArtifactsOutput

    ListRecordHistoryInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    ListRecordHistoryInput.add_member(:access_level_filter, Shapes::ShapeRef.new(shape: AccessLevelFilter, location_name: "AccessLevelFilter"))
    ListRecordHistoryInput.add_member(:search_filter, Shapes::ShapeRef.new(shape: ListRecordHistorySearchFilter, location_name: "SearchFilter"))
    ListRecordHistoryInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ListRecordHistoryInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
    ListRecordHistoryInput.struct_class = Types::ListRecordHistoryInput

    ListRecordHistoryOutput.add_member(:record_details, Shapes::ShapeRef.new(shape: RecordDetails, location_name: "RecordDetails"))
    ListRecordHistoryOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
    ListRecordHistoryOutput.struct_class = Types::ListRecordHistoryOutput

    ListRecordHistorySearchFilter.add_member(:key, Shapes::ShapeRef.new(shape: SearchFilterKey, location_name: "Key"))
    ListRecordHistorySearchFilter.add_member(:value, Shapes::ShapeRef.new(shape: SearchFilterValue, location_name: "Value"))
    ListRecordHistorySearchFilter.struct_class = Types::ListRecordHistorySearchFilter

    ListResourcesForTagOptionInput.add_member(:tag_option_id, Shapes::ShapeRef.new(shape: TagOptionId, required: true, location_name: "TagOptionId"))
    ListResourcesForTagOptionInput.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ListResourcesForTagOptionInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ListResourcesForTagOptionInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
    ListResourcesForTagOptionInput.struct_class = Types::ListResourcesForTagOptionInput

    ListResourcesForTagOptionOutput.add_member(:resource_details, Shapes::ShapeRef.new(shape: ResourceDetails, location_name: "ResourceDetails"))
    ListResourcesForTagOptionOutput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
    ListResourcesForTagOptionOutput.struct_class = Types::ListResourcesForTagOptionOutput

    ListTagOptionsFilters.add_member(:key, Shapes::ShapeRef.new(shape: TagOptionKey, location_name: "Key"))
    ListTagOptionsFilters.add_member(:value, Shapes::ShapeRef.new(shape: TagOptionValue, location_name: "Value"))
    ListTagOptionsFilters.add_member(:active, Shapes::ShapeRef.new(shape: TagOptionActive, location_name: "Active"))
    ListTagOptionsFilters.struct_class = Types::ListTagOptionsFilters

    ListTagOptionsInput.add_member(:filters, Shapes::ShapeRef.new(shape: ListTagOptionsFilters, location_name: "Filters"))
    ListTagOptionsInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ListTagOptionsInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
    ListTagOptionsInput.struct_class = Types::ListTagOptionsInput

    ListTagOptionsOutput.add_member(:tag_option_details, Shapes::ShapeRef.new(shape: TagOptionDetails, location_name: "TagOptionDetails"))
    ListTagOptionsOutput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
    ListTagOptionsOutput.struct_class = Types::ListTagOptionsOutput

    NotificationArns.member = Shapes::ShapeRef.new(shape: NotificationArn)

    ParameterConstraints.add_member(:allowed_values, Shapes::ShapeRef.new(shape: AllowedValues, location_name: "AllowedValues"))
    ParameterConstraints.struct_class = Types::ParameterConstraints

    PortfolioDetail.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    PortfolioDetail.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ARN"))
    PortfolioDetail.add_member(:display_name, Shapes::ShapeRef.new(shape: PortfolioDisplayName, location_name: "DisplayName"))
    PortfolioDetail.add_member(:description, Shapes::ShapeRef.new(shape: PortfolioDescription, location_name: "Description"))
    PortfolioDetail.add_member(:created_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreatedTime"))
    PortfolioDetail.add_member(:provider_name, Shapes::ShapeRef.new(shape: ProviderName, location_name: "ProviderName"))
    PortfolioDetail.struct_class = Types::PortfolioDetail

    PortfolioDetails.member = Shapes::ShapeRef.new(shape: PortfolioDetail)

    Principal.add_member(:principal_arn, Shapes::ShapeRef.new(shape: PrincipalARN, location_name: "PrincipalARN"))
    Principal.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, location_name: "PrincipalType"))
    Principal.struct_class = Types::Principal

    Principals.member = Shapes::ShapeRef.new(shape: Principal)

    ProductViewAggregationValue.add_member(:value, Shapes::ShapeRef.new(shape: AttributeValue, location_name: "Value"))
    ProductViewAggregationValue.add_member(:approximate_count, Shapes::ShapeRef.new(shape: ApproximateCount, location_name: "ApproximateCount"))
    ProductViewAggregationValue.struct_class = Types::ProductViewAggregationValue

    ProductViewAggregationValues.member = Shapes::ShapeRef.new(shape: ProductViewAggregationValue)

    ProductViewAggregations.key = Shapes::ShapeRef.new(shape: ProductViewAggregationType)
    ProductViewAggregations.value = Shapes::ShapeRef.new(shape: ProductViewAggregationValues)

    ProductViewDetail.add_member(:product_view_summary, Shapes::ShapeRef.new(shape: ProductViewSummary, location_name: "ProductViewSummary"))
    ProductViewDetail.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    ProductViewDetail.add_member(:product_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ProductARN"))
    ProductViewDetail.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTime, location_name: "CreatedTime"))
    ProductViewDetail.struct_class = Types::ProductViewDetail

    ProductViewDetails.member = Shapes::ShapeRef.new(shape: ProductViewDetail)

    ProductViewFilterValues.member = Shapes::ShapeRef.new(shape: ProductViewFilterValue)

    ProductViewFilters.key = Shapes::ShapeRef.new(shape: ProductViewFilterBy)
    ProductViewFilters.value = Shapes::ShapeRef.new(shape: ProductViewFilterValues)

    ProductViewSummaries.member = Shapes::ShapeRef.new(shape: ProductViewSummary)

    ProductViewSummary.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    ProductViewSummary.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProductId"))
    ProductViewSummary.add_member(:name, Shapes::ShapeRef.new(shape: ProductViewName, location_name: "Name"))
    ProductViewSummary.add_member(:owner, Shapes::ShapeRef.new(shape: ProductViewOwner, location_name: "Owner"))
    ProductViewSummary.add_member(:short_description, Shapes::ShapeRef.new(shape: ProductViewShortDescription, location_name: "ShortDescription"))
    ProductViewSummary.add_member(:type, Shapes::ShapeRef.new(shape: ProductType, location_name: "Type"))
    ProductViewSummary.add_member(:distributor, Shapes::ShapeRef.new(shape: ProductViewDistributor, location_name: "Distributor"))
    ProductViewSummary.add_member(:has_default_path, Shapes::ShapeRef.new(shape: HasDefaultPath, location_name: "HasDefaultPath"))
    ProductViewSummary.add_member(:support_email, Shapes::ShapeRef.new(shape: SupportEmail, location_name: "SupportEmail"))
    ProductViewSummary.add_member(:support_description, Shapes::ShapeRef.new(shape: SupportDescription, location_name: "SupportDescription"))
    ProductViewSummary.add_member(:support_url, Shapes::ShapeRef.new(shape: SupportUrl, location_name: "SupportUrl"))
    ProductViewSummary.struct_class = Types::ProductViewSummary

    ProvisionProductInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    ProvisionProductInput.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProductId"))
    ProvisionProductInput.add_member(:provisioning_artifact_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProvisioningArtifactId"))
    ProvisionProductInput.add_member(:path_id, Shapes::ShapeRef.new(shape: Id, location_name: "PathId"))
    ProvisionProductInput.add_member(:provisioned_product_name, Shapes::ShapeRef.new(shape: ProvisionedProductName, required: true, location_name: "ProvisionedProductName"))
    ProvisionProductInput.add_member(:provisioning_parameters, Shapes::ShapeRef.new(shape: ProvisioningParameters, location_name: "ProvisioningParameters"))
    ProvisionProductInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ProvisionProductInput.add_member(:notification_arns, Shapes::ShapeRef.new(shape: NotificationArns, location_name: "NotificationArns"))
    ProvisionProductInput.add_member(:provision_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "ProvisionToken", metadata: {"idempotencyToken"=>true}))
    ProvisionProductInput.struct_class = Types::ProvisionProductInput

    ProvisionProductOutput.add_member(:record_detail, Shapes::ShapeRef.new(shape: RecordDetail, location_name: "RecordDetail"))
    ProvisionProductOutput.struct_class = Types::ProvisionProductOutput

    ProvisionedProductAttribute.add_member(:name, Shapes::ShapeRef.new(shape: ProvisionedProductNameOrArn, location_name: "Name"))
    ProvisionedProductAttribute.add_member(:arn, Shapes::ShapeRef.new(shape: ProvisionedProductNameOrArn, location_name: "Arn"))
    ProvisionedProductAttribute.add_member(:type, Shapes::ShapeRef.new(shape: ProvisionedProductType, location_name: "Type"))
    ProvisionedProductAttribute.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    ProvisionedProductAttribute.add_member(:status, Shapes::ShapeRef.new(shape: ProvisionedProductStatus, location_name: "Status"))
    ProvisionedProductAttribute.add_member(:status_message, Shapes::ShapeRef.new(shape: ProvisionedProductStatusMessage, location_name: "StatusMessage"))
    ProvisionedProductAttribute.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTime, location_name: "CreatedTime"))
    ProvisionedProductAttribute.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "IdempotencyToken"))
    ProvisionedProductAttribute.add_member(:last_record_id, Shapes::ShapeRef.new(shape: Id, location_name: "LastRecordId"))
    ProvisionedProductAttribute.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ProvisionedProductAttribute.add_member(:physical_id, Shapes::ShapeRef.new(shape: PhysicalId, location_name: "PhysicalId"))
    ProvisionedProductAttribute.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProductId"))
    ProvisionedProductAttribute.add_member(:provisioning_artifact_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProvisioningArtifactId"))
    ProvisionedProductAttribute.add_member(:user_arn, Shapes::ShapeRef.new(shape: UserArn, location_name: "UserArn"))
    ProvisionedProductAttribute.add_member(:user_arn_session, Shapes::ShapeRef.new(shape: UserArnSession, location_name: "UserArnSession"))
    ProvisionedProductAttribute.struct_class = Types::ProvisionedProductAttribute

    ProvisionedProductAttributes.member = Shapes::ShapeRef.new(shape: ProvisionedProductAttribute)

    ProvisionedProductDetail.add_member(:name, Shapes::ShapeRef.new(shape: ProvisionedProductNameOrArn, location_name: "Name"))
    ProvisionedProductDetail.add_member(:arn, Shapes::ShapeRef.new(shape: ProvisionedProductNameOrArn, location_name: "Arn"))
    ProvisionedProductDetail.add_member(:type, Shapes::ShapeRef.new(shape: ProvisionedProductType, location_name: "Type"))
    ProvisionedProductDetail.add_member(:id, Shapes::ShapeRef.new(shape: ProvisionedProductId, location_name: "Id"))
    ProvisionedProductDetail.add_member(:status, Shapes::ShapeRef.new(shape: ProvisionedProductStatus, location_name: "Status"))
    ProvisionedProductDetail.add_member(:status_message, Shapes::ShapeRef.new(shape: ProvisionedProductStatusMessage, location_name: "StatusMessage"))
    ProvisionedProductDetail.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTime, location_name: "CreatedTime"))
    ProvisionedProductDetail.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "IdempotencyToken"))
    ProvisionedProductDetail.add_member(:last_record_id, Shapes::ShapeRef.new(shape: LastRequestId, location_name: "LastRecordId"))
    ProvisionedProductDetail.struct_class = Types::ProvisionedProductDetail

    ProvisionedProductDetails.member = Shapes::ShapeRef.new(shape: ProvisionedProductDetail)

    ProvisionedProductFilters.key = Shapes::ShapeRef.new(shape: ProvisionedProductViewFilterBy)
    ProvisionedProductFilters.value = Shapes::ShapeRef.new(shape: ProvisionedProductViewFilterValues)

    ProvisionedProductPlanDetails.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTime, location_name: "CreatedTime"))
    ProvisionedProductPlanDetails.add_member(:path_id, Shapes::ShapeRef.new(shape: Id, location_name: "PathId"))
    ProvisionedProductPlanDetails.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProductId"))
    ProvisionedProductPlanDetails.add_member(:plan_name, Shapes::ShapeRef.new(shape: ProvisionedProductPlanName, location_name: "PlanName"))
    ProvisionedProductPlanDetails.add_member(:plan_id, Shapes::ShapeRef.new(shape: Id, location_name: "PlanId"))
    ProvisionedProductPlanDetails.add_member(:provision_product_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProvisionProductId"))
    ProvisionedProductPlanDetails.add_member(:provision_product_name, Shapes::ShapeRef.new(shape: ProvisionedProductName, location_name: "ProvisionProductName"))
    ProvisionedProductPlanDetails.add_member(:plan_type, Shapes::ShapeRef.new(shape: ProvisionedProductPlanType, location_name: "PlanType"))
    ProvisionedProductPlanDetails.add_member(:provisioning_artifact_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProvisioningArtifactId"))
    ProvisionedProductPlanDetails.add_member(:status, Shapes::ShapeRef.new(shape: ProvisionedProductPlanStatus, location_name: "Status"))
    ProvisionedProductPlanDetails.add_member(:updated_time, Shapes::ShapeRef.new(shape: UpdatedTime, location_name: "UpdatedTime"))
    ProvisionedProductPlanDetails.add_member(:notification_arns, Shapes::ShapeRef.new(shape: NotificationArns, location_name: "NotificationArns"))
    ProvisionedProductPlanDetails.add_member(:provisioning_parameters, Shapes::ShapeRef.new(shape: UpdateProvisioningParameters, location_name: "ProvisioningParameters"))
    ProvisionedProductPlanDetails.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ProvisionedProductPlanDetails.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    ProvisionedProductPlanDetails.struct_class = Types::ProvisionedProductPlanDetails

    ProvisionedProductPlanSummary.add_member(:plan_name, Shapes::ShapeRef.new(shape: ProvisionedProductPlanName, location_name: "PlanName"))
    ProvisionedProductPlanSummary.add_member(:plan_id, Shapes::ShapeRef.new(shape: Id, location_name: "PlanId"))
    ProvisionedProductPlanSummary.add_member(:provision_product_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProvisionProductId"))
    ProvisionedProductPlanSummary.add_member(:provision_product_name, Shapes::ShapeRef.new(shape: ProvisionedProductName, location_name: "ProvisionProductName"))
    ProvisionedProductPlanSummary.add_member(:plan_type, Shapes::ShapeRef.new(shape: ProvisionedProductPlanType, location_name: "PlanType"))
    ProvisionedProductPlanSummary.add_member(:provisioning_artifact_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProvisioningArtifactId"))
    ProvisionedProductPlanSummary.struct_class = Types::ProvisionedProductPlanSummary

    ProvisionedProductPlans.member = Shapes::ShapeRef.new(shape: ProvisionedProductPlanSummary)

    ProvisionedProductViewFilterValues.member = Shapes::ShapeRef.new(shape: ProvisionedProductViewFilterValue)

    ProvisioningArtifact.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    ProvisioningArtifact.add_member(:name, Shapes::ShapeRef.new(shape: ProvisioningArtifactName, location_name: "Name"))
    ProvisioningArtifact.add_member(:description, Shapes::ShapeRef.new(shape: ProvisioningArtifactDescription, location_name: "Description"))
    ProvisioningArtifact.add_member(:created_time, Shapes::ShapeRef.new(shape: ProvisioningArtifactCreatedTime, location_name: "CreatedTime"))
    ProvisioningArtifact.struct_class = Types::ProvisioningArtifact

    ProvisioningArtifactDetail.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    ProvisioningArtifactDetail.add_member(:name, Shapes::ShapeRef.new(shape: ProvisioningArtifactName, location_name: "Name"))
    ProvisioningArtifactDetail.add_member(:description, Shapes::ShapeRef.new(shape: ProvisioningArtifactName, location_name: "Description"))
    ProvisioningArtifactDetail.add_member(:type, Shapes::ShapeRef.new(shape: ProvisioningArtifactType, location_name: "Type"))
    ProvisioningArtifactDetail.add_member(:created_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreatedTime"))
    ProvisioningArtifactDetail.add_member(:active, Shapes::ShapeRef.new(shape: ProvisioningArtifactActive, location_name: "Active"))
    ProvisioningArtifactDetail.struct_class = Types::ProvisioningArtifactDetail

    ProvisioningArtifactDetails.member = Shapes::ShapeRef.new(shape: ProvisioningArtifactDetail)

    ProvisioningArtifactInfo.key = Shapes::ShapeRef.new(shape: ProvisioningArtifactInfoKey)
    ProvisioningArtifactInfo.value = Shapes::ShapeRef.new(shape: ProvisioningArtifactInfoValue)

    ProvisioningArtifactParameter.add_member(:parameter_key, Shapes::ShapeRef.new(shape: ParameterKey, location_name: "ParameterKey"))
    ProvisioningArtifactParameter.add_member(:default_value, Shapes::ShapeRef.new(shape: DefaultValue, location_name: "DefaultValue"))
    ProvisioningArtifactParameter.add_member(:parameter_type, Shapes::ShapeRef.new(shape: ParameterType, location_name: "ParameterType"))
    ProvisioningArtifactParameter.add_member(:is_no_echo, Shapes::ShapeRef.new(shape: NoEcho, location_name: "IsNoEcho"))
    ProvisioningArtifactParameter.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ProvisioningArtifactParameter.add_member(:parameter_constraints, Shapes::ShapeRef.new(shape: ParameterConstraints, location_name: "ParameterConstraints"))
    ProvisioningArtifactParameter.struct_class = Types::ProvisioningArtifactParameter

    ProvisioningArtifactParameters.member = Shapes::ShapeRef.new(shape: ProvisioningArtifactParameter)

    ProvisioningArtifactProperties.add_member(:name, Shapes::ShapeRef.new(shape: ProvisioningArtifactName, location_name: "Name"))
    ProvisioningArtifactProperties.add_member(:description, Shapes::ShapeRef.new(shape: ProvisioningArtifactDescription, location_name: "Description"))
    ProvisioningArtifactProperties.add_member(:info, Shapes::ShapeRef.new(shape: ProvisioningArtifactInfo, required: true, location_name: "Info"))
    ProvisioningArtifactProperties.add_member(:type, Shapes::ShapeRef.new(shape: ProvisioningArtifactType, location_name: "Type"))
    ProvisioningArtifactProperties.struct_class = Types::ProvisioningArtifactProperties

    ProvisioningArtifactSummaries.member = Shapes::ShapeRef.new(shape: ProvisioningArtifactSummary)

    ProvisioningArtifactSummary.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    ProvisioningArtifactSummary.add_member(:name, Shapes::ShapeRef.new(shape: ProvisioningArtifactName, location_name: "Name"))
    ProvisioningArtifactSummary.add_member(:description, Shapes::ShapeRef.new(shape: ProvisioningArtifactDescription, location_name: "Description"))
    ProvisioningArtifactSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: ProvisioningArtifactCreatedTime, location_name: "CreatedTime"))
    ProvisioningArtifactSummary.add_member(:provisioning_artifact_metadata, Shapes::ShapeRef.new(shape: ProvisioningArtifactInfo, location_name: "ProvisioningArtifactMetadata"))
    ProvisioningArtifactSummary.struct_class = Types::ProvisioningArtifactSummary

    ProvisioningArtifacts.member = Shapes::ShapeRef.new(shape: ProvisioningArtifact)

    ProvisioningParameter.add_member(:key, Shapes::ShapeRef.new(shape: ParameterKey, location_name: "Key"))
    ProvisioningParameter.add_member(:value, Shapes::ShapeRef.new(shape: ParameterValue, location_name: "Value"))
    ProvisioningParameter.struct_class = Types::ProvisioningParameter

    ProvisioningParameters.member = Shapes::ShapeRef.new(shape: ProvisioningParameter)

    RecordDetail.add_member(:record_id, Shapes::ShapeRef.new(shape: Id, location_name: "RecordId"))
    RecordDetail.add_member(:provisioned_product_name, Shapes::ShapeRef.new(shape: ProvisionedProductName, location_name: "ProvisionedProductName"))
    RecordDetail.add_member(:status, Shapes::ShapeRef.new(shape: RecordStatus, location_name: "Status"))
    RecordDetail.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTime, location_name: "CreatedTime"))
    RecordDetail.add_member(:updated_time, Shapes::ShapeRef.new(shape: UpdatedTime, location_name: "UpdatedTime"))
    RecordDetail.add_member(:provisioned_product_type, Shapes::ShapeRef.new(shape: ProvisionedProductType, location_name: "ProvisionedProductType"))
    RecordDetail.add_member(:record_type, Shapes::ShapeRef.new(shape: RecordType, location_name: "RecordType"))
    RecordDetail.add_member(:provisioned_product_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProvisionedProductId"))
    RecordDetail.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProductId"))
    RecordDetail.add_member(:provisioning_artifact_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProvisioningArtifactId"))
    RecordDetail.add_member(:path_id, Shapes::ShapeRef.new(shape: Id, location_name: "PathId"))
    RecordDetail.add_member(:record_errors, Shapes::ShapeRef.new(shape: RecordErrors, location_name: "RecordErrors"))
    RecordDetail.add_member(:record_tags, Shapes::ShapeRef.new(shape: RecordTags, location_name: "RecordTags"))
    RecordDetail.struct_class = Types::RecordDetail

    RecordDetails.member = Shapes::ShapeRef.new(shape: RecordDetail)

    RecordError.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    RecordError.add_member(:description, Shapes::ShapeRef.new(shape: ErrorDescription, location_name: "Description"))
    RecordError.struct_class = Types::RecordError

    RecordErrors.member = Shapes::ShapeRef.new(shape: RecordError)

    RecordOutput.add_member(:output_key, Shapes::ShapeRef.new(shape: OutputKey, location_name: "OutputKey"))
    RecordOutput.add_member(:output_value, Shapes::ShapeRef.new(shape: OutputValue, location_name: "OutputValue"))
    RecordOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    RecordOutput.struct_class = Types::RecordOutput

    RecordOutputs.member = Shapes::ShapeRef.new(shape: RecordOutput)

    RecordTag.add_member(:key, Shapes::ShapeRef.new(shape: RecordTagKey, location_name: "Key"))
    RecordTag.add_member(:value, Shapes::ShapeRef.new(shape: RecordTagValue, location_name: "Value"))
    RecordTag.struct_class = Types::RecordTag

    RecordTags.member = Shapes::ShapeRef.new(shape: RecordTag)

    RejectPortfolioShareInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    RejectPortfolioShareInput.add_member(:portfolio_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "PortfolioId"))
    RejectPortfolioShareInput.struct_class = Types::RejectPortfolioShareInput

    RejectPortfolioShareOutput.struct_class = Types::RejectPortfolioShareOutput

    ResourceChange.add_member(:action, Shapes::ShapeRef.new(shape: ChangeAction, location_name: "Action"))
    ResourceChange.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, location_name: "LogicalResourceId"))
    ResourceChange.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: PhysicalResourceId, location_name: "PhysicalResourceId"))
    ResourceChange.add_member(:resource_type, Shapes::ShapeRef.new(shape: PlanResourceType, location_name: "ResourceType"))
    ResourceChange.add_member(:replacement, Shapes::ShapeRef.new(shape: Replacement, location_name: "Replacement"))
    ResourceChange.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, location_name: "Scope"))
    ResourceChange.add_member(:details, Shapes::ShapeRef.new(shape: ResourceChangeDetails, location_name: "Details"))
    ResourceChange.struct_class = Types::ResourceChange

    ResourceChangeDetail.add_member(:target, Shapes::ShapeRef.new(shape: ResourceTargetDefinition, location_name: "Target"))
    ResourceChangeDetail.add_member(:evaluation, Shapes::ShapeRef.new(shape: EvaluationType, location_name: "Evaluation"))
    ResourceChangeDetail.add_member(:causing_entity, Shapes::ShapeRef.new(shape: CausingEntity, location_name: "CausingEntity"))
    ResourceChangeDetail.struct_class = Types::ResourceChangeDetail

    ResourceChangeDetails.member = Shapes::ShapeRef.new(shape: ResourceChangeDetail)

    ResourceChanges.member = Shapes::ShapeRef.new(shape: ResourceChange)

    ResourceDetail.add_member(:id, Shapes::ShapeRef.new(shape: ResourceDetailId, location_name: "Id"))
    ResourceDetail.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceDetailARN, location_name: "ARN"))
    ResourceDetail.add_member(:name, Shapes::ShapeRef.new(shape: ResourceDetailName, location_name: "Name"))
    ResourceDetail.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDetailDescription, location_name: "Description"))
    ResourceDetail.add_member(:created_time, Shapes::ShapeRef.new(shape: ResourceDetailCreatedTime, location_name: "CreatedTime"))
    ResourceDetail.struct_class = Types::ResourceDetail

    ResourceDetails.member = Shapes::ShapeRef.new(shape: ResourceDetail)

    ResourceTargetDefinition.add_member(:attribute, Shapes::ShapeRef.new(shape: ResourceAttribute, location_name: "Attribute"))
    ResourceTargetDefinition.add_member(:name, Shapes::ShapeRef.new(shape: PropertyName, location_name: "Name"))
    ResourceTargetDefinition.add_member(:requires_recreation, Shapes::ShapeRef.new(shape: RequiresRecreation, location_name: "RequiresRecreation"))
    ResourceTargetDefinition.struct_class = Types::ResourceTargetDefinition

    ScanProvisionedProductsInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    ScanProvisionedProductsInput.add_member(:access_level_filter, Shapes::ShapeRef.new(shape: AccessLevelFilter, location_name: "AccessLevelFilter"))
    ScanProvisionedProductsInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ScanProvisionedProductsInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
    ScanProvisionedProductsInput.struct_class = Types::ScanProvisionedProductsInput

    ScanProvisionedProductsOutput.add_member(:provisioned_products, Shapes::ShapeRef.new(shape: ProvisionedProductDetails, location_name: "ProvisionedProducts"))
    ScanProvisionedProductsOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
    ScanProvisionedProductsOutput.struct_class = Types::ScanProvisionedProductsOutput

    Scope.member = Shapes::ShapeRef.new(shape: ResourceAttribute)

    SearchProductsAsAdminInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    SearchProductsAsAdminInput.add_member(:portfolio_id, Shapes::ShapeRef.new(shape: Id, location_name: "PortfolioId"))
    SearchProductsAsAdminInput.add_member(:filters, Shapes::ShapeRef.new(shape: ProductViewFilters, location_name: "Filters"))
    SearchProductsAsAdminInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: ProductViewSortBy, location_name: "SortBy"))
    SearchProductsAsAdminInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    SearchProductsAsAdminInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
    SearchProductsAsAdminInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    SearchProductsAsAdminInput.add_member(:product_source, Shapes::ShapeRef.new(shape: ProductSource, location_name: "ProductSource"))
    SearchProductsAsAdminInput.struct_class = Types::SearchProductsAsAdminInput

    SearchProductsAsAdminOutput.add_member(:product_view_details, Shapes::ShapeRef.new(shape: ProductViewDetails, location_name: "ProductViewDetails"))
    SearchProductsAsAdminOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
    SearchProductsAsAdminOutput.struct_class = Types::SearchProductsAsAdminOutput

    SearchProductsInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    SearchProductsInput.add_member(:filters, Shapes::ShapeRef.new(shape: ProductViewFilters, location_name: "Filters"))
    SearchProductsInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    SearchProductsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: ProductViewSortBy, location_name: "SortBy"))
    SearchProductsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    SearchProductsInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
    SearchProductsInput.struct_class = Types::SearchProductsInput

    SearchProductsOutput.add_member(:product_view_summaries, Shapes::ShapeRef.new(shape: ProductViewSummaries, location_name: "ProductViewSummaries"))
    SearchProductsOutput.add_member(:product_view_aggregations, Shapes::ShapeRef.new(shape: ProductViewAggregations, location_name: "ProductViewAggregations"))
    SearchProductsOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
    SearchProductsOutput.struct_class = Types::SearchProductsOutput

    SearchProvisionedProductsInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    SearchProvisionedProductsInput.add_member(:access_level_filter, Shapes::ShapeRef.new(shape: AccessLevelFilter, location_name: "AccessLevelFilter"))
    SearchProvisionedProductsInput.add_member(:filters, Shapes::ShapeRef.new(shape: ProvisionedProductFilters, location_name: "Filters"))
    SearchProvisionedProductsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortField, location_name: "SortBy"))
    SearchProvisionedProductsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    SearchProvisionedProductsInput.add_member(:page_size, Shapes::ShapeRef.new(shape: SearchProvisionedProductsPageSize, location_name: "PageSize"))
    SearchProvisionedProductsInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
    SearchProvisionedProductsInput.struct_class = Types::SearchProvisionedProductsInput

    SearchProvisionedProductsOutput.add_member(:provisioned_products, Shapes::ShapeRef.new(shape: ProvisionedProductAttributes, location_name: "ProvisionedProducts"))
    SearchProvisionedProductsOutput.add_member(:total_results_count, Shapes::ShapeRef.new(shape: TotalResultsCount, location_name: "TotalResultsCount"))
    SearchProvisionedProductsOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
    SearchProvisionedProductsOutput.struct_class = Types::SearchProvisionedProductsOutput

    SourceProvisioningArtifactProperties.member = Shapes::ShapeRef.new(shape: SourceProvisioningArtifactPropertiesMap)

    SourceProvisioningArtifactPropertiesMap.key = Shapes::ShapeRef.new(shape: ProvisioningArtifactPropertyName)
    SourceProvisioningArtifactPropertiesMap.value = Shapes::ShapeRef.new(shape: ProvisioningArtifactPropertyValue)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagOptionDetail.add_member(:key, Shapes::ShapeRef.new(shape: TagOptionKey, location_name: "Key"))
    TagOptionDetail.add_member(:value, Shapes::ShapeRef.new(shape: TagOptionValue, location_name: "Value"))
    TagOptionDetail.add_member(:active, Shapes::ShapeRef.new(shape: TagOptionActive, location_name: "Active"))
    TagOptionDetail.add_member(:id, Shapes::ShapeRef.new(shape: TagOptionId, location_name: "Id"))
    TagOptionDetail.struct_class = Types::TagOptionDetail

    TagOptionDetails.member = Shapes::ShapeRef.new(shape: TagOptionDetail)

    TagOptionSummaries.member = Shapes::ShapeRef.new(shape: TagOptionSummary)

    TagOptionSummary.add_member(:key, Shapes::ShapeRef.new(shape: TagOptionKey, location_name: "Key"))
    TagOptionSummary.add_member(:values, Shapes::ShapeRef.new(shape: TagOptionValues, location_name: "Values"))
    TagOptionSummary.struct_class = Types::TagOptionSummary

    TagOptionValues.member = Shapes::ShapeRef.new(shape: TagOptionValue)

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    TerminateProvisionedProductInput.add_member(:provisioned_product_name, Shapes::ShapeRef.new(shape: ProvisionedProductNameOrArn, location_name: "ProvisionedProductName"))
    TerminateProvisionedProductInput.add_member(:provisioned_product_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProvisionedProductId"))
    TerminateProvisionedProductInput.add_member(:terminate_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "TerminateToken", metadata: {"idempotencyToken"=>true}))
    TerminateProvisionedProductInput.add_member(:ignore_errors, Shapes::ShapeRef.new(shape: IgnoreErrors, location_name: "IgnoreErrors"))
    TerminateProvisionedProductInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    TerminateProvisionedProductInput.struct_class = Types::TerminateProvisionedProductInput

    TerminateProvisionedProductOutput.add_member(:record_detail, Shapes::ShapeRef.new(shape: RecordDetail, location_name: "RecordDetail"))
    TerminateProvisionedProductOutput.struct_class = Types::TerminateProvisionedProductOutput

    UpdateConstraintInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    UpdateConstraintInput.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    UpdateConstraintInput.add_member(:description, Shapes::ShapeRef.new(shape: ConstraintDescription, location_name: "Description"))
    UpdateConstraintInput.struct_class = Types::UpdateConstraintInput

    UpdateConstraintOutput.add_member(:constraint_detail, Shapes::ShapeRef.new(shape: ConstraintDetail, location_name: "ConstraintDetail"))
    UpdateConstraintOutput.add_member(:constraint_parameters, Shapes::ShapeRef.new(shape: ConstraintParameters, location_name: "ConstraintParameters"))
    UpdateConstraintOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    UpdateConstraintOutput.struct_class = Types::UpdateConstraintOutput

    UpdatePortfolioInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    UpdatePortfolioInput.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    UpdatePortfolioInput.add_member(:display_name, Shapes::ShapeRef.new(shape: PortfolioDisplayName, location_name: "DisplayName"))
    UpdatePortfolioInput.add_member(:description, Shapes::ShapeRef.new(shape: PortfolioDescription, location_name: "Description"))
    UpdatePortfolioInput.add_member(:provider_name, Shapes::ShapeRef.new(shape: ProviderName, location_name: "ProviderName"))
    UpdatePortfolioInput.add_member(:add_tags, Shapes::ShapeRef.new(shape: AddTags, location_name: "AddTags"))
    UpdatePortfolioInput.add_member(:remove_tags, Shapes::ShapeRef.new(shape: TagKeys, location_name: "RemoveTags"))
    UpdatePortfolioInput.struct_class = Types::UpdatePortfolioInput

    UpdatePortfolioOutput.add_member(:portfolio_detail, Shapes::ShapeRef.new(shape: PortfolioDetail, location_name: "PortfolioDetail"))
    UpdatePortfolioOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    UpdatePortfolioOutput.struct_class = Types::UpdatePortfolioOutput

    UpdateProductInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    UpdateProductInput.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    UpdateProductInput.add_member(:name, Shapes::ShapeRef.new(shape: ProductViewName, location_name: "Name"))
    UpdateProductInput.add_member(:owner, Shapes::ShapeRef.new(shape: ProductViewOwner, location_name: "Owner"))
    UpdateProductInput.add_member(:description, Shapes::ShapeRef.new(shape: ProductViewShortDescription, location_name: "Description"))
    UpdateProductInput.add_member(:distributor, Shapes::ShapeRef.new(shape: ProductViewOwner, location_name: "Distributor"))
    UpdateProductInput.add_member(:support_description, Shapes::ShapeRef.new(shape: SupportDescription, location_name: "SupportDescription"))
    UpdateProductInput.add_member(:support_email, Shapes::ShapeRef.new(shape: SupportEmail, location_name: "SupportEmail"))
    UpdateProductInput.add_member(:support_url, Shapes::ShapeRef.new(shape: SupportUrl, location_name: "SupportUrl"))
    UpdateProductInput.add_member(:add_tags, Shapes::ShapeRef.new(shape: AddTags, location_name: "AddTags"))
    UpdateProductInput.add_member(:remove_tags, Shapes::ShapeRef.new(shape: TagKeys, location_name: "RemoveTags"))
    UpdateProductInput.struct_class = Types::UpdateProductInput

    UpdateProductOutput.add_member(:product_view_detail, Shapes::ShapeRef.new(shape: ProductViewDetail, location_name: "ProductViewDetail"))
    UpdateProductOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    UpdateProductOutput.struct_class = Types::UpdateProductOutput

    UpdateProvisionedProductInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    UpdateProvisionedProductInput.add_member(:provisioned_product_name, Shapes::ShapeRef.new(shape: ProvisionedProductNameOrArn, location_name: "ProvisionedProductName"))
    UpdateProvisionedProductInput.add_member(:provisioned_product_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProvisionedProductId"))
    UpdateProvisionedProductInput.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProductId"))
    UpdateProvisionedProductInput.add_member(:provisioning_artifact_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProvisioningArtifactId"))
    UpdateProvisionedProductInput.add_member(:path_id, Shapes::ShapeRef.new(shape: Id, location_name: "PathId"))
    UpdateProvisionedProductInput.add_member(:provisioning_parameters, Shapes::ShapeRef.new(shape: UpdateProvisioningParameters, location_name: "ProvisioningParameters"))
    UpdateProvisionedProductInput.add_member(:update_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "UpdateToken", metadata: {"idempotencyToken"=>true}))
    UpdateProvisionedProductInput.struct_class = Types::UpdateProvisionedProductInput

    UpdateProvisionedProductOutput.add_member(:record_detail, Shapes::ShapeRef.new(shape: RecordDetail, location_name: "RecordDetail"))
    UpdateProvisionedProductOutput.struct_class = Types::UpdateProvisionedProductOutput

    UpdateProvisioningArtifactInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
    UpdateProvisioningArtifactInput.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProductId"))
    UpdateProvisioningArtifactInput.add_member(:provisioning_artifact_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProvisioningArtifactId"))
    UpdateProvisioningArtifactInput.add_member(:name, Shapes::ShapeRef.new(shape: ProvisioningArtifactName, location_name: "Name"))
    UpdateProvisioningArtifactInput.add_member(:description, Shapes::ShapeRef.new(shape: ProvisioningArtifactDescription, location_name: "Description"))
    UpdateProvisioningArtifactInput.add_member(:active, Shapes::ShapeRef.new(shape: ProvisioningArtifactActive, location_name: "Active"))
    UpdateProvisioningArtifactInput.struct_class = Types::UpdateProvisioningArtifactInput

    UpdateProvisioningArtifactOutput.add_member(:provisioning_artifact_detail, Shapes::ShapeRef.new(shape: ProvisioningArtifactDetail, location_name: "ProvisioningArtifactDetail"))
    UpdateProvisioningArtifactOutput.add_member(:info, Shapes::ShapeRef.new(shape: ProvisioningArtifactInfo, location_name: "Info"))
    UpdateProvisioningArtifactOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    UpdateProvisioningArtifactOutput.struct_class = Types::UpdateProvisioningArtifactOutput

    UpdateProvisioningParameter.add_member(:key, Shapes::ShapeRef.new(shape: ParameterKey, location_name: "Key"))
    UpdateProvisioningParameter.add_member(:value, Shapes::ShapeRef.new(shape: ParameterValue, location_name: "Value"))
    UpdateProvisioningParameter.add_member(:use_previous_value, Shapes::ShapeRef.new(shape: UsePreviousValue, location_name: "UsePreviousValue"))
    UpdateProvisioningParameter.struct_class = Types::UpdateProvisioningParameter

    UpdateProvisioningParameters.member = Shapes::ShapeRef.new(shape: UpdateProvisioningParameter)

    UpdateTagOptionInput.add_member(:id, Shapes::ShapeRef.new(shape: TagOptionId, required: true, location_name: "Id"))
    UpdateTagOptionInput.add_member(:value, Shapes::ShapeRef.new(shape: TagOptionValue, location_name: "Value"))
    UpdateTagOptionInput.add_member(:active, Shapes::ShapeRef.new(shape: TagOptionActive, location_name: "Active"))
    UpdateTagOptionInput.struct_class = Types::UpdateTagOptionInput

    UpdateTagOptionOutput.add_member(:tag_option_detail, Shapes::ShapeRef.new(shape: TagOptionDetail, location_name: "TagOptionDetail"))
    UpdateTagOptionOutput.struct_class = Types::UpdateTagOptionOutput

    UsageInstruction.add_member(:type, Shapes::ShapeRef.new(shape: InstructionType, location_name: "Type"))
    UsageInstruction.add_member(:value, Shapes::ShapeRef.new(shape: InstructionValue, location_name: "Value"))
    UsageInstruction.struct_class = Types::UsageInstruction

    UsageInstructions.member = Shapes::ShapeRef.new(shape: UsageInstruction)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-12-10"

      api.metadata = {
        "apiVersion" => "2015-12-10",
        "endpointPrefix" => "servicecatalog",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Service Catalog",
        "serviceId" => "Service Catalog",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWS242ServiceCatalogService",
        "uid" => "servicecatalog-2015-12-10",
      }

      api.add_operation(:accept_portfolio_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptPortfolioShare"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AcceptPortfolioShareInput)
        o.output = Shapes::ShapeRef.new(shape: AcceptPortfolioShareOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:associate_principal_with_portfolio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociatePrincipalWithPortfolio"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociatePrincipalWithPortfolioInput)
        o.output = Shapes::ShapeRef.new(shape: AssociatePrincipalWithPortfolioOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:associate_product_with_portfolio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateProductWithPortfolio"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateProductWithPortfolioInput)
        o.output = Shapes::ShapeRef.new(shape: AssociateProductWithPortfolioOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:associate_tag_option_with_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateTagOptionWithResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateTagOptionWithResourceInput)
        o.output = Shapes::ShapeRef.new(shape: AssociateTagOptionWithResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:copy_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyProduct"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopyProductInput)
        o.output = Shapes::ShapeRef.new(shape: CopyProductOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
      end)

      api.add_operation(:create_constraint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConstraint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateConstraintInput)
        o.output = Shapes::ShapeRef.new(shape: CreateConstraintOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
      end)

      api.add_operation(:create_portfolio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePortfolio"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePortfolioInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePortfolioOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
      end)

      api.add_operation(:create_portfolio_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePortfolioShare"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePortfolioShareInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePortfolioShareOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
      end)

      api.add_operation(:create_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProduct"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateProductInput)
        o.output = Shapes::ShapeRef.new(shape: CreateProductOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
      end)

      api.add_operation(:create_provisioned_product_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProvisionedProductPlan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateProvisionedProductPlanInput)
        o.output = Shapes::ShapeRef.new(shape: CreateProvisionedProductPlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:create_provisioning_artifact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProvisioningArtifact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateProvisioningArtifactInput)
        o.output = Shapes::ShapeRef.new(shape: CreateProvisioningArtifactOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_tag_option, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTagOption"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTagOptionInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTagOptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:delete_constraint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConstraint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConstraintInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteConstraintOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
      end)

      api.add_operation(:delete_portfolio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePortfolio"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePortfolioInput)
        o.output = Shapes::ShapeRef.new(shape: DeletePortfolioOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
      end)

      api.add_operation(:delete_portfolio_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePortfolioShare"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePortfolioShareInput)
        o.output = Shapes::ShapeRef.new(shape: DeletePortfolioShareOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProduct"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProductInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteProductOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
      end)

      api.add_operation(:delete_provisioned_product_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProvisionedProductPlan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProvisionedProductPlanInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteProvisionedProductPlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_provisioning_artifact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProvisioningArtifact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProvisioningArtifactInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteProvisioningArtifactOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
      end)

      api.add_operation(:delete_tag_option, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTagOption"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTagOptionInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteTagOptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_constraint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConstraint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConstraintInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeConstraintOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_copy_product_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCopyProductStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCopyProductStatusInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeCopyProductStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_portfolio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePortfolio"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePortfolioInput)
        o.output = Shapes::ShapeRef.new(shape: DescribePortfolioOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProduct"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProductInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeProductOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
      end)

      api.add_operation(:describe_product_as_admin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProductAsAdmin"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProductAsAdminInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeProductAsAdminOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_product_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProductView"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProductViewInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeProductViewOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
      end)

      api.add_operation(:describe_provisioned_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProvisionedProduct"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProvisionedProductInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeProvisionedProductOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_provisioned_product_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProvisionedProductPlan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProvisionedProductPlanInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeProvisionedProductPlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
      end)

      api.add_operation(:describe_provisioning_artifact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProvisioningArtifact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProvisioningArtifactInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeProvisioningArtifactOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_provisioning_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProvisioningParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProvisioningParametersInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeProvisioningParametersOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRecord"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRecordInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeRecordOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_tag_option, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTagOption"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTagOptionInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTagOptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_principal_from_portfolio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociatePrincipalFromPortfolio"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociatePrincipalFromPortfolioInput)
        o.output = Shapes::ShapeRef.new(shape: DisassociatePrincipalFromPortfolioOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_product_from_portfolio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateProductFromPortfolio"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateProductFromPortfolioInput)
        o.output = Shapes::ShapeRef.new(shape: DisassociateProductFromPortfolioOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
      end)

      api.add_operation(:disassociate_tag_option_from_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateTagOptionFromResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateTagOptionFromResourceInput)
        o.output = Shapes::ShapeRef.new(shape: DisassociateTagOptionFromResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:execute_provisioned_product_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteProvisionedProductPlan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExecuteProvisionedProductPlanInput)
        o.output = Shapes::ShapeRef.new(shape: ExecuteProvisionedProductPlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:list_accepted_portfolio_shares, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAcceptedPortfolioShares"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAcceptedPortfolioSharesInput)
        o.output = Shapes::ShapeRef.new(shape: ListAcceptedPortfolioSharesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_page_token" => "page_token"
          }
        )
      end)

      api.add_operation(:list_constraints_for_portfolio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConstraintsForPortfolio"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListConstraintsForPortfolioInput)
        o.output = Shapes::ShapeRef.new(shape: ListConstraintsForPortfolioOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_page_token" => "page_token"
          }
        )
      end)

      api.add_operation(:list_launch_paths, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLaunchPaths"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLaunchPathsInput)
        o.output = Shapes::ShapeRef.new(shape: ListLaunchPathsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_page_token" => "page_token"
          }
        )
      end)

      api.add_operation(:list_portfolio_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPortfolioAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPortfolioAccessInput)
        o.output = Shapes::ShapeRef.new(shape: ListPortfolioAccessOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_portfolios, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPortfolios"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPortfoliosInput)
        o.output = Shapes::ShapeRef.new(shape: ListPortfoliosOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_page_token" => "page_token"
          }
        )
      end)

      api.add_operation(:list_portfolios_for_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPortfoliosForProduct"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPortfoliosForProductInput)
        o.output = Shapes::ShapeRef.new(shape: ListPortfoliosForProductOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_page_token" => "page_token"
          }
        )
      end)

      api.add_operation(:list_principals_for_portfolio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPrincipalsForPortfolio"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPrincipalsForPortfolioInput)
        o.output = Shapes::ShapeRef.new(shape: ListPrincipalsForPortfolioOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_page_token" => "page_token"
          }
        )
      end)

      api.add_operation(:list_provisioned_product_plans, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProvisionedProductPlans"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProvisionedProductPlansInput)
        o.output = Shapes::ShapeRef.new(shape: ListProvisionedProductPlansOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
      end)

      api.add_operation(:list_provisioning_artifacts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProvisioningArtifacts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProvisioningArtifactsInput)
        o.output = Shapes::ShapeRef.new(shape: ListProvisioningArtifactsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
      end)

      api.add_operation(:list_record_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecordHistory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRecordHistoryInput)
        o.output = Shapes::ShapeRef.new(shape: ListRecordHistoryOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
      end)

      api.add_operation(:list_resources_for_tag_option, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourcesForTagOption"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourcesForTagOptionInput)
        o.output = Shapes::ShapeRef.new(shape: ListResourcesForTagOptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "page_token" => "page_token"
          }
        )
      end)

      api.add_operation(:list_tag_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagOptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagOptionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagOptionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "page_token" => "page_token"
          }
        )
      end)

      api.add_operation(:provision_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ProvisionProduct"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ProvisionProductInput)
        o.output = Shapes::ShapeRef.new(shape: ProvisionProductOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
      end)

      api.add_operation(:reject_portfolio_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectPortfolioShare"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RejectPortfolioShareInput)
        o.output = Shapes::ShapeRef.new(shape: RejectPortfolioShareOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:scan_provisioned_products, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ScanProvisionedProducts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ScanProvisionedProductsInput)
        o.output = Shapes::ShapeRef.new(shape: ScanProvisionedProductsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
      end)

      api.add_operation(:search_products, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchProducts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchProductsInput)
        o.output = Shapes::ShapeRef.new(shape: SearchProductsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_page_token" => "page_token"
          }
        )
      end)

      api.add_operation(:search_products_as_admin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchProductsAsAdmin"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchProductsAsAdminInput)
        o.output = Shapes::ShapeRef.new(shape: SearchProductsAsAdminOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_page_token" => "page_token"
          }
        )
      end)

      api.add_operation(:search_provisioned_products, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchProvisionedProducts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchProvisionedProductsInput)
        o.output = Shapes::ShapeRef.new(shape: SearchProvisionedProductsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_page_token" => "page_token"
          }
        )
      end)

      api.add_operation(:terminate_provisioned_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateProvisionedProduct"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TerminateProvisionedProductInput)
        o.output = Shapes::ShapeRef.new(shape: TerminateProvisionedProductOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_constraint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConstraint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateConstraintInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateConstraintOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
      end)

      api.add_operation(:update_portfolio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePortfolio"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePortfolioInput)
        o.output = Shapes::ShapeRef.new(shape: UpdatePortfolioOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
      end)

      api.add_operation(:update_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProduct"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateProductInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateProductOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
      end)

      api.add_operation(:update_provisioned_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProvisionedProduct"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateProvisionedProductInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateProvisionedProductOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_provisioning_artifact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProvisioningArtifact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateProvisioningArtifactInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateProvisioningArtifactOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
      end)

      api.add_operation(:update_tag_option, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTagOption"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTagOptionInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateTagOptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: TagOptionNotMigratedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
      end)
    end

  end
end
