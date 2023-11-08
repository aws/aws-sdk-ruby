# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DataZone
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptChoice = Shapes::StructureShape.new(name: 'AcceptChoice')
    AcceptChoices = Shapes::ListShape.new(name: 'AcceptChoices')
    AcceptPredictionsInput = Shapes::StructureShape.new(name: 'AcceptPredictionsInput')
    AcceptPredictionsOutput = Shapes::StructureShape.new(name: 'AcceptPredictionsOutput')
    AcceptRule = Shapes::StructureShape.new(name: 'AcceptRule')
    AcceptRuleBehavior = Shapes::StringShape.new(name: 'AcceptRuleBehavior')
    AcceptSubscriptionRequestInput = Shapes::StructureShape.new(name: 'AcceptSubscriptionRequestInput')
    AcceptSubscriptionRequestOutput = Shapes::StructureShape.new(name: 'AcceptSubscriptionRequestOutput')
    AcceptSubscriptionRequestOutputSubscribedListingsList = Shapes::ListShape.new(name: 'AcceptSubscriptionRequestOutputSubscribedListingsList')
    AcceptSubscriptionRequestOutputSubscribedPrincipalsList = Shapes::ListShape.new(name: 'AcceptSubscriptionRequestOutputSubscribedPrincipalsList')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActionLink = Shapes::StringShape.new(name: 'ActionLink')
    ApplicableAssetTypes = Shapes::ListShape.new(name: 'ApplicableAssetTypes')
    AssetId = Shapes::StringShape.new(name: 'AssetId')
    AssetIdentifier = Shapes::StringShape.new(name: 'AssetIdentifier')
    AssetItem = Shapes::StructureShape.new(name: 'AssetItem')
    AssetItemAdditionalAttributes = Shapes::StructureShape.new(name: 'AssetItemAdditionalAttributes')
    AssetListing = Shapes::StructureShape.new(name: 'AssetListing')
    AssetListingDetails = Shapes::StructureShape.new(name: 'AssetListingDetails')
    AssetListingItem = Shapes::StructureShape.new(name: 'AssetListingItem')
    AssetListingItemAdditionalAttributes = Shapes::StructureShape.new(name: 'AssetListingItemAdditionalAttributes')
    AssetName = Shapes::StringShape.new(name: 'AssetName')
    AssetRevision = Shapes::StructureShape.new(name: 'AssetRevision')
    AssetRevisions = Shapes::ListShape.new(name: 'AssetRevisions')
    AssetTargetNameMap = Shapes::StructureShape.new(name: 'AssetTargetNameMap')
    AssetTargetNames = Shapes::ListShape.new(name: 'AssetTargetNames')
    AssetTypeIdentifier = Shapes::StringShape.new(name: 'AssetTypeIdentifier')
    AssetTypeItem = Shapes::StructureShape.new(name: 'AssetTypeItem')
    Attribute = Shapes::StringShape.new(name: 'Attribute')
    AuthType = Shapes::StringShape.new(name: 'AuthType')
    AuthorizedPrincipalIdentifier = Shapes::StringShape.new(name: 'AuthorizedPrincipalIdentifier')
    AuthorizedPrincipalIdentifiers = Shapes::ListShape.new(name: 'AuthorizedPrincipalIdentifiers')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    AwsRegion = Shapes::StringShape.new(name: 'AwsRegion')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BusinessNameGenerationConfiguration = Shapes::StructureShape.new(name: 'BusinessNameGenerationConfiguration')
    CancelSubscriptionInput = Shapes::StructureShape.new(name: 'CancelSubscriptionInput')
    CancelSubscriptionOutput = Shapes::StructureShape.new(name: 'CancelSubscriptionOutput')
    ChangeAction = Shapes::StringShape.new(name: 'ChangeAction')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CloudFormationProperties = Shapes::StructureShape.new(name: 'CloudFormationProperties')
    ConfigurableActionParameter = Shapes::StructureShape.new(name: 'ConfigurableActionParameter')
    ConfigurableActionParameterList = Shapes::ListShape.new(name: 'ConfigurableActionParameterList')
    ConfigurableActionTypeAuthorization = Shapes::StringShape.new(name: 'ConfigurableActionTypeAuthorization')
    ConfigurableEnvironmentAction = Shapes::StructureShape.new(name: 'ConfigurableEnvironmentAction')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAssetInput = Shapes::StructureShape.new(name: 'CreateAssetInput')
    CreateAssetOutput = Shapes::StructureShape.new(name: 'CreateAssetOutput')
    CreateAssetRevisionInput = Shapes::StructureShape.new(name: 'CreateAssetRevisionInput')
    CreateAssetRevisionOutput = Shapes::StructureShape.new(name: 'CreateAssetRevisionOutput')
    CreateAssetTypeInput = Shapes::StructureShape.new(name: 'CreateAssetTypeInput')
    CreateAssetTypeOutput = Shapes::StructureShape.new(name: 'CreateAssetTypeOutput')
    CreateDataSourceInput = Shapes::StructureShape.new(name: 'CreateDataSourceInput')
    CreateDataSourceOutput = Shapes::StructureShape.new(name: 'CreateDataSourceOutput')
    CreateDomainInput = Shapes::StructureShape.new(name: 'CreateDomainInput')
    CreateDomainOutput = Shapes::StructureShape.new(name: 'CreateDomainOutput')
    CreateEnvironmentInput = Shapes::StructureShape.new(name: 'CreateEnvironmentInput')
    CreateEnvironmentOutput = Shapes::StructureShape.new(name: 'CreateEnvironmentOutput')
    CreateEnvironmentProfileInput = Shapes::StructureShape.new(name: 'CreateEnvironmentProfileInput')
    CreateEnvironmentProfileOutput = Shapes::StructureShape.new(name: 'CreateEnvironmentProfileOutput')
    CreateFormTypeInput = Shapes::StructureShape.new(name: 'CreateFormTypeInput')
    CreateFormTypeOutput = Shapes::StructureShape.new(name: 'CreateFormTypeOutput')
    CreateGlossaryInput = Shapes::StructureShape.new(name: 'CreateGlossaryInput')
    CreateGlossaryOutput = Shapes::StructureShape.new(name: 'CreateGlossaryOutput')
    CreateGlossaryTermInput = Shapes::StructureShape.new(name: 'CreateGlossaryTermInput')
    CreateGlossaryTermOutput = Shapes::StructureShape.new(name: 'CreateGlossaryTermOutput')
    CreateGroupProfileInput = Shapes::StructureShape.new(name: 'CreateGroupProfileInput')
    CreateGroupProfileOutput = Shapes::StructureShape.new(name: 'CreateGroupProfileOutput')
    CreateListingChangeSetInput = Shapes::StructureShape.new(name: 'CreateListingChangeSetInput')
    CreateListingChangeSetOutput = Shapes::StructureShape.new(name: 'CreateListingChangeSetOutput')
    CreateProjectInput = Shapes::StructureShape.new(name: 'CreateProjectInput')
    CreateProjectMembershipInput = Shapes::StructureShape.new(name: 'CreateProjectMembershipInput')
    CreateProjectMembershipOutput = Shapes::StructureShape.new(name: 'CreateProjectMembershipOutput')
    CreateProjectOutput = Shapes::StructureShape.new(name: 'CreateProjectOutput')
    CreateSubscriptionGrantInput = Shapes::StructureShape.new(name: 'CreateSubscriptionGrantInput')
    CreateSubscriptionGrantOutput = Shapes::StructureShape.new(name: 'CreateSubscriptionGrantOutput')
    CreateSubscriptionRequestInput = Shapes::StructureShape.new(name: 'CreateSubscriptionRequestInput')
    CreateSubscriptionRequestOutput = Shapes::StructureShape.new(name: 'CreateSubscriptionRequestOutput')
    CreateSubscriptionRequestOutputSubscribedListingsList = Shapes::ListShape.new(name: 'CreateSubscriptionRequestOutputSubscribedListingsList')
    CreateSubscriptionRequestOutputSubscribedPrincipalsList = Shapes::ListShape.new(name: 'CreateSubscriptionRequestOutputSubscribedPrincipalsList')
    CreateSubscriptionTargetInput = Shapes::StructureShape.new(name: 'CreateSubscriptionTargetInput')
    CreateSubscriptionTargetOutput = Shapes::StructureShape.new(name: 'CreateSubscriptionTargetOutput')
    CreateUserProfileInput = Shapes::StructureShape.new(name: 'CreateUserProfileInput')
    CreateUserProfileOutput = Shapes::StructureShape.new(name: 'CreateUserProfileOutput')
    CreatedAt = Shapes::TimestampShape.new(name: 'CreatedAt')
    CreatedBy = Shapes::StringShape.new(name: 'CreatedBy')
    CronString = Shapes::StringShape.new(name: 'CronString')
    CustomParameter = Shapes::StructureShape.new(name: 'CustomParameter')
    CustomParameterKeyNameString = Shapes::StringShape.new(name: 'CustomParameterKeyNameString')
    CustomParameterList = Shapes::ListShape.new(name: 'CustomParameterList')
    DataAssetActivityStatus = Shapes::StringShape.new(name: 'DataAssetActivityStatus')
    DataProductDescription = Shapes::StringShape.new(name: 'DataProductDescription')
    DataProductId = Shapes::StringShape.new(name: 'DataProductId')
    DataProductItem = Shapes::StructureShape.new(name: 'DataProductItem')
    DataProductItems = Shapes::ListShape.new(name: 'DataProductItems')
    DataProductName = Shapes::StringShape.new(name: 'DataProductName')
    DataProductSummary = Shapes::StructureShape.new(name: 'DataProductSummary')
    DataSourceConfigurationInput = Shapes::UnionShape.new(name: 'DataSourceConfigurationInput')
    DataSourceConfigurationOutput = Shapes::UnionShape.new(name: 'DataSourceConfigurationOutput')
    DataSourceErrorMessage = Shapes::StructureShape.new(name: 'DataSourceErrorMessage')
    DataSourceErrorType = Shapes::StringShape.new(name: 'DataSourceErrorType')
    DataSourceId = Shapes::StringShape.new(name: 'DataSourceId')
    DataSourceRunActivities = Shapes::ListShape.new(name: 'DataSourceRunActivities')
    DataSourceRunActivity = Shapes::StructureShape.new(name: 'DataSourceRunActivity')
    DataSourceRunId = Shapes::StringShape.new(name: 'DataSourceRunId')
    DataSourceRunStatus = Shapes::StringShape.new(name: 'DataSourceRunStatus')
    DataSourceRunSummaries = Shapes::ListShape.new(name: 'DataSourceRunSummaries')
    DataSourceRunSummary = Shapes::StructureShape.new(name: 'DataSourceRunSummary')
    DataSourceRunType = Shapes::StringShape.new(name: 'DataSourceRunType')
    DataSourceStatus = Shapes::StringShape.new(name: 'DataSourceStatus')
    DataSourceSummaries = Shapes::ListShape.new(name: 'DataSourceSummaries')
    DataSourceSummary = Shapes::StructureShape.new(name: 'DataSourceSummary')
    DataSourceType = Shapes::StringShape.new(name: 'DataSourceType')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime', timestampFormat: "iso8601")
    DecisionComment = Shapes::StringShape.new(name: 'DecisionComment')
    DeleteAssetInput = Shapes::StructureShape.new(name: 'DeleteAssetInput')
    DeleteAssetOutput = Shapes::StructureShape.new(name: 'DeleteAssetOutput')
    DeleteAssetTypeInput = Shapes::StructureShape.new(name: 'DeleteAssetTypeInput')
    DeleteAssetTypeOutput = Shapes::StructureShape.new(name: 'DeleteAssetTypeOutput')
    DeleteDataSourceInput = Shapes::StructureShape.new(name: 'DeleteDataSourceInput')
    DeleteDataSourceOutput = Shapes::StructureShape.new(name: 'DeleteDataSourceOutput')
    DeleteDomainInput = Shapes::StructureShape.new(name: 'DeleteDomainInput')
    DeleteDomainOutput = Shapes::StructureShape.new(name: 'DeleteDomainOutput')
    DeleteEnvironmentBlueprintConfigurationInput = Shapes::StructureShape.new(name: 'DeleteEnvironmentBlueprintConfigurationInput')
    DeleteEnvironmentBlueprintConfigurationOutput = Shapes::StructureShape.new(name: 'DeleteEnvironmentBlueprintConfigurationOutput')
    DeleteEnvironmentInput = Shapes::StructureShape.new(name: 'DeleteEnvironmentInput')
    DeleteEnvironmentProfileInput = Shapes::StructureShape.new(name: 'DeleteEnvironmentProfileInput')
    DeleteFormTypeInput = Shapes::StructureShape.new(name: 'DeleteFormTypeInput')
    DeleteFormTypeOutput = Shapes::StructureShape.new(name: 'DeleteFormTypeOutput')
    DeleteGlossaryInput = Shapes::StructureShape.new(name: 'DeleteGlossaryInput')
    DeleteGlossaryOutput = Shapes::StructureShape.new(name: 'DeleteGlossaryOutput')
    DeleteGlossaryTermInput = Shapes::StructureShape.new(name: 'DeleteGlossaryTermInput')
    DeleteGlossaryTermOutput = Shapes::StructureShape.new(name: 'DeleteGlossaryTermOutput')
    DeleteListingInput = Shapes::StructureShape.new(name: 'DeleteListingInput')
    DeleteListingOutput = Shapes::StructureShape.new(name: 'DeleteListingOutput')
    DeleteProjectInput = Shapes::StructureShape.new(name: 'DeleteProjectInput')
    DeleteProjectMembershipInput = Shapes::StructureShape.new(name: 'DeleteProjectMembershipInput')
    DeleteProjectMembershipOutput = Shapes::StructureShape.new(name: 'DeleteProjectMembershipOutput')
    DeleteProjectOutput = Shapes::StructureShape.new(name: 'DeleteProjectOutput')
    DeleteSubscriptionGrantInput = Shapes::StructureShape.new(name: 'DeleteSubscriptionGrantInput')
    DeleteSubscriptionGrantOutput = Shapes::StructureShape.new(name: 'DeleteSubscriptionGrantOutput')
    DeleteSubscriptionRequestInput = Shapes::StructureShape.new(name: 'DeleteSubscriptionRequestInput')
    DeleteSubscriptionTargetInput = Shapes::StructureShape.new(name: 'DeleteSubscriptionTargetInput')
    Deployment = Shapes::StructureShape.new(name: 'Deployment')
    DeploymentMessage = Shapes::StringShape.new(name: 'DeploymentMessage')
    DeploymentMessagesList = Shapes::ListShape.new(name: 'DeploymentMessagesList')
    DeploymentProperties = Shapes::StructureShape.new(name: 'DeploymentProperties')
    DeploymentPropertiesEndTimeoutMinutesInteger = Shapes::IntegerShape.new(name: 'DeploymentPropertiesEndTimeoutMinutesInteger')
    DeploymentPropertiesStartTimeoutMinutesInteger = Shapes::IntegerShape.new(name: 'DeploymentPropertiesStartTimeoutMinutesInteger')
    DeploymentStatus = Shapes::StringShape.new(name: 'DeploymentStatus')
    DeploymentType = Shapes::StringShape.new(name: 'DeploymentType')
    Description = Shapes::StringShape.new(name: 'Description')
    DetailedGlossaryTerm = Shapes::StructureShape.new(name: 'DetailedGlossaryTerm')
    DetailedGlossaryTerms = Shapes::ListShape.new(name: 'DetailedGlossaryTerms')
    DomainDescription = Shapes::StringShape.new(name: 'DomainDescription')
    DomainId = Shapes::StringShape.new(name: 'DomainId')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainStatus = Shapes::StringShape.new(name: 'DomainStatus')
    DomainSummaries = Shapes::ListShape.new(name: 'DomainSummaries')
    DomainSummary = Shapes::StructureShape.new(name: 'DomainSummary')
    EnableSetting = Shapes::StringShape.new(name: 'EnableSetting')
    EnabledRegionList = Shapes::ListShape.new(name: 'EnabledRegionList')
    EntityId = Shapes::StringShape.new(name: 'EntityId')
    EntityType = Shapes::StringShape.new(name: 'EntityType')
    EnvironmentActionList = Shapes::ListShape.new(name: 'EnvironmentActionList')
    EnvironmentBlueprintConfigurationItem = Shapes::StructureShape.new(name: 'EnvironmentBlueprintConfigurationItem')
    EnvironmentBlueprintConfigurations = Shapes::ListShape.new(name: 'EnvironmentBlueprintConfigurations')
    EnvironmentBlueprintId = Shapes::StringShape.new(name: 'EnvironmentBlueprintId')
    EnvironmentBlueprintName = Shapes::StringShape.new(name: 'EnvironmentBlueprintName')
    EnvironmentBlueprintSummaries = Shapes::ListShape.new(name: 'EnvironmentBlueprintSummaries')
    EnvironmentBlueprintSummary = Shapes::StructureShape.new(name: 'EnvironmentBlueprintSummary')
    EnvironmentError = Shapes::StructureShape.new(name: 'EnvironmentError')
    EnvironmentId = Shapes::StringShape.new(name: 'EnvironmentId')
    EnvironmentName = Shapes::StringShape.new(name: 'EnvironmentName')
    EnvironmentParameter = Shapes::StructureShape.new(name: 'EnvironmentParameter')
    EnvironmentParametersList = Shapes::ListShape.new(name: 'EnvironmentParametersList')
    EnvironmentProfileId = Shapes::StringShape.new(name: 'EnvironmentProfileId')
    EnvironmentProfileName = Shapes::StringShape.new(name: 'EnvironmentProfileName')
    EnvironmentProfileSummaries = Shapes::ListShape.new(name: 'EnvironmentProfileSummaries')
    EnvironmentProfileSummary = Shapes::StructureShape.new(name: 'EnvironmentProfileSummary')
    EnvironmentStatus = Shapes::StringShape.new(name: 'EnvironmentStatus')
    EnvironmentSummaries = Shapes::ListShape.new(name: 'EnvironmentSummaries')
    EnvironmentSummary = Shapes::StructureShape.new(name: 'EnvironmentSummary')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExternalIdentifier = Shapes::StringShape.new(name: 'ExternalIdentifier')
    FailureCause = Shapes::StructureShape.new(name: 'FailureCause')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterClause = Shapes::UnionShape.new(name: 'FilterClause')
    FilterExpression = Shapes::StructureShape.new(name: 'FilterExpression')
    FilterExpressionExpressionString = Shapes::StringShape.new(name: 'FilterExpressionExpressionString')
    FilterExpressionType = Shapes::StringShape.new(name: 'FilterExpressionType')
    FilterExpressions = Shapes::ListShape.new(name: 'FilterExpressions')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterValueString = Shapes::StringShape.new(name: 'FilterValueString')
    FirstName = Shapes::StringShape.new(name: 'FirstName')
    Float = Shapes::FloatShape.new(name: 'Float')
    FormEntryInput = Shapes::StructureShape.new(name: 'FormEntryInput')
    FormEntryOutput = Shapes::StructureShape.new(name: 'FormEntryOutput')
    FormInput = Shapes::StructureShape.new(name: 'FormInput')
    FormInputContentString = Shapes::StringShape.new(name: 'FormInputContentString')
    FormInputList = Shapes::ListShape.new(name: 'FormInputList')
    FormName = Shapes::StringShape.new(name: 'FormName')
    FormOutput = Shapes::StructureShape.new(name: 'FormOutput')
    FormOutputList = Shapes::ListShape.new(name: 'FormOutputList')
    FormTypeData = Shapes::StructureShape.new(name: 'FormTypeData')
    FormTypeIdentifier = Shapes::StringShape.new(name: 'FormTypeIdentifier')
    FormTypeName = Shapes::StringShape.new(name: 'FormTypeName')
    FormTypeStatus = Shapes::StringShape.new(name: 'FormTypeStatus')
    Forms = Shapes::StringShape.new(name: 'Forms')
    FormsInputMap = Shapes::MapShape.new(name: 'FormsInputMap')
    FormsOutputMap = Shapes::MapShape.new(name: 'FormsOutputMap')
    GetAssetInput = Shapes::StructureShape.new(name: 'GetAssetInput')
    GetAssetOutput = Shapes::StructureShape.new(name: 'GetAssetOutput')
    GetAssetTypeInput = Shapes::StructureShape.new(name: 'GetAssetTypeInput')
    GetAssetTypeOutput = Shapes::StructureShape.new(name: 'GetAssetTypeOutput')
    GetDataSourceInput = Shapes::StructureShape.new(name: 'GetDataSourceInput')
    GetDataSourceOutput = Shapes::StructureShape.new(name: 'GetDataSourceOutput')
    GetDataSourceRunInput = Shapes::StructureShape.new(name: 'GetDataSourceRunInput')
    GetDataSourceRunOutput = Shapes::StructureShape.new(name: 'GetDataSourceRunOutput')
    GetDomainInput = Shapes::StructureShape.new(name: 'GetDomainInput')
    GetDomainOutput = Shapes::StructureShape.new(name: 'GetDomainOutput')
    GetEnvironmentBlueprintConfigurationInput = Shapes::StructureShape.new(name: 'GetEnvironmentBlueprintConfigurationInput')
    GetEnvironmentBlueprintConfigurationOutput = Shapes::StructureShape.new(name: 'GetEnvironmentBlueprintConfigurationOutput')
    GetEnvironmentBlueprintInput = Shapes::StructureShape.new(name: 'GetEnvironmentBlueprintInput')
    GetEnvironmentBlueprintOutput = Shapes::StructureShape.new(name: 'GetEnvironmentBlueprintOutput')
    GetEnvironmentInput = Shapes::StructureShape.new(name: 'GetEnvironmentInput')
    GetEnvironmentOutput = Shapes::StructureShape.new(name: 'GetEnvironmentOutput')
    GetEnvironmentProfileInput = Shapes::StructureShape.new(name: 'GetEnvironmentProfileInput')
    GetEnvironmentProfileOutput = Shapes::StructureShape.new(name: 'GetEnvironmentProfileOutput')
    GetFormTypeInput = Shapes::StructureShape.new(name: 'GetFormTypeInput')
    GetFormTypeOutput = Shapes::StructureShape.new(name: 'GetFormTypeOutput')
    GetGlossaryInput = Shapes::StructureShape.new(name: 'GetGlossaryInput')
    GetGlossaryOutput = Shapes::StructureShape.new(name: 'GetGlossaryOutput')
    GetGlossaryTermInput = Shapes::StructureShape.new(name: 'GetGlossaryTermInput')
    GetGlossaryTermOutput = Shapes::StructureShape.new(name: 'GetGlossaryTermOutput')
    GetGroupProfileInput = Shapes::StructureShape.new(name: 'GetGroupProfileInput')
    GetGroupProfileOutput = Shapes::StructureShape.new(name: 'GetGroupProfileOutput')
    GetIamPortalLoginUrlInput = Shapes::StructureShape.new(name: 'GetIamPortalLoginUrlInput')
    GetIamPortalLoginUrlOutput = Shapes::StructureShape.new(name: 'GetIamPortalLoginUrlOutput')
    GetListingInput = Shapes::StructureShape.new(name: 'GetListingInput')
    GetListingOutput = Shapes::StructureShape.new(name: 'GetListingOutput')
    GetProjectInput = Shapes::StructureShape.new(name: 'GetProjectInput')
    GetProjectOutput = Shapes::StructureShape.new(name: 'GetProjectOutput')
    GetSubscriptionGrantInput = Shapes::StructureShape.new(name: 'GetSubscriptionGrantInput')
    GetSubscriptionGrantOutput = Shapes::StructureShape.new(name: 'GetSubscriptionGrantOutput')
    GetSubscriptionInput = Shapes::StructureShape.new(name: 'GetSubscriptionInput')
    GetSubscriptionOutput = Shapes::StructureShape.new(name: 'GetSubscriptionOutput')
    GetSubscriptionRequestDetailsInput = Shapes::StructureShape.new(name: 'GetSubscriptionRequestDetailsInput')
    GetSubscriptionRequestDetailsOutput = Shapes::StructureShape.new(name: 'GetSubscriptionRequestDetailsOutput')
    GetSubscriptionRequestDetailsOutputSubscribedListingsList = Shapes::ListShape.new(name: 'GetSubscriptionRequestDetailsOutputSubscribedListingsList')
    GetSubscriptionRequestDetailsOutputSubscribedPrincipalsList = Shapes::ListShape.new(name: 'GetSubscriptionRequestDetailsOutputSubscribedPrincipalsList')
    GetSubscriptionTargetInput = Shapes::StructureShape.new(name: 'GetSubscriptionTargetInput')
    GetSubscriptionTargetOutput = Shapes::StructureShape.new(name: 'GetSubscriptionTargetOutput')
    GetUserProfileInput = Shapes::StructureShape.new(name: 'GetUserProfileInput')
    GetUserProfileOutput = Shapes::StructureShape.new(name: 'GetUserProfileOutput')
    GlossaryDescription = Shapes::StringShape.new(name: 'GlossaryDescription')
    GlossaryId = Shapes::StringShape.new(name: 'GlossaryId')
    GlossaryItem = Shapes::StructureShape.new(name: 'GlossaryItem')
    GlossaryName = Shapes::StringShape.new(name: 'GlossaryName')
    GlossaryStatus = Shapes::StringShape.new(name: 'GlossaryStatus')
    GlossaryTermId = Shapes::StringShape.new(name: 'GlossaryTermId')
    GlossaryTermItem = Shapes::StructureShape.new(name: 'GlossaryTermItem')
    GlossaryTermName = Shapes::StringShape.new(name: 'GlossaryTermName')
    GlossaryTermStatus = Shapes::StringShape.new(name: 'GlossaryTermStatus')
    GlossaryTerms = Shapes::ListShape.new(name: 'GlossaryTerms')
    GlueRunConfigurationInput = Shapes::StructureShape.new(name: 'GlueRunConfigurationInput')
    GlueRunConfigurationInputDataAccessRoleString = Shapes::StringShape.new(name: 'GlueRunConfigurationInputDataAccessRoleString')
    GlueRunConfigurationOutput = Shapes::StructureShape.new(name: 'GlueRunConfigurationOutput')
    GlueRunConfigurationOutputAccountIdString = Shapes::StringShape.new(name: 'GlueRunConfigurationOutputAccountIdString')
    GlueRunConfigurationOutputDataAccessRoleString = Shapes::StringShape.new(name: 'GlueRunConfigurationOutputDataAccessRoleString')
    GlueRunConfigurationOutputRegionString = Shapes::StringShape.new(name: 'GlueRunConfigurationOutputRegionString')
    GrantedEntity = Shapes::UnionShape.new(name: 'GrantedEntity')
    GrantedEntityInput = Shapes::UnionShape.new(name: 'GrantedEntityInput')
    GroupDetails = Shapes::StructureShape.new(name: 'GroupDetails')
    GroupIdentifier = Shapes::StringShape.new(name: 'GroupIdentifier')
    GroupProfileId = Shapes::StringShape.new(name: 'GroupProfileId')
    GroupProfileName = Shapes::StringShape.new(name: 'GroupProfileName')
    GroupProfileStatus = Shapes::StringShape.new(name: 'GroupProfileStatus')
    GroupProfileSummaries = Shapes::ListShape.new(name: 'GroupProfileSummaries')
    GroupProfileSummary = Shapes::StructureShape.new(name: 'GroupProfileSummary')
    GroupSearchText = Shapes::StringShape.new(name: 'GroupSearchText')
    GroupSearchType = Shapes::StringShape.new(name: 'GroupSearchType')
    IamUserProfileDetails = Shapes::StructureShape.new(name: 'IamUserProfileDetails')
    Import = Shapes::StructureShape.new(name: 'Import')
    ImportList = Shapes::ListShape.new(name: 'ImportList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InventorySearchScope = Shapes::StringShape.new(name: 'InventorySearchScope')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LastName = Shapes::StringShape.new(name: 'LastName')
    ListAssetRevisionsInput = Shapes::StructureShape.new(name: 'ListAssetRevisionsInput')
    ListAssetRevisionsOutput = Shapes::StructureShape.new(name: 'ListAssetRevisionsOutput')
    ListDataSourceRunActivitiesInput = Shapes::StructureShape.new(name: 'ListDataSourceRunActivitiesInput')
    ListDataSourceRunActivitiesOutput = Shapes::StructureShape.new(name: 'ListDataSourceRunActivitiesOutput')
    ListDataSourceRunsInput = Shapes::StructureShape.new(name: 'ListDataSourceRunsInput')
    ListDataSourceRunsOutput = Shapes::StructureShape.new(name: 'ListDataSourceRunsOutput')
    ListDataSourcesInput = Shapes::StructureShape.new(name: 'ListDataSourcesInput')
    ListDataSourcesOutput = Shapes::StructureShape.new(name: 'ListDataSourcesOutput')
    ListDomainsInput = Shapes::StructureShape.new(name: 'ListDomainsInput')
    ListDomainsOutput = Shapes::StructureShape.new(name: 'ListDomainsOutput')
    ListEnvironmentBlueprintConfigurationsInput = Shapes::StructureShape.new(name: 'ListEnvironmentBlueprintConfigurationsInput')
    ListEnvironmentBlueprintConfigurationsOutput = Shapes::StructureShape.new(name: 'ListEnvironmentBlueprintConfigurationsOutput')
    ListEnvironmentBlueprintsInput = Shapes::StructureShape.new(name: 'ListEnvironmentBlueprintsInput')
    ListEnvironmentBlueprintsOutput = Shapes::StructureShape.new(name: 'ListEnvironmentBlueprintsOutput')
    ListEnvironmentProfilesInput = Shapes::StructureShape.new(name: 'ListEnvironmentProfilesInput')
    ListEnvironmentProfilesOutput = Shapes::StructureShape.new(name: 'ListEnvironmentProfilesOutput')
    ListEnvironmentsInput = Shapes::StructureShape.new(name: 'ListEnvironmentsInput')
    ListEnvironmentsOutput = Shapes::StructureShape.new(name: 'ListEnvironmentsOutput')
    ListNotificationsInput = Shapes::StructureShape.new(name: 'ListNotificationsInput')
    ListNotificationsOutput = Shapes::StructureShape.new(name: 'ListNotificationsOutput')
    ListProjectMembershipsInput = Shapes::StructureShape.new(name: 'ListProjectMembershipsInput')
    ListProjectMembershipsOutput = Shapes::StructureShape.new(name: 'ListProjectMembershipsOutput')
    ListProjectsInput = Shapes::StructureShape.new(name: 'ListProjectsInput')
    ListProjectsOutput = Shapes::StructureShape.new(name: 'ListProjectsOutput')
    ListSubscriptionGrantsInput = Shapes::StructureShape.new(name: 'ListSubscriptionGrantsInput')
    ListSubscriptionGrantsOutput = Shapes::StructureShape.new(name: 'ListSubscriptionGrantsOutput')
    ListSubscriptionRequestsInput = Shapes::StructureShape.new(name: 'ListSubscriptionRequestsInput')
    ListSubscriptionRequestsOutput = Shapes::StructureShape.new(name: 'ListSubscriptionRequestsOutput')
    ListSubscriptionTargetsInput = Shapes::StructureShape.new(name: 'ListSubscriptionTargetsInput')
    ListSubscriptionTargetsOutput = Shapes::StructureShape.new(name: 'ListSubscriptionTargetsOutput')
    ListSubscriptionsInput = Shapes::StructureShape.new(name: 'ListSubscriptionsInput')
    ListSubscriptionsOutput = Shapes::StructureShape.new(name: 'ListSubscriptionsOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListingId = Shapes::StringShape.new(name: 'ListingId')
    ListingItem = Shapes::UnionShape.new(name: 'ListingItem')
    ListingName = Shapes::StringShape.new(name: 'ListingName')
    ListingRevision = Shapes::StructureShape.new(name: 'ListingRevision')
    ListingRevisionInput = Shapes::StructureShape.new(name: 'ListingRevisionInput')
    ListingStatus = Shapes::StringShape.new(name: 'ListingStatus')
    LongDescription = Shapes::StringShape.new(name: 'LongDescription')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxResultsForListDomains = Shapes::IntegerShape.new(name: 'MaxResultsForListDomains')
    Member = Shapes::UnionShape.new(name: 'Member')
    MemberDetails = Shapes::UnionShape.new(name: 'MemberDetails')
    Message = Shapes::StringShape.new(name: 'Message')
    MetadataMap = Shapes::MapShape.new(name: 'MetadataMap')
    Model = Shapes::UnionShape.new(name: 'Model')
    Name = Shapes::StringShape.new(name: 'Name')
    NotificationOutput = Shapes::StructureShape.new(name: 'NotificationOutput')
    NotificationResource = Shapes::StructureShape.new(name: 'NotificationResource')
    NotificationResourceType = Shapes::StringShape.new(name: 'NotificationResourceType')
    NotificationRole = Shapes::StringShape.new(name: 'NotificationRole')
    NotificationSubjects = Shapes::ListShape.new(name: 'NotificationSubjects')
    NotificationType = Shapes::StringShape.new(name: 'NotificationType')
    NotificationsList = Shapes::ListShape.new(name: 'NotificationsList')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PredictionChoices = Shapes::ListShape.new(name: 'PredictionChoices')
    PredictionConfiguration = Shapes::StructureShape.new(name: 'PredictionConfiguration')
    ProjectId = Shapes::StringShape.new(name: 'ProjectId')
    ProjectMember = Shapes::StructureShape.new(name: 'ProjectMember')
    ProjectMembers = Shapes::ListShape.new(name: 'ProjectMembers')
    ProjectName = Shapes::StringShape.new(name: 'ProjectName')
    ProjectSummaries = Shapes::ListShape.new(name: 'ProjectSummaries')
    ProjectSummary = Shapes::StructureShape.new(name: 'ProjectSummary')
    ProvisioningProperties = Shapes::UnionShape.new(name: 'ProvisioningProperties')
    PutEnvironmentBlueprintConfigurationInput = Shapes::StructureShape.new(name: 'PutEnvironmentBlueprintConfigurationInput')
    PutEnvironmentBlueprintConfigurationOutput = Shapes::StructureShape.new(name: 'PutEnvironmentBlueprintConfigurationOutput')
    RecommendationConfiguration = Shapes::StructureShape.new(name: 'RecommendationConfiguration')
    RedshiftClusterStorage = Shapes::StructureShape.new(name: 'RedshiftClusterStorage')
    RedshiftClusterStorageClusterNameString = Shapes::StringShape.new(name: 'RedshiftClusterStorageClusterNameString')
    RedshiftCredentialConfiguration = Shapes::StructureShape.new(name: 'RedshiftCredentialConfiguration')
    RedshiftCredentialConfigurationSecretManagerArnString = Shapes::StringShape.new(name: 'RedshiftCredentialConfigurationSecretManagerArnString')
    RedshiftRunConfigurationInput = Shapes::StructureShape.new(name: 'RedshiftRunConfigurationInput')
    RedshiftRunConfigurationInputDataAccessRoleString = Shapes::StringShape.new(name: 'RedshiftRunConfigurationInputDataAccessRoleString')
    RedshiftRunConfigurationOutput = Shapes::StructureShape.new(name: 'RedshiftRunConfigurationOutput')
    RedshiftRunConfigurationOutputAccountIdString = Shapes::StringShape.new(name: 'RedshiftRunConfigurationOutputAccountIdString')
    RedshiftRunConfigurationOutputDataAccessRoleString = Shapes::StringShape.new(name: 'RedshiftRunConfigurationOutputDataAccessRoleString')
    RedshiftRunConfigurationOutputRegionString = Shapes::StringShape.new(name: 'RedshiftRunConfigurationOutputRegionString')
    RedshiftServerlessStorage = Shapes::StructureShape.new(name: 'RedshiftServerlessStorage')
    RedshiftServerlessStorageWorkgroupNameString = Shapes::StringShape.new(name: 'RedshiftServerlessStorageWorkgroupNameString')
    RedshiftStorage = Shapes::UnionShape.new(name: 'RedshiftStorage')
    RegionName = Shapes::StringShape.new(name: 'RegionName')
    RegionalParameter = Shapes::MapShape.new(name: 'RegionalParameter')
    RegionalParameterMap = Shapes::MapShape.new(name: 'RegionalParameterMap')
    RejectChoice = Shapes::StructureShape.new(name: 'RejectChoice')
    RejectChoices = Shapes::ListShape.new(name: 'RejectChoices')
    RejectPredictionsInput = Shapes::StructureShape.new(name: 'RejectPredictionsInput')
    RejectPredictionsOutput = Shapes::StructureShape.new(name: 'RejectPredictionsOutput')
    RejectRule = Shapes::StructureShape.new(name: 'RejectRule')
    RejectRuleBehavior = Shapes::StringShape.new(name: 'RejectRuleBehavior')
    RejectSubscriptionRequestInput = Shapes::StructureShape.new(name: 'RejectSubscriptionRequestInput')
    RejectSubscriptionRequestOutput = Shapes::StructureShape.new(name: 'RejectSubscriptionRequestOutput')
    RejectSubscriptionRequestOutputSubscribedListingsList = Shapes::ListShape.new(name: 'RejectSubscriptionRequestOutputSubscribedListingsList')
    RejectSubscriptionRequestOutputSubscribedPrincipalsList = Shapes::ListShape.new(name: 'RejectSubscriptionRequestOutputSubscribedPrincipalsList')
    RelationalFilterConfiguration = Shapes::StructureShape.new(name: 'RelationalFilterConfiguration')
    RelationalFilterConfigurationDatabaseNameString = Shapes::StringShape.new(name: 'RelationalFilterConfigurationDatabaseNameString')
    RelationalFilterConfigurationSchemaNameString = Shapes::StringShape.new(name: 'RelationalFilterConfigurationSchemaNameString')
    RelationalFilterConfigurations = Shapes::ListShape.new(name: 'RelationalFilterConfigurations')
    RequestReason = Shapes::StringShape.new(name: 'RequestReason')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceList = Shapes::ListShape.new(name: 'ResourceList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Revision = Shapes::StringShape.new(name: 'Revision')
    RevokeSubscriptionInput = Shapes::StructureShape.new(name: 'RevokeSubscriptionInput')
    RevokeSubscriptionOutput = Shapes::StructureShape.new(name: 'RevokeSubscriptionOutput')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RunStatisticsForAssets = Shapes::StructureShape.new(name: 'RunStatisticsForAssets')
    ScheduleConfiguration = Shapes::StructureShape.new(name: 'ScheduleConfiguration')
    SearchGroupProfilesInput = Shapes::StructureShape.new(name: 'SearchGroupProfilesInput')
    SearchGroupProfilesOutput = Shapes::StructureShape.new(name: 'SearchGroupProfilesOutput')
    SearchInItem = Shapes::StructureShape.new(name: 'SearchInItem')
    SearchInList = Shapes::ListShape.new(name: 'SearchInList')
    SearchInput = Shapes::StructureShape.new(name: 'SearchInput')
    SearchInventoryResultItem = Shapes::UnionShape.new(name: 'SearchInventoryResultItem')
    SearchInventoryResultItems = Shapes::ListShape.new(name: 'SearchInventoryResultItems')
    SearchListingsInput = Shapes::StructureShape.new(name: 'SearchListingsInput')
    SearchListingsOutput = Shapes::StructureShape.new(name: 'SearchListingsOutput')
    SearchOutput = Shapes::StructureShape.new(name: 'SearchOutput')
    SearchOutputAdditionalAttribute = Shapes::StringShape.new(name: 'SearchOutputAdditionalAttribute')
    SearchOutputAdditionalAttributes = Shapes::ListShape.new(name: 'SearchOutputAdditionalAttributes')
    SearchResultItem = Shapes::UnionShape.new(name: 'SearchResultItem')
    SearchResultItems = Shapes::ListShape.new(name: 'SearchResultItems')
    SearchSort = Shapes::StructureShape.new(name: 'SearchSort')
    SearchText = Shapes::StringShape.new(name: 'SearchText')
    SearchTypesInput = Shapes::StructureShape.new(name: 'SearchTypesInput')
    SearchTypesOutput = Shapes::StructureShape.new(name: 'SearchTypesOutput')
    SearchTypesResultItem = Shapes::UnionShape.new(name: 'SearchTypesResultItem')
    SearchTypesResultItems = Shapes::ListShape.new(name: 'SearchTypesResultItems')
    SearchUserProfilesInput = Shapes::StructureShape.new(name: 'SearchUserProfilesInput')
    SearchUserProfilesOutput = Shapes::StructureShape.new(name: 'SearchUserProfilesOutput')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ShortDescription = Shapes::StringShape.new(name: 'ShortDescription')
    SingleSignOn = Shapes::StructureShape.new(name: 'SingleSignOn')
    Smithy = Shapes::StringShape.new(name: 'Smithy')
    SortFieldProject = Shapes::StringShape.new(name: 'SortFieldProject')
    SortKey = Shapes::StringShape.new(name: 'SortKey')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    SsoUserProfileDetails = Shapes::StructureShape.new(name: 'SsoUserProfileDetails')
    StartDataSourceRunInput = Shapes::StructureShape.new(name: 'StartDataSourceRunInput')
    StartDataSourceRunOutput = Shapes::StructureShape.new(name: 'StartDataSourceRunOutput')
    String = Shapes::StringShape.new(name: 'String')
    SubscribedAsset = Shapes::StructureShape.new(name: 'SubscribedAsset')
    SubscribedAssetListing = Shapes::StructureShape.new(name: 'SubscribedAssetListing')
    SubscribedAssets = Shapes::ListShape.new(name: 'SubscribedAssets')
    SubscribedListing = Shapes::StructureShape.new(name: 'SubscribedListing')
    SubscribedListingInput = Shapes::StructureShape.new(name: 'SubscribedListingInput')
    SubscribedListingInputs = Shapes::ListShape.new(name: 'SubscribedListingInputs')
    SubscribedListingItem = Shapes::UnionShape.new(name: 'SubscribedListingItem')
    SubscribedPrincipal = Shapes::UnionShape.new(name: 'SubscribedPrincipal')
    SubscribedPrincipalInput = Shapes::UnionShape.new(name: 'SubscribedPrincipalInput')
    SubscribedPrincipalInputs = Shapes::ListShape.new(name: 'SubscribedPrincipalInputs')
    SubscribedProject = Shapes::StructureShape.new(name: 'SubscribedProject')
    SubscribedProjectInput = Shapes::StructureShape.new(name: 'SubscribedProjectInput')
    SubscriptionGrantId = Shapes::StringShape.new(name: 'SubscriptionGrantId')
    SubscriptionGrantOverallStatus = Shapes::StringShape.new(name: 'SubscriptionGrantOverallStatus')
    SubscriptionGrantStatus = Shapes::StringShape.new(name: 'SubscriptionGrantStatus')
    SubscriptionGrantSummary = Shapes::StructureShape.new(name: 'SubscriptionGrantSummary')
    SubscriptionGrants = Shapes::ListShape.new(name: 'SubscriptionGrants')
    SubscriptionId = Shapes::StringShape.new(name: 'SubscriptionId')
    SubscriptionRequestId = Shapes::StringShape.new(name: 'SubscriptionRequestId')
    SubscriptionRequestStatus = Shapes::StringShape.new(name: 'SubscriptionRequestStatus')
    SubscriptionRequestSummary = Shapes::StructureShape.new(name: 'SubscriptionRequestSummary')
    SubscriptionRequestSummarySubscribedListingsList = Shapes::ListShape.new(name: 'SubscriptionRequestSummarySubscribedListingsList')
    SubscriptionRequestSummarySubscribedPrincipalsList = Shapes::ListShape.new(name: 'SubscriptionRequestSummarySubscribedPrincipalsList')
    SubscriptionRequests = Shapes::ListShape.new(name: 'SubscriptionRequests')
    SubscriptionStatus = Shapes::StringShape.new(name: 'SubscriptionStatus')
    SubscriptionSummary = Shapes::StructureShape.new(name: 'SubscriptionSummary')
    SubscriptionTargetForm = Shapes::StructureShape.new(name: 'SubscriptionTargetForm')
    SubscriptionTargetForms = Shapes::ListShape.new(name: 'SubscriptionTargetForms')
    SubscriptionTargetId = Shapes::StringShape.new(name: 'SubscriptionTargetId')
    SubscriptionTargetName = Shapes::StringShape.new(name: 'SubscriptionTargetName')
    SubscriptionTargetSummary = Shapes::StructureShape.new(name: 'SubscriptionTargetSummary')
    SubscriptionTargets = Shapes::ListShape.new(name: 'SubscriptionTargets')
    Subscriptions = Shapes::ListShape.new(name: 'Subscriptions')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TaskId = Shapes::StringShape.new(name: 'TaskId')
    TaskStatus = Shapes::StringShape.new(name: 'TaskStatus')
    TermRelations = Shapes::StructureShape.new(name: 'TermRelations')
    TermRelationsClassifiesList = Shapes::ListShape.new(name: 'TermRelationsClassifiesList')
    TermRelationsIsAList = Shapes::ListShape.new(name: 'TermRelationsIsAList')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Timezone = Shapes::StringShape.new(name: 'Timezone')
    Title = Shapes::StringShape.new(name: 'Title')
    Topic = Shapes::StructureShape.new(name: 'Topic')
    TypeName = Shapes::StringShape.new(name: 'TypeName')
    TypesSearchScope = Shapes::StringShape.new(name: 'TypesSearchScope')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDataSourceInput = Shapes::StructureShape.new(name: 'UpdateDataSourceInput')
    UpdateDataSourceOutput = Shapes::StructureShape.new(name: 'UpdateDataSourceOutput')
    UpdateDomainInput = Shapes::StructureShape.new(name: 'UpdateDomainInput')
    UpdateDomainOutput = Shapes::StructureShape.new(name: 'UpdateDomainOutput')
    UpdateEnvironmentInput = Shapes::StructureShape.new(name: 'UpdateEnvironmentInput')
    UpdateEnvironmentOutput = Shapes::StructureShape.new(name: 'UpdateEnvironmentOutput')
    UpdateEnvironmentProfileInput = Shapes::StructureShape.new(name: 'UpdateEnvironmentProfileInput')
    UpdateEnvironmentProfileOutput = Shapes::StructureShape.new(name: 'UpdateEnvironmentProfileOutput')
    UpdateGlossaryInput = Shapes::StructureShape.new(name: 'UpdateGlossaryInput')
    UpdateGlossaryOutput = Shapes::StructureShape.new(name: 'UpdateGlossaryOutput')
    UpdateGlossaryTermInput = Shapes::StructureShape.new(name: 'UpdateGlossaryTermInput')
    UpdateGlossaryTermOutput = Shapes::StructureShape.new(name: 'UpdateGlossaryTermOutput')
    UpdateGroupProfileInput = Shapes::StructureShape.new(name: 'UpdateGroupProfileInput')
    UpdateGroupProfileOutput = Shapes::StructureShape.new(name: 'UpdateGroupProfileOutput')
    UpdateProjectInput = Shapes::StructureShape.new(name: 'UpdateProjectInput')
    UpdateProjectOutput = Shapes::StructureShape.new(name: 'UpdateProjectOutput')
    UpdateSubscriptionGrantStatusInput = Shapes::StructureShape.new(name: 'UpdateSubscriptionGrantStatusInput')
    UpdateSubscriptionGrantStatusOutput = Shapes::StructureShape.new(name: 'UpdateSubscriptionGrantStatusOutput')
    UpdateSubscriptionRequestInput = Shapes::StructureShape.new(name: 'UpdateSubscriptionRequestInput')
    UpdateSubscriptionRequestOutput = Shapes::StructureShape.new(name: 'UpdateSubscriptionRequestOutput')
    UpdateSubscriptionRequestOutputSubscribedListingsList = Shapes::ListShape.new(name: 'UpdateSubscriptionRequestOutputSubscribedListingsList')
    UpdateSubscriptionRequestOutputSubscribedPrincipalsList = Shapes::ListShape.new(name: 'UpdateSubscriptionRequestOutputSubscribedPrincipalsList')
    UpdateSubscriptionTargetInput = Shapes::StructureShape.new(name: 'UpdateSubscriptionTargetInput')
    UpdateSubscriptionTargetOutput = Shapes::StructureShape.new(name: 'UpdateSubscriptionTargetOutput')
    UpdateUserProfileInput = Shapes::StructureShape.new(name: 'UpdateUserProfileInput')
    UpdateUserProfileOutput = Shapes::StructureShape.new(name: 'UpdateUserProfileOutput')
    UpdatedAt = Shapes::TimestampShape.new(name: 'UpdatedAt')
    UpdatedBy = Shapes::StringShape.new(name: 'UpdatedBy')
    UserAssignment = Shapes::StringShape.new(name: 'UserAssignment')
    UserDesignation = Shapes::StringShape.new(name: 'UserDesignation')
    UserDetails = Shapes::StructureShape.new(name: 'UserDetails')
    UserIdentifier = Shapes::StringShape.new(name: 'UserIdentifier')
    UserProfileDetails = Shapes::UnionShape.new(name: 'UserProfileDetails')
    UserProfileId = Shapes::StringShape.new(name: 'UserProfileId')
    UserProfileName = Shapes::StringShape.new(name: 'UserProfileName')
    UserProfileStatus = Shapes::StringShape.new(name: 'UserProfileStatus')
    UserProfileSummaries = Shapes::ListShape.new(name: 'UserProfileSummaries')
    UserProfileSummary = Shapes::StructureShape.new(name: 'UserProfileSummary')
    UserProfileType = Shapes::StringShape.new(name: 'UserProfileType')
    UserSearchText = Shapes::StringShape.new(name: 'UserSearchText')
    UserSearchType = Shapes::StringShape.new(name: 'UserSearchType')
    UserType = Shapes::StringShape.new(name: 'UserType')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AcceptChoice.add_member(:prediction_choice, Shapes::ShapeRef.new(shape: Integer, location_name: "predictionChoice"))
    AcceptChoice.add_member(:prediction_target, Shapes::ShapeRef.new(shape: String, location_name: "predictionTarget"))
    AcceptChoice.struct_class = Types::AcceptChoice

    AcceptChoices.member = Shapes::ShapeRef.new(shape: AcceptChoice)

    AcceptPredictionsInput.add_member(:accept_choices, Shapes::ShapeRef.new(shape: AcceptChoices, location_name: "acceptChoices"))
    AcceptPredictionsInput.add_member(:accept_rule, Shapes::ShapeRef.new(shape: AcceptRule, location_name: "acceptRule"))
    AcceptPredictionsInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    AcceptPredictionsInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    AcceptPredictionsInput.add_member(:identifier, Shapes::ShapeRef.new(shape: AssetIdentifier, required: true, location: "uri", location_name: "identifier"))
    AcceptPredictionsInput.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, location: "querystring", location_name: "revision"))
    AcceptPredictionsInput.struct_class = Types::AcceptPredictionsInput

    AcceptPredictionsOutput.add_member(:asset_id, Shapes::ShapeRef.new(shape: AssetId, required: true, location_name: "assetId"))
    AcceptPredictionsOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    AcceptPredictionsOutput.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "revision"))
    AcceptPredictionsOutput.struct_class = Types::AcceptPredictionsOutput

    AcceptRule.add_member(:rule, Shapes::ShapeRef.new(shape: AcceptRuleBehavior, location_name: "rule"))
    AcceptRule.add_member(:threshold, Shapes::ShapeRef.new(shape: Float, location_name: "threshold"))
    AcceptRule.struct_class = Types::AcceptRule

    AcceptSubscriptionRequestInput.add_member(:decision_comment, Shapes::ShapeRef.new(shape: DecisionComment, location_name: "decisionComment"))
    AcceptSubscriptionRequestInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    AcceptSubscriptionRequestInput.add_member(:identifier, Shapes::ShapeRef.new(shape: SubscriptionRequestId, required: true, location: "uri", location_name: "identifier"))
    AcceptSubscriptionRequestInput.struct_class = Types::AcceptSubscriptionRequestInput

    AcceptSubscriptionRequestOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    AcceptSubscriptionRequestOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    AcceptSubscriptionRequestOutput.add_member(:decision_comment, Shapes::ShapeRef.new(shape: DecisionComment, location_name: "decisionComment"))
    AcceptSubscriptionRequestOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    AcceptSubscriptionRequestOutput.add_member(:id, Shapes::ShapeRef.new(shape: SubscriptionRequestId, required: true, location_name: "id"))
    AcceptSubscriptionRequestOutput.add_member(:request_reason, Shapes::ShapeRef.new(shape: RequestReason, required: true, location_name: "requestReason"))
    AcceptSubscriptionRequestOutput.add_member(:reviewer_id, Shapes::ShapeRef.new(shape: String, location_name: "reviewerId"))
    AcceptSubscriptionRequestOutput.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionRequestStatus, required: true, location_name: "status"))
    AcceptSubscriptionRequestOutput.add_member(:subscribed_listings, Shapes::ShapeRef.new(shape: AcceptSubscriptionRequestOutputSubscribedListingsList, required: true, location_name: "subscribedListings"))
    AcceptSubscriptionRequestOutput.add_member(:subscribed_principals, Shapes::ShapeRef.new(shape: AcceptSubscriptionRequestOutputSubscribedPrincipalsList, required: true, location_name: "subscribedPrincipals"))
    AcceptSubscriptionRequestOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, required: true, location_name: "updatedAt"))
    AcceptSubscriptionRequestOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    AcceptSubscriptionRequestOutput.struct_class = Types::AcceptSubscriptionRequestOutput

    AcceptSubscriptionRequestOutputSubscribedListingsList.member = Shapes::ShapeRef.new(shape: SubscribedListing)

    AcceptSubscriptionRequestOutputSubscribedPrincipalsList.member = Shapes::ShapeRef.new(shape: SubscribedPrincipal)

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ApplicableAssetTypes.member = Shapes::ShapeRef.new(shape: TypeName)

    AssetItem.add_member(:additional_attributes, Shapes::ShapeRef.new(shape: AssetItemAdditionalAttributes, location_name: "additionalAttributes"))
    AssetItem.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    AssetItem.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    AssetItem.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AssetItem.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    AssetItem.add_member(:external_identifier, Shapes::ShapeRef.new(shape: ExternalIdentifier, location_name: "externalIdentifier"))
    AssetItem.add_member(:first_revision_created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "firstRevisionCreatedAt"))
    AssetItem.add_member(:first_revision_created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "firstRevisionCreatedBy"))
    AssetItem.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: GlossaryTerms, location_name: "glossaryTerms"))
    AssetItem.add_member(:identifier, Shapes::ShapeRef.new(shape: AssetIdentifier, required: true, location_name: "identifier"))
    AssetItem.add_member(:name, Shapes::ShapeRef.new(shape: AssetName, required: true, location_name: "name"))
    AssetItem.add_member(:owning_project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "owningProjectId"))
    AssetItem.add_member(:type_identifier, Shapes::ShapeRef.new(shape: AssetTypeIdentifier, required: true, location_name: "typeIdentifier"))
    AssetItem.add_member(:type_revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "typeRevision"))
    AssetItem.struct_class = Types::AssetItem

    AssetItemAdditionalAttributes.add_member(:forms_output, Shapes::ShapeRef.new(shape: FormOutputList, location_name: "formsOutput"))
    AssetItemAdditionalAttributes.add_member(:read_only_forms_output, Shapes::ShapeRef.new(shape: FormOutputList, location_name: "readOnlyFormsOutput"))
    AssetItemAdditionalAttributes.struct_class = Types::AssetItemAdditionalAttributes

    AssetListing.add_member(:asset_id, Shapes::ShapeRef.new(shape: AssetId, location_name: "assetId"))
    AssetListing.add_member(:asset_revision, Shapes::ShapeRef.new(shape: Revision, location_name: "assetRevision"))
    AssetListing.add_member(:asset_type, Shapes::ShapeRef.new(shape: TypeName, location_name: "assetType"))
    AssetListing.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    AssetListing.add_member(:forms, Shapes::ShapeRef.new(shape: Forms, location_name: "forms"))
    AssetListing.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: DetailedGlossaryTerms, location_name: "glossaryTerms"))
    AssetListing.add_member(:owning_project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "owningProjectId"))
    AssetListing.struct_class = Types::AssetListing

    AssetListingDetails.add_member(:listing_id, Shapes::ShapeRef.new(shape: ListingId, required: true, location_name: "listingId"))
    AssetListingDetails.add_member(:listing_status, Shapes::ShapeRef.new(shape: ListingStatus, required: true, location_name: "listingStatus"))
    AssetListingDetails.struct_class = Types::AssetListingDetails

    AssetListingItem.add_member(:additional_attributes, Shapes::ShapeRef.new(shape: AssetListingItemAdditionalAttributes, location_name: "additionalAttributes"))
    AssetListingItem.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    AssetListingItem.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AssetListingItem.add_member(:entity_id, Shapes::ShapeRef.new(shape: AssetId, location_name: "entityId"))
    AssetListingItem.add_member(:entity_revision, Shapes::ShapeRef.new(shape: Revision, location_name: "entityRevision"))
    AssetListingItem.add_member(:entity_type, Shapes::ShapeRef.new(shape: TypeName, location_name: "entityType"))
    AssetListingItem.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: DetailedGlossaryTerms, location_name: "glossaryTerms"))
    AssetListingItem.add_member(:listing_created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "listingCreatedBy"))
    AssetListingItem.add_member(:listing_id, Shapes::ShapeRef.new(shape: ListingId, location_name: "listingId"))
    AssetListingItem.add_member(:listing_revision, Shapes::ShapeRef.new(shape: Revision, location_name: "listingRevision"))
    AssetListingItem.add_member(:listing_updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "listingUpdatedBy"))
    AssetListingItem.add_member(:name, Shapes::ShapeRef.new(shape: AssetName, location_name: "name"))
    AssetListingItem.add_member(:owning_project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "owningProjectId"))
    AssetListingItem.struct_class = Types::AssetListingItem

    AssetListingItemAdditionalAttributes.add_member(:forms, Shapes::ShapeRef.new(shape: Forms, location_name: "forms"))
    AssetListingItemAdditionalAttributes.struct_class = Types::AssetListingItemAdditionalAttributes

    AssetRevision.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    AssetRevision.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    AssetRevision.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "domainId"))
    AssetRevision.add_member(:id, Shapes::ShapeRef.new(shape: AssetId, location_name: "id"))
    AssetRevision.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, location_name: "revision"))
    AssetRevision.struct_class = Types::AssetRevision

    AssetRevisions.member = Shapes::ShapeRef.new(shape: AssetRevision)

    AssetTargetNameMap.add_member(:asset_id, Shapes::ShapeRef.new(shape: AssetId, required: true, location_name: "assetId"))
    AssetTargetNameMap.add_member(:target_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "targetName"))
    AssetTargetNameMap.struct_class = Types::AssetTargetNameMap

    AssetTargetNames.member = Shapes::ShapeRef.new(shape: AssetTargetNameMap)

    AssetTypeItem.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    AssetTypeItem.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    AssetTypeItem.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AssetTypeItem.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    AssetTypeItem.add_member(:forms_output, Shapes::ShapeRef.new(shape: FormsOutputMap, required: true, location_name: "formsOutput"))
    AssetTypeItem.add_member(:name, Shapes::ShapeRef.new(shape: TypeName, required: true, location_name: "name"))
    AssetTypeItem.add_member(:origin_domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "originDomainId"))
    AssetTypeItem.add_member(:origin_project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "originProjectId"))
    AssetTypeItem.add_member(:owning_project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "owningProjectId"))
    AssetTypeItem.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "revision"))
    AssetTypeItem.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    AssetTypeItem.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    AssetTypeItem.struct_class = Types::AssetTypeItem

    AuthorizedPrincipalIdentifiers.member = Shapes::ShapeRef.new(shape: AuthorizedPrincipalIdentifier)

    BusinessNameGenerationConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    BusinessNameGenerationConfiguration.struct_class = Types::BusinessNameGenerationConfiguration

    CancelSubscriptionInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    CancelSubscriptionInput.add_member(:identifier, Shapes::ShapeRef.new(shape: SubscriptionId, required: true, location: "uri", location_name: "identifier"))
    CancelSubscriptionInput.struct_class = Types::CancelSubscriptionInput

    CancelSubscriptionOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    CancelSubscriptionOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    CancelSubscriptionOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CancelSubscriptionOutput.add_member(:id, Shapes::ShapeRef.new(shape: SubscriptionId, required: true, location_name: "id"))
    CancelSubscriptionOutput.add_member(:retain_permissions, Shapes::ShapeRef.new(shape: Boolean, location_name: "retainPermissions"))
    CancelSubscriptionOutput.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionStatus, required: true, location_name: "status"))
    CancelSubscriptionOutput.add_member(:subscribed_listing, Shapes::ShapeRef.new(shape: SubscribedListing, required: true, location_name: "subscribedListing"))
    CancelSubscriptionOutput.add_member(:subscribed_principal, Shapes::ShapeRef.new(shape: SubscribedPrincipal, required: true, location_name: "subscribedPrincipal"))
    CancelSubscriptionOutput.add_member(:subscription_request_id, Shapes::ShapeRef.new(shape: SubscriptionRequestId, location_name: "subscriptionRequestId"))
    CancelSubscriptionOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, required: true, location_name: "updatedAt"))
    CancelSubscriptionOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    CancelSubscriptionOutput.struct_class = Types::CancelSubscriptionOutput

    CloudFormationProperties.add_member(:template_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "templateUrl"))
    CloudFormationProperties.struct_class = Types::CloudFormationProperties

    ConfigurableActionParameter.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "key"))
    ConfigurableActionParameter.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    ConfigurableActionParameter.struct_class = Types::ConfigurableActionParameter

    ConfigurableActionParameterList.member = Shapes::ShapeRef.new(shape: ConfigurableActionParameter)

    ConfigurableEnvironmentAction.add_member(:auth, Shapes::ShapeRef.new(shape: ConfigurableActionTypeAuthorization, location_name: "auth"))
    ConfigurableEnvironmentAction.add_member(:parameters, Shapes::ShapeRef.new(shape: ConfigurableActionParameterList, required: true, location_name: "parameters"))
    ConfigurableEnvironmentAction.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    ConfigurableEnvironmentAction.struct_class = Types::ConfigurableEnvironmentAction

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateAssetInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAssetInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateAssetInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    CreateAssetInput.add_member(:external_identifier, Shapes::ShapeRef.new(shape: ExternalIdentifier, location_name: "externalIdentifier"))
    CreateAssetInput.add_member(:forms_input, Shapes::ShapeRef.new(shape: FormInputList, location_name: "formsInput"))
    CreateAssetInput.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: GlossaryTerms, location_name: "glossaryTerms"))
    CreateAssetInput.add_member(:name, Shapes::ShapeRef.new(shape: AssetName, required: true, location_name: "name"))
    CreateAssetInput.add_member(:owning_project_identifier, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "owningProjectIdentifier"))
    CreateAssetInput.add_member(:prediction_configuration, Shapes::ShapeRef.new(shape: PredictionConfiguration, location_name: "predictionConfiguration"))
    CreateAssetInput.add_member(:type_identifier, Shapes::ShapeRef.new(shape: AssetTypeIdentifier, required: true, location_name: "typeIdentifier"))
    CreateAssetInput.add_member(:type_revision, Shapes::ShapeRef.new(shape: Revision, location_name: "typeRevision"))
    CreateAssetInput.struct_class = Types::CreateAssetInput

    CreateAssetOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    CreateAssetOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    CreateAssetOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateAssetOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CreateAssetOutput.add_member(:external_identifier, Shapes::ShapeRef.new(shape: ExternalIdentifier, location_name: "externalIdentifier"))
    CreateAssetOutput.add_member(:first_revision_created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "firstRevisionCreatedAt"))
    CreateAssetOutput.add_member(:first_revision_created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "firstRevisionCreatedBy"))
    CreateAssetOutput.add_member(:forms_output, Shapes::ShapeRef.new(shape: FormOutputList, required: true, location_name: "formsOutput"))
    CreateAssetOutput.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: GlossaryTerms, location_name: "glossaryTerms"))
    CreateAssetOutput.add_member(:id, Shapes::ShapeRef.new(shape: AssetId, required: true, location_name: "id"))
    CreateAssetOutput.add_member(:listing, Shapes::ShapeRef.new(shape: AssetListingDetails, location_name: "listing"))
    CreateAssetOutput.add_member(:name, Shapes::ShapeRef.new(shape: AssetName, required: true, location_name: "name"))
    CreateAssetOutput.add_member(:owning_project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "owningProjectId"))
    CreateAssetOutput.add_member(:prediction_configuration, Shapes::ShapeRef.new(shape: PredictionConfiguration, location_name: "predictionConfiguration"))
    CreateAssetOutput.add_member(:read_only_forms_output, Shapes::ShapeRef.new(shape: FormOutputList, location_name: "readOnlyFormsOutput"))
    CreateAssetOutput.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "revision"))
    CreateAssetOutput.add_member(:type_identifier, Shapes::ShapeRef.new(shape: AssetTypeIdentifier, required: true, location_name: "typeIdentifier"))
    CreateAssetOutput.add_member(:type_revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "typeRevision"))
    CreateAssetOutput.struct_class = Types::CreateAssetOutput

    CreateAssetRevisionInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAssetRevisionInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateAssetRevisionInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    CreateAssetRevisionInput.add_member(:forms_input, Shapes::ShapeRef.new(shape: FormInputList, location_name: "formsInput"))
    CreateAssetRevisionInput.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: GlossaryTerms, location_name: "glossaryTerms"))
    CreateAssetRevisionInput.add_member(:identifier, Shapes::ShapeRef.new(shape: AssetIdentifier, required: true, location: "uri", location_name: "identifier"))
    CreateAssetRevisionInput.add_member(:name, Shapes::ShapeRef.new(shape: AssetName, required: true, location_name: "name"))
    CreateAssetRevisionInput.add_member(:prediction_configuration, Shapes::ShapeRef.new(shape: PredictionConfiguration, location_name: "predictionConfiguration"))
    CreateAssetRevisionInput.add_member(:type_revision, Shapes::ShapeRef.new(shape: Revision, location_name: "typeRevision"))
    CreateAssetRevisionInput.struct_class = Types::CreateAssetRevisionInput

    CreateAssetRevisionOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    CreateAssetRevisionOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    CreateAssetRevisionOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateAssetRevisionOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CreateAssetRevisionOutput.add_member(:external_identifier, Shapes::ShapeRef.new(shape: ExternalIdentifier, location_name: "externalIdentifier"))
    CreateAssetRevisionOutput.add_member(:first_revision_created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "firstRevisionCreatedAt"))
    CreateAssetRevisionOutput.add_member(:first_revision_created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "firstRevisionCreatedBy"))
    CreateAssetRevisionOutput.add_member(:forms_output, Shapes::ShapeRef.new(shape: FormOutputList, required: true, location_name: "formsOutput"))
    CreateAssetRevisionOutput.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: GlossaryTerms, location_name: "glossaryTerms"))
    CreateAssetRevisionOutput.add_member(:id, Shapes::ShapeRef.new(shape: AssetId, required: true, location_name: "id"))
    CreateAssetRevisionOutput.add_member(:listing, Shapes::ShapeRef.new(shape: AssetListingDetails, location_name: "listing"))
    CreateAssetRevisionOutput.add_member(:name, Shapes::ShapeRef.new(shape: AssetName, required: true, location_name: "name"))
    CreateAssetRevisionOutput.add_member(:owning_project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "owningProjectId"))
    CreateAssetRevisionOutput.add_member(:prediction_configuration, Shapes::ShapeRef.new(shape: PredictionConfiguration, location_name: "predictionConfiguration"))
    CreateAssetRevisionOutput.add_member(:read_only_forms_output, Shapes::ShapeRef.new(shape: FormOutputList, location_name: "readOnlyFormsOutput"))
    CreateAssetRevisionOutput.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "revision"))
    CreateAssetRevisionOutput.add_member(:type_identifier, Shapes::ShapeRef.new(shape: AssetTypeIdentifier, required: true, location_name: "typeIdentifier"))
    CreateAssetRevisionOutput.add_member(:type_revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "typeRevision"))
    CreateAssetRevisionOutput.struct_class = Types::CreateAssetRevisionOutput

    CreateAssetTypeInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateAssetTypeInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    CreateAssetTypeInput.add_member(:forms_input, Shapes::ShapeRef.new(shape: FormsInputMap, required: true, location_name: "formsInput"))
    CreateAssetTypeInput.add_member(:name, Shapes::ShapeRef.new(shape: TypeName, required: true, location_name: "name"))
    CreateAssetTypeInput.add_member(:owning_project_identifier, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "owningProjectIdentifier"))
    CreateAssetTypeInput.struct_class = Types::CreateAssetTypeInput

    CreateAssetTypeOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    CreateAssetTypeOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    CreateAssetTypeOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateAssetTypeOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CreateAssetTypeOutput.add_member(:forms_output, Shapes::ShapeRef.new(shape: FormsOutputMap, required: true, location_name: "formsOutput"))
    CreateAssetTypeOutput.add_member(:name, Shapes::ShapeRef.new(shape: TypeName, required: true, location_name: "name"))
    CreateAssetTypeOutput.add_member(:origin_domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "originDomainId"))
    CreateAssetTypeOutput.add_member(:origin_project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "originProjectId"))
    CreateAssetTypeOutput.add_member(:owning_project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "owningProjectId"))
    CreateAssetTypeOutput.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "revision"))
    CreateAssetTypeOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    CreateAssetTypeOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    CreateAssetTypeOutput.struct_class = Types::CreateAssetTypeOutput

    CreateDataSourceInput.add_member(:asset_forms_input, Shapes::ShapeRef.new(shape: FormInputList, location_name: "assetFormsInput"))
    CreateDataSourceInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateDataSourceInput.add_member(:configuration, Shapes::ShapeRef.new(shape: DataSourceConfigurationInput, location_name: "configuration"))
    CreateDataSourceInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateDataSourceInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    CreateDataSourceInput.add_member(:enable_setting, Shapes::ShapeRef.new(shape: EnableSetting, location_name: "enableSetting"))
    CreateDataSourceInput.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "environmentIdentifier"))
    CreateDataSourceInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateDataSourceInput.add_member(:project_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "projectIdentifier"))
    CreateDataSourceInput.add_member(:publish_on_import, Shapes::ShapeRef.new(shape: Boolean, location_name: "publishOnImport"))
    CreateDataSourceInput.add_member(:recommendation, Shapes::ShapeRef.new(shape: RecommendationConfiguration, location_name: "recommendation"))
    CreateDataSourceInput.add_member(:schedule, Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: "schedule"))
    CreateDataSourceInput.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, required: true, location_name: "type"))
    CreateDataSourceInput.struct_class = Types::CreateDataSourceInput

    CreateDataSourceOutput.add_member(:asset_forms_output, Shapes::ShapeRef.new(shape: FormOutputList, location_name: "assetFormsOutput"))
    CreateDataSourceOutput.add_member(:configuration, Shapes::ShapeRef.new(shape: DataSourceConfigurationOutput, location_name: "configuration"))
    CreateDataSourceOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "createdAt"))
    CreateDataSourceOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateDataSourceOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CreateDataSourceOutput.add_member(:enable_setting, Shapes::ShapeRef.new(shape: EnableSetting, location_name: "enableSetting"))
    CreateDataSourceOutput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    CreateDataSourceOutput.add_member(:error_message, Shapes::ShapeRef.new(shape: DataSourceErrorMessage, location_name: "errorMessage"))
    CreateDataSourceOutput.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "id"))
    CreateDataSourceOutput.add_member(:last_run_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "lastRunAt"))
    CreateDataSourceOutput.add_member(:last_run_error_message, Shapes::ShapeRef.new(shape: DataSourceErrorMessage, location_name: "lastRunErrorMessage"))
    CreateDataSourceOutput.add_member(:last_run_status, Shapes::ShapeRef.new(shape: DataSourceRunStatus, location_name: "lastRunStatus"))
    CreateDataSourceOutput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateDataSourceOutput.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    CreateDataSourceOutput.add_member(:publish_on_import, Shapes::ShapeRef.new(shape: Boolean, location_name: "publishOnImport"))
    CreateDataSourceOutput.add_member(:recommendation, Shapes::ShapeRef.new(shape: RecommendationConfiguration, location_name: "recommendation"))
    CreateDataSourceOutput.add_member(:schedule, Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: "schedule"))
    CreateDataSourceOutput.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: "status"))
    CreateDataSourceOutput.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, location_name: "type"))
    CreateDataSourceOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "updatedAt"))
    CreateDataSourceOutput.struct_class = Types::CreateDataSourceOutput

    CreateDomainInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateDomainInput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateDomainInput.add_member(:domain_execution_role, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "domainExecutionRole"))
    CreateDomainInput.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyIdentifier"))
    CreateDomainInput.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    CreateDomainInput.add_member(:single_sign_on, Shapes::ShapeRef.new(shape: SingleSignOn, location_name: "singleSignOn"))
    CreateDomainInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateDomainInput.struct_class = Types::CreateDomainInput

    CreateDomainOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    CreateDomainOutput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateDomainOutput.add_member(:domain_execution_role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "domainExecutionRole"))
    CreateDomainOutput.add_member(:id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "id"))
    CreateDomainOutput.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyIdentifier"))
    CreateDomainOutput.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    CreateDomainOutput.add_member(:portal_url, Shapes::ShapeRef.new(shape: String, location_name: "portalUrl"))
    CreateDomainOutput.add_member(:single_sign_on, Shapes::ShapeRef.new(shape: SingleSignOn, location_name: "singleSignOn"))
    CreateDomainOutput.add_member(:status, Shapes::ShapeRef.new(shape: DomainStatus, location_name: "status"))
    CreateDomainOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateDomainOutput.struct_class = Types::CreateDomainOutput

    CreateEnvironmentInput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateEnvironmentInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    CreateEnvironmentInput.add_member(:environment_profile_identifier, Shapes::ShapeRef.new(shape: EnvironmentProfileId, required: true, location_name: "environmentProfileIdentifier"))
    CreateEnvironmentInput.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: GlossaryTerms, location_name: "glossaryTerms"))
    CreateEnvironmentInput.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    CreateEnvironmentInput.add_member(:project_identifier, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectIdentifier"))
    CreateEnvironmentInput.add_member(:user_parameters, Shapes::ShapeRef.new(shape: EnvironmentParametersList, location_name: "userParameters"))
    CreateEnvironmentInput.struct_class = Types::CreateEnvironmentInput

    CreateEnvironmentOutput.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "awsAccountId"))
    CreateEnvironmentOutput.add_member(:aws_account_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "awsAccountRegion"))
    CreateEnvironmentOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CreateEnvironmentOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: String, required: true, location_name: "createdBy"))
    CreateEnvironmentOutput.add_member(:deployment_properties, Shapes::ShapeRef.new(shape: DeploymentProperties, location_name: "deploymentProperties"))
    CreateEnvironmentOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateEnvironmentOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CreateEnvironmentOutput.add_member(:environment_actions, Shapes::ShapeRef.new(shape: EnvironmentActionList, location_name: "environmentActions"))
    CreateEnvironmentOutput.add_member(:environment_blueprint_id, Shapes::ShapeRef.new(shape: EnvironmentBlueprintId, location_name: "environmentBlueprintId"))
    CreateEnvironmentOutput.add_member(:environment_profile_id, Shapes::ShapeRef.new(shape: EnvironmentProfileId, required: true, location_name: "environmentProfileId"))
    CreateEnvironmentOutput.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: GlossaryTerms, location_name: "glossaryTerms"))
    CreateEnvironmentOutput.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "id"))
    CreateEnvironmentOutput.add_member(:last_deployment, Shapes::ShapeRef.new(shape: Deployment, location_name: "lastDeployment"))
    CreateEnvironmentOutput.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location_name: "name"))
    CreateEnvironmentOutput.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    CreateEnvironmentOutput.add_member(:provider, Shapes::ShapeRef.new(shape: String, required: true, location_name: "provider"))
    CreateEnvironmentOutput.add_member(:provisioned_resources, Shapes::ShapeRef.new(shape: ResourceList, location_name: "provisionedResources"))
    CreateEnvironmentOutput.add_member(:provisioning_properties, Shapes::ShapeRef.new(shape: ProvisioningProperties, location_name: "provisioningProperties"))
    CreateEnvironmentOutput.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentStatus, location_name: "status"))
    CreateEnvironmentOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    CreateEnvironmentOutput.add_member(:user_parameters, Shapes::ShapeRef.new(shape: CustomParameterList, location_name: "userParameters"))
    CreateEnvironmentOutput.struct_class = Types::CreateEnvironmentOutput

    CreateEnvironmentProfileInput.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "awsAccountId"))
    CreateEnvironmentProfileInput.add_member(:aws_account_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "awsAccountRegion"))
    CreateEnvironmentProfileInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateEnvironmentProfileInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    CreateEnvironmentProfileInput.add_member(:environment_blueprint_identifier, Shapes::ShapeRef.new(shape: EnvironmentBlueprintId, required: true, location_name: "environmentBlueprintIdentifier"))
    CreateEnvironmentProfileInput.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentProfileName, required: true, location_name: "name"))
    CreateEnvironmentProfileInput.add_member(:project_identifier, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectIdentifier"))
    CreateEnvironmentProfileInput.add_member(:user_parameters, Shapes::ShapeRef.new(shape: EnvironmentParametersList, location_name: "userParameters"))
    CreateEnvironmentProfileInput.struct_class = Types::CreateEnvironmentProfileInput

    CreateEnvironmentProfileOutput.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "awsAccountId"))
    CreateEnvironmentProfileOutput.add_member(:aws_account_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "awsAccountRegion"))
    CreateEnvironmentProfileOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CreateEnvironmentProfileOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: String, required: true, location_name: "createdBy"))
    CreateEnvironmentProfileOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateEnvironmentProfileOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CreateEnvironmentProfileOutput.add_member(:environment_blueprint_id, Shapes::ShapeRef.new(shape: EnvironmentBlueprintId, required: true, location_name: "environmentBlueprintId"))
    CreateEnvironmentProfileOutput.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentProfileId, required: true, location_name: "id"))
    CreateEnvironmentProfileOutput.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentProfileName, required: true, location_name: "name"))
    CreateEnvironmentProfileOutput.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "projectId"))
    CreateEnvironmentProfileOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    CreateEnvironmentProfileOutput.add_member(:user_parameters, Shapes::ShapeRef.new(shape: CustomParameterList, location_name: "userParameters"))
    CreateEnvironmentProfileOutput.struct_class = Types::CreateEnvironmentProfileOutput

    CreateFormTypeInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateFormTypeInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    CreateFormTypeInput.add_member(:model, Shapes::ShapeRef.new(shape: Model, required: true, location_name: "model"))
    CreateFormTypeInput.add_member(:name, Shapes::ShapeRef.new(shape: FormTypeName, required: true, location_name: "name"))
    CreateFormTypeInput.add_member(:owning_project_identifier, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "owningProjectIdentifier"))
    CreateFormTypeInput.add_member(:status, Shapes::ShapeRef.new(shape: FormTypeStatus, location_name: "status"))
    CreateFormTypeInput.struct_class = Types::CreateFormTypeInput

    CreateFormTypeOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateFormTypeOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CreateFormTypeOutput.add_member(:name, Shapes::ShapeRef.new(shape: FormTypeName, required: true, location_name: "name"))
    CreateFormTypeOutput.add_member(:origin_domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "originDomainId"))
    CreateFormTypeOutput.add_member(:origin_project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "originProjectId"))
    CreateFormTypeOutput.add_member(:owning_project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "owningProjectId"))
    CreateFormTypeOutput.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "revision"))
    CreateFormTypeOutput.struct_class = Types::CreateFormTypeOutput

    CreateGlossaryInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateGlossaryInput.add_member(:description, Shapes::ShapeRef.new(shape: GlossaryDescription, location_name: "description"))
    CreateGlossaryInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    CreateGlossaryInput.add_member(:name, Shapes::ShapeRef.new(shape: GlossaryName, required: true, location_name: "name"))
    CreateGlossaryInput.add_member(:owning_project_identifier, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "owningProjectIdentifier"))
    CreateGlossaryInput.add_member(:status, Shapes::ShapeRef.new(shape: GlossaryStatus, location_name: "status"))
    CreateGlossaryInput.struct_class = Types::CreateGlossaryInput

    CreateGlossaryOutput.add_member(:description, Shapes::ShapeRef.new(shape: GlossaryDescription, location_name: "description"))
    CreateGlossaryOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CreateGlossaryOutput.add_member(:id, Shapes::ShapeRef.new(shape: GlossaryId, required: true, location_name: "id"))
    CreateGlossaryOutput.add_member(:name, Shapes::ShapeRef.new(shape: GlossaryName, required: true, location_name: "name"))
    CreateGlossaryOutput.add_member(:owning_project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "owningProjectId"))
    CreateGlossaryOutput.add_member(:status, Shapes::ShapeRef.new(shape: GlossaryStatus, location_name: "status"))
    CreateGlossaryOutput.struct_class = Types::CreateGlossaryOutput

    CreateGlossaryTermInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateGlossaryTermInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    CreateGlossaryTermInput.add_member(:glossary_identifier, Shapes::ShapeRef.new(shape: GlossaryTermId, required: true, location_name: "glossaryIdentifier"))
    CreateGlossaryTermInput.add_member(:long_description, Shapes::ShapeRef.new(shape: LongDescription, location_name: "longDescription"))
    CreateGlossaryTermInput.add_member(:name, Shapes::ShapeRef.new(shape: GlossaryTermName, required: true, location_name: "name"))
    CreateGlossaryTermInput.add_member(:short_description, Shapes::ShapeRef.new(shape: ShortDescription, location_name: "shortDescription"))
    CreateGlossaryTermInput.add_member(:status, Shapes::ShapeRef.new(shape: GlossaryTermStatus, location_name: "status"))
    CreateGlossaryTermInput.add_member(:term_relations, Shapes::ShapeRef.new(shape: TermRelations, location_name: "termRelations"))
    CreateGlossaryTermInput.struct_class = Types::CreateGlossaryTermInput

    CreateGlossaryTermOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CreateGlossaryTermOutput.add_member(:glossary_id, Shapes::ShapeRef.new(shape: GlossaryId, required: true, location_name: "glossaryId"))
    CreateGlossaryTermOutput.add_member(:id, Shapes::ShapeRef.new(shape: GlossaryTermId, required: true, location_name: "id"))
    CreateGlossaryTermOutput.add_member(:long_description, Shapes::ShapeRef.new(shape: LongDescription, location_name: "longDescription"))
    CreateGlossaryTermOutput.add_member(:name, Shapes::ShapeRef.new(shape: GlossaryTermName, required: true, location_name: "name"))
    CreateGlossaryTermOutput.add_member(:short_description, Shapes::ShapeRef.new(shape: ShortDescription, location_name: "shortDescription"))
    CreateGlossaryTermOutput.add_member(:status, Shapes::ShapeRef.new(shape: GlossaryTermStatus, required: true, location_name: "status"))
    CreateGlossaryTermOutput.add_member(:term_relations, Shapes::ShapeRef.new(shape: TermRelations, location_name: "termRelations"))
    CreateGlossaryTermOutput.struct_class = Types::CreateGlossaryTermOutput

    CreateGroupProfileInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateGroupProfileInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    CreateGroupProfileInput.add_member(:group_identifier, Shapes::ShapeRef.new(shape: GroupIdentifier, required: true, location_name: "groupIdentifier"))
    CreateGroupProfileInput.struct_class = Types::CreateGroupProfileInput

    CreateGroupProfileOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "domainId"))
    CreateGroupProfileOutput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupProfileName, location_name: "groupName"))
    CreateGroupProfileOutput.add_member(:id, Shapes::ShapeRef.new(shape: GroupProfileId, location_name: "id"))
    CreateGroupProfileOutput.add_member(:status, Shapes::ShapeRef.new(shape: GroupProfileStatus, location_name: "status"))
    CreateGroupProfileOutput.struct_class = Types::CreateGroupProfileOutput

    CreateListingChangeSetInput.add_member(:action, Shapes::ShapeRef.new(shape: ChangeAction, required: true, location_name: "action"))
    CreateListingChangeSetInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateListingChangeSetInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    CreateListingChangeSetInput.add_member(:entity_identifier, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "entityIdentifier"))
    CreateListingChangeSetInput.add_member(:entity_revision, Shapes::ShapeRef.new(shape: Revision, location_name: "entityRevision"))
    CreateListingChangeSetInput.add_member(:entity_type, Shapes::ShapeRef.new(shape: EntityType, required: true, location_name: "entityType"))
    CreateListingChangeSetInput.struct_class = Types::CreateListingChangeSetInput

    CreateListingChangeSetOutput.add_member(:listing_id, Shapes::ShapeRef.new(shape: ListingId, required: true, location_name: "listingId"))
    CreateListingChangeSetOutput.add_member(:listing_revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "listingRevision"))
    CreateListingChangeSetOutput.add_member(:status, Shapes::ShapeRef.new(shape: ListingStatus, required: true, location_name: "status"))
    CreateListingChangeSetOutput.struct_class = Types::CreateListingChangeSetOutput

    CreateProjectInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateProjectInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    CreateProjectInput.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: GlossaryTerms, location_name: "glossaryTerms"))
    CreateProjectInput.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "name"))
    CreateProjectInput.struct_class = Types::CreateProjectInput

    CreateProjectMembershipInput.add_member(:designation, Shapes::ShapeRef.new(shape: UserDesignation, required: true, location_name: "designation"))
    CreateProjectMembershipInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    CreateProjectMembershipInput.add_member(:member, Shapes::ShapeRef.new(shape: Member, required: true, location_name: "member"))
    CreateProjectMembershipInput.add_member(:project_identifier, Shapes::ShapeRef.new(shape: ProjectId, required: true, location: "uri", location_name: "projectIdentifier"))
    CreateProjectMembershipInput.struct_class = Types::CreateProjectMembershipInput

    CreateProjectMembershipOutput.struct_class = Types::CreateProjectMembershipOutput

    CreateProjectOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CreateProjectOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    CreateProjectOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateProjectOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CreateProjectOutput.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: GlossaryTerms, location_name: "glossaryTerms"))
    CreateProjectOutput.add_member(:id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "id"))
    CreateProjectOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "lastUpdatedAt"))
    CreateProjectOutput.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "name"))
    CreateProjectOutput.struct_class = Types::CreateProjectOutput

    CreateSubscriptionGrantInput.add_member(:asset_target_names, Shapes::ShapeRef.new(shape: AssetTargetNames, location_name: "assetTargetNames"))
    CreateSubscriptionGrantInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateSubscriptionGrantInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    CreateSubscriptionGrantInput.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentIdentifier"))
    CreateSubscriptionGrantInput.add_member(:granted_entity, Shapes::ShapeRef.new(shape: GrantedEntityInput, required: true, location_name: "grantedEntity"))
    CreateSubscriptionGrantInput.add_member(:subscription_target_identifier, Shapes::ShapeRef.new(shape: SubscriptionTargetId, required: true, location_name: "subscriptionTargetIdentifier"))
    CreateSubscriptionGrantInput.struct_class = Types::CreateSubscriptionGrantInput

    CreateSubscriptionGrantOutput.add_member(:assets, Shapes::ShapeRef.new(shape: SubscribedAssets, location_name: "assets"))
    CreateSubscriptionGrantOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    CreateSubscriptionGrantOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    CreateSubscriptionGrantOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CreateSubscriptionGrantOutput.add_member(:granted_entity, Shapes::ShapeRef.new(shape: GrantedEntity, required: true, location_name: "grantedEntity"))
    CreateSubscriptionGrantOutput.add_member(:id, Shapes::ShapeRef.new(shape: SubscriptionGrantId, required: true, location_name: "id"))
    CreateSubscriptionGrantOutput.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionGrantOverallStatus, required: true, location_name: "status"))
    CreateSubscriptionGrantOutput.add_member(:subscription_id, Shapes::ShapeRef.new(shape: SubscriptionId, location_name: "subscriptionId"))
    CreateSubscriptionGrantOutput.add_member(:subscription_target_id, Shapes::ShapeRef.new(shape: SubscriptionTargetId, required: true, location_name: "subscriptionTargetId"))
    CreateSubscriptionGrantOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, required: true, location_name: "updatedAt"))
    CreateSubscriptionGrantOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    CreateSubscriptionGrantOutput.struct_class = Types::CreateSubscriptionGrantOutput

    CreateSubscriptionRequestInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateSubscriptionRequestInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    CreateSubscriptionRequestInput.add_member(:request_reason, Shapes::ShapeRef.new(shape: RequestReason, required: true, location_name: "requestReason"))
    CreateSubscriptionRequestInput.add_member(:subscribed_listings, Shapes::ShapeRef.new(shape: SubscribedListingInputs, required: true, location_name: "subscribedListings"))
    CreateSubscriptionRequestInput.add_member(:subscribed_principals, Shapes::ShapeRef.new(shape: SubscribedPrincipalInputs, required: true, location_name: "subscribedPrincipals"))
    CreateSubscriptionRequestInput.struct_class = Types::CreateSubscriptionRequestInput

    CreateSubscriptionRequestOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    CreateSubscriptionRequestOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    CreateSubscriptionRequestOutput.add_member(:decision_comment, Shapes::ShapeRef.new(shape: DecisionComment, location_name: "decisionComment"))
    CreateSubscriptionRequestOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CreateSubscriptionRequestOutput.add_member(:id, Shapes::ShapeRef.new(shape: SubscriptionRequestId, required: true, location_name: "id"))
    CreateSubscriptionRequestOutput.add_member(:request_reason, Shapes::ShapeRef.new(shape: RequestReason, required: true, location_name: "requestReason"))
    CreateSubscriptionRequestOutput.add_member(:reviewer_id, Shapes::ShapeRef.new(shape: String, location_name: "reviewerId"))
    CreateSubscriptionRequestOutput.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionRequestStatus, required: true, location_name: "status"))
    CreateSubscriptionRequestOutput.add_member(:subscribed_listings, Shapes::ShapeRef.new(shape: CreateSubscriptionRequestOutputSubscribedListingsList, required: true, location_name: "subscribedListings"))
    CreateSubscriptionRequestOutput.add_member(:subscribed_principals, Shapes::ShapeRef.new(shape: CreateSubscriptionRequestOutputSubscribedPrincipalsList, required: true, location_name: "subscribedPrincipals"))
    CreateSubscriptionRequestOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, required: true, location_name: "updatedAt"))
    CreateSubscriptionRequestOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    CreateSubscriptionRequestOutput.struct_class = Types::CreateSubscriptionRequestOutput

    CreateSubscriptionRequestOutputSubscribedListingsList.member = Shapes::ShapeRef.new(shape: SubscribedListing)

    CreateSubscriptionRequestOutputSubscribedPrincipalsList.member = Shapes::ShapeRef.new(shape: SubscribedPrincipal)

    CreateSubscriptionTargetInput.add_member(:applicable_asset_types, Shapes::ShapeRef.new(shape: ApplicableAssetTypes, required: true, location_name: "applicableAssetTypes"))
    CreateSubscriptionTargetInput.add_member(:authorized_principals, Shapes::ShapeRef.new(shape: AuthorizedPrincipalIdentifiers, required: true, location_name: "authorizedPrincipals"))
    CreateSubscriptionTargetInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateSubscriptionTargetInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    CreateSubscriptionTargetInput.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentIdentifier"))
    CreateSubscriptionTargetInput.add_member(:manage_access_role, Shapes::ShapeRef.new(shape: String, required: true, location_name: "manageAccessRole"))
    CreateSubscriptionTargetInput.add_member(:name, Shapes::ShapeRef.new(shape: SubscriptionTargetName, required: true, location_name: "name"))
    CreateSubscriptionTargetInput.add_member(:provider, Shapes::ShapeRef.new(shape: String, location_name: "provider"))
    CreateSubscriptionTargetInput.add_member(:subscription_target_config, Shapes::ShapeRef.new(shape: SubscriptionTargetForms, required: true, location_name: "subscriptionTargetConfig"))
    CreateSubscriptionTargetInput.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    CreateSubscriptionTargetInput.struct_class = Types::CreateSubscriptionTargetInput

    CreateSubscriptionTargetOutput.add_member(:applicable_asset_types, Shapes::ShapeRef.new(shape: ApplicableAssetTypes, required: true, location_name: "applicableAssetTypes"))
    CreateSubscriptionTargetOutput.add_member(:authorized_principals, Shapes::ShapeRef.new(shape: AuthorizedPrincipalIdentifiers, required: true, location_name: "authorizedPrincipals"))
    CreateSubscriptionTargetOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    CreateSubscriptionTargetOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    CreateSubscriptionTargetOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CreateSubscriptionTargetOutput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    CreateSubscriptionTargetOutput.add_member(:id, Shapes::ShapeRef.new(shape: SubscriptionTargetId, required: true, location_name: "id"))
    CreateSubscriptionTargetOutput.add_member(:manage_access_role, Shapes::ShapeRef.new(shape: String, required: true, location_name: "manageAccessRole"))
    CreateSubscriptionTargetOutput.add_member(:name, Shapes::ShapeRef.new(shape: SubscriptionTargetName, required: true, location_name: "name"))
    CreateSubscriptionTargetOutput.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    CreateSubscriptionTargetOutput.add_member(:provider, Shapes::ShapeRef.new(shape: String, required: true, location_name: "provider"))
    CreateSubscriptionTargetOutput.add_member(:subscription_target_config, Shapes::ShapeRef.new(shape: SubscriptionTargetForms, required: true, location_name: "subscriptionTargetConfig"))
    CreateSubscriptionTargetOutput.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    CreateSubscriptionTargetOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    CreateSubscriptionTargetOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    CreateSubscriptionTargetOutput.struct_class = Types::CreateSubscriptionTargetOutput

    CreateUserProfileInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateUserProfileInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    CreateUserProfileInput.add_member(:user_identifier, Shapes::ShapeRef.new(shape: UserIdentifier, required: true, location_name: "userIdentifier"))
    CreateUserProfileInput.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location_name: "userType"))
    CreateUserProfileInput.struct_class = Types::CreateUserProfileInput

    CreateUserProfileOutput.add_member(:details, Shapes::ShapeRef.new(shape: UserProfileDetails, location_name: "details"))
    CreateUserProfileOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "domainId"))
    CreateUserProfileOutput.add_member(:id, Shapes::ShapeRef.new(shape: UserProfileId, location_name: "id"))
    CreateUserProfileOutput.add_member(:status, Shapes::ShapeRef.new(shape: UserProfileStatus, location_name: "status"))
    CreateUserProfileOutput.add_member(:type, Shapes::ShapeRef.new(shape: UserProfileType, location_name: "type"))
    CreateUserProfileOutput.struct_class = Types::CreateUserProfileOutput

    CustomParameter.add_member(:default_value, Shapes::ShapeRef.new(shape: String, location_name: "defaultValue"))
    CustomParameter.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CustomParameter.add_member(:field_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fieldType"))
    CustomParameter.add_member(:is_editable, Shapes::ShapeRef.new(shape: Boolean, location_name: "isEditable"))
    CustomParameter.add_member(:is_optional, Shapes::ShapeRef.new(shape: Boolean, location_name: "isOptional"))
    CustomParameter.add_member(:key_name, Shapes::ShapeRef.new(shape: CustomParameterKeyNameString, required: true, location_name: "keyName"))
    CustomParameter.struct_class = Types::CustomParameter

    CustomParameterList.member = Shapes::ShapeRef.new(shape: CustomParameter)

    DataProductItem.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "domainId"))
    DataProductItem.add_member(:item_id, Shapes::ShapeRef.new(shape: DataProductId, location_name: "itemId"))
    DataProductItem.struct_class = Types::DataProductItem

    DataProductItems.member = Shapes::ShapeRef.new(shape: DataProductItem)

    DataProductSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    DataProductSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    DataProductSummary.add_member(:data_product_items, Shapes::ShapeRef.new(shape: DataProductItems, location_name: "dataProductItems"))
    DataProductSummary.add_member(:description, Shapes::ShapeRef.new(shape: DataProductDescription, location_name: "description"))
    DataProductSummary.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    DataProductSummary.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: GlossaryTerms, location_name: "glossaryTerms"))
    DataProductSummary.add_member(:id, Shapes::ShapeRef.new(shape: DataProductId, required: true, location_name: "id"))
    DataProductSummary.add_member(:name, Shapes::ShapeRef.new(shape: DataProductName, required: true, location_name: "name"))
    DataProductSummary.add_member(:owning_project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "owningProjectId"))
    DataProductSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    DataProductSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    DataProductSummary.struct_class = Types::DataProductSummary

    DataSourceConfigurationInput.add_member(:glue_run_configuration, Shapes::ShapeRef.new(shape: GlueRunConfigurationInput, location_name: "glueRunConfiguration"))
    DataSourceConfigurationInput.add_member(:redshift_run_configuration, Shapes::ShapeRef.new(shape: RedshiftRunConfigurationInput, location_name: "redshiftRunConfiguration"))
    DataSourceConfigurationInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DataSourceConfigurationInput.add_member_subclass(:glue_run_configuration, Types::DataSourceConfigurationInput::GlueRunConfiguration)
    DataSourceConfigurationInput.add_member_subclass(:redshift_run_configuration, Types::DataSourceConfigurationInput::RedshiftRunConfiguration)
    DataSourceConfigurationInput.add_member_subclass(:unknown, Types::DataSourceConfigurationInput::Unknown)
    DataSourceConfigurationInput.struct_class = Types::DataSourceConfigurationInput

    DataSourceConfigurationOutput.add_member(:glue_run_configuration, Shapes::ShapeRef.new(shape: GlueRunConfigurationOutput, location_name: "glueRunConfiguration"))
    DataSourceConfigurationOutput.add_member(:redshift_run_configuration, Shapes::ShapeRef.new(shape: RedshiftRunConfigurationOutput, location_name: "redshiftRunConfiguration"))
    DataSourceConfigurationOutput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DataSourceConfigurationOutput.add_member_subclass(:glue_run_configuration, Types::DataSourceConfigurationOutput::GlueRunConfiguration)
    DataSourceConfigurationOutput.add_member_subclass(:redshift_run_configuration, Types::DataSourceConfigurationOutput::RedshiftRunConfiguration)
    DataSourceConfigurationOutput.add_member_subclass(:unknown, Types::DataSourceConfigurationOutput::Unknown)
    DataSourceConfigurationOutput.struct_class = Types::DataSourceConfigurationOutput

    DataSourceErrorMessage.add_member(:error_detail, Shapes::ShapeRef.new(shape: String, location_name: "errorDetail"))
    DataSourceErrorMessage.add_member(:error_type, Shapes::ShapeRef.new(shape: DataSourceErrorType, required: true, location_name: "errorType"))
    DataSourceErrorMessage.struct_class = Types::DataSourceErrorMessage

    DataSourceRunActivities.member = Shapes::ShapeRef.new(shape: DataSourceRunActivity)

    DataSourceRunActivity.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    DataSourceRunActivity.add_member(:data_asset_id, Shapes::ShapeRef.new(shape: String, location_name: "dataAssetId"))
    DataSourceRunActivity.add_member(:data_asset_status, Shapes::ShapeRef.new(shape: DataAssetActivityStatus, required: true, location_name: "dataAssetStatus"))
    DataSourceRunActivity.add_member(:data_source_run_id, Shapes::ShapeRef.new(shape: DataSourceRunId, required: true, location_name: "dataSourceRunId"))
    DataSourceRunActivity.add_member(:database, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "database"))
    DataSourceRunActivity.add_member(:error_message, Shapes::ShapeRef.new(shape: DataSourceErrorMessage, location_name: "errorMessage"))
    DataSourceRunActivity.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    DataSourceRunActivity.add_member(:technical_description, Shapes::ShapeRef.new(shape: Description, location_name: "technicalDescription"))
    DataSourceRunActivity.add_member(:technical_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "technicalName"))
    DataSourceRunActivity.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "updatedAt"))
    DataSourceRunActivity.struct_class = Types::DataSourceRunActivity

    DataSourceRunSummaries.member = Shapes::ShapeRef.new(shape: DataSourceRunSummary)

    DataSourceRunSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    DataSourceRunSummary.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "dataSourceId"))
    DataSourceRunSummary.add_member(:error_message, Shapes::ShapeRef.new(shape: DataSourceErrorMessage, location_name: "errorMessage"))
    DataSourceRunSummary.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceRunId, required: true, location_name: "id"))
    DataSourceRunSummary.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    DataSourceRunSummary.add_member(:run_statistics_for_assets, Shapes::ShapeRef.new(shape: RunStatisticsForAssets, location_name: "runStatisticsForAssets"))
    DataSourceRunSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "startedAt"))
    DataSourceRunSummary.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceRunStatus, required: true, location_name: "status"))
    DataSourceRunSummary.add_member(:stopped_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "stoppedAt"))
    DataSourceRunSummary.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceRunType, required: true, location_name: "type"))
    DataSourceRunSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "updatedAt"))
    DataSourceRunSummary.struct_class = Types::DataSourceRunSummary

    DataSourceSummaries.member = Shapes::ShapeRef.new(shape: DataSourceSummary)

    DataSourceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "createdAt"))
    DataSourceSummary.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "dataSourceId"))
    DataSourceSummary.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    DataSourceSummary.add_member(:enable_setting, Shapes::ShapeRef.new(shape: EnableSetting, location_name: "enableSetting"))
    DataSourceSummary.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    DataSourceSummary.add_member(:last_run_asset_count, Shapes::ShapeRef.new(shape: Integer, location_name: "lastRunAssetCount"))
    DataSourceSummary.add_member(:last_run_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "lastRunAt"))
    DataSourceSummary.add_member(:last_run_error_message, Shapes::ShapeRef.new(shape: DataSourceErrorMessage, location_name: "lastRunErrorMessage"))
    DataSourceSummary.add_member(:last_run_status, Shapes::ShapeRef.new(shape: DataSourceRunStatus, location_name: "lastRunStatus"))
    DataSourceSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    DataSourceSummary.add_member(:schedule, Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: "schedule"))
    DataSourceSummary.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, required: true, location_name: "status"))
    DataSourceSummary.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    DataSourceSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "updatedAt"))
    DataSourceSummary.struct_class = Types::DataSourceSummary

    DeleteAssetInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    DeleteAssetInput.add_member(:identifier, Shapes::ShapeRef.new(shape: AssetIdentifier, required: true, location: "uri", location_name: "identifier"))
    DeleteAssetInput.struct_class = Types::DeleteAssetInput

    DeleteAssetOutput.struct_class = Types::DeleteAssetOutput

    DeleteAssetTypeInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    DeleteAssetTypeInput.add_member(:identifier, Shapes::ShapeRef.new(shape: AssetTypeIdentifier, required: true, location: "uri", location_name: "identifier"))
    DeleteAssetTypeInput.struct_class = Types::DeleteAssetTypeInput

    DeleteAssetTypeOutput.struct_class = Types::DeleteAssetTypeOutput

    DeleteDataSourceInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteDataSourceInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    DeleteDataSourceInput.add_member(:identifier, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location: "uri", location_name: "identifier"))
    DeleteDataSourceInput.struct_class = Types::DeleteDataSourceInput

    DeleteDataSourceOutput.add_member(:asset_forms_output, Shapes::ShapeRef.new(shape: FormOutputList, location_name: "assetFormsOutput"))
    DeleteDataSourceOutput.add_member(:configuration, Shapes::ShapeRef.new(shape: DataSourceConfigurationOutput, location_name: "configuration"))
    DeleteDataSourceOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "createdAt"))
    DeleteDataSourceOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DeleteDataSourceOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    DeleteDataSourceOutput.add_member(:enable_setting, Shapes::ShapeRef.new(shape: EnableSetting, location_name: "enableSetting"))
    DeleteDataSourceOutput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    DeleteDataSourceOutput.add_member(:error_message, Shapes::ShapeRef.new(shape: DataSourceErrorMessage, location_name: "errorMessage"))
    DeleteDataSourceOutput.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "id"))
    DeleteDataSourceOutput.add_member(:last_run_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "lastRunAt"))
    DeleteDataSourceOutput.add_member(:last_run_error_message, Shapes::ShapeRef.new(shape: DataSourceErrorMessage, location_name: "lastRunErrorMessage"))
    DeleteDataSourceOutput.add_member(:last_run_status, Shapes::ShapeRef.new(shape: DataSourceRunStatus, location_name: "lastRunStatus"))
    DeleteDataSourceOutput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    DeleteDataSourceOutput.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    DeleteDataSourceOutput.add_member(:publish_on_import, Shapes::ShapeRef.new(shape: Boolean, location_name: "publishOnImport"))
    DeleteDataSourceOutput.add_member(:schedule, Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: "schedule"))
    DeleteDataSourceOutput.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: "status"))
    DeleteDataSourceOutput.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, location_name: "type"))
    DeleteDataSourceOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "updatedAt"))
    DeleteDataSourceOutput.struct_class = Types::DeleteDataSourceOutput

    DeleteDomainInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteDomainInput.add_member(:identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "identifier"))
    DeleteDomainInput.struct_class = Types::DeleteDomainInput

    DeleteDomainOutput.add_member(:status, Shapes::ShapeRef.new(shape: DomainStatus, required: true, location_name: "status"))
    DeleteDomainOutput.struct_class = Types::DeleteDomainOutput

    DeleteEnvironmentBlueprintConfigurationInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    DeleteEnvironmentBlueprintConfigurationInput.add_member(:environment_blueprint_identifier, Shapes::ShapeRef.new(shape: EnvironmentBlueprintId, required: true, location: "uri", location_name: "environmentBlueprintIdentifier"))
    DeleteEnvironmentBlueprintConfigurationInput.struct_class = Types::DeleteEnvironmentBlueprintConfigurationInput

    DeleteEnvironmentBlueprintConfigurationOutput.struct_class = Types::DeleteEnvironmentBlueprintConfigurationOutput

    DeleteEnvironmentInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    DeleteEnvironmentInput.add_member(:identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "identifier"))
    DeleteEnvironmentInput.struct_class = Types::DeleteEnvironmentInput

    DeleteEnvironmentProfileInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    DeleteEnvironmentProfileInput.add_member(:identifier, Shapes::ShapeRef.new(shape: EnvironmentProfileId, required: true, location: "uri", location_name: "identifier"))
    DeleteEnvironmentProfileInput.struct_class = Types::DeleteEnvironmentProfileInput

    DeleteFormTypeInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    DeleteFormTypeInput.add_member(:form_type_identifier, Shapes::ShapeRef.new(shape: FormTypeIdentifier, required: true, location: "uri", location_name: "formTypeIdentifier"))
    DeleteFormTypeInput.struct_class = Types::DeleteFormTypeInput

    DeleteFormTypeOutput.struct_class = Types::DeleteFormTypeOutput

    DeleteGlossaryInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    DeleteGlossaryInput.add_member(:identifier, Shapes::ShapeRef.new(shape: GlossaryId, required: true, location: "uri", location_name: "identifier"))
    DeleteGlossaryInput.struct_class = Types::DeleteGlossaryInput

    DeleteGlossaryOutput.struct_class = Types::DeleteGlossaryOutput

    DeleteGlossaryTermInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    DeleteGlossaryTermInput.add_member(:identifier, Shapes::ShapeRef.new(shape: GlossaryTermId, required: true, location: "uri", location_name: "identifier"))
    DeleteGlossaryTermInput.struct_class = Types::DeleteGlossaryTermInput

    DeleteGlossaryTermOutput.struct_class = Types::DeleteGlossaryTermOutput

    DeleteListingInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    DeleteListingInput.add_member(:identifier, Shapes::ShapeRef.new(shape: ListingId, required: true, location: "uri", location_name: "identifier"))
    DeleteListingInput.struct_class = Types::DeleteListingInput

    DeleteListingOutput.struct_class = Types::DeleteListingOutput

    DeleteProjectInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    DeleteProjectInput.add_member(:identifier, Shapes::ShapeRef.new(shape: ProjectId, required: true, location: "uri", location_name: "identifier"))
    DeleteProjectInput.struct_class = Types::DeleteProjectInput

    DeleteProjectMembershipInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    DeleteProjectMembershipInput.add_member(:member, Shapes::ShapeRef.new(shape: Member, required: true, location_name: "member"))
    DeleteProjectMembershipInput.add_member(:project_identifier, Shapes::ShapeRef.new(shape: ProjectId, required: true, location: "uri", location_name: "projectIdentifier"))
    DeleteProjectMembershipInput.struct_class = Types::DeleteProjectMembershipInput

    DeleteProjectMembershipOutput.struct_class = Types::DeleteProjectMembershipOutput

    DeleteProjectOutput.struct_class = Types::DeleteProjectOutput

    DeleteSubscriptionGrantInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    DeleteSubscriptionGrantInput.add_member(:identifier, Shapes::ShapeRef.new(shape: SubscriptionGrantId, required: true, location: "uri", location_name: "identifier"))
    DeleteSubscriptionGrantInput.struct_class = Types::DeleteSubscriptionGrantInput

    DeleteSubscriptionGrantOutput.add_member(:assets, Shapes::ShapeRef.new(shape: SubscribedAssets, location_name: "assets"))
    DeleteSubscriptionGrantOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    DeleteSubscriptionGrantOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    DeleteSubscriptionGrantOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    DeleteSubscriptionGrantOutput.add_member(:granted_entity, Shapes::ShapeRef.new(shape: GrantedEntity, required: true, location_name: "grantedEntity"))
    DeleteSubscriptionGrantOutput.add_member(:id, Shapes::ShapeRef.new(shape: SubscriptionGrantId, required: true, location_name: "id"))
    DeleteSubscriptionGrantOutput.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionGrantOverallStatus, required: true, location_name: "status"))
    DeleteSubscriptionGrantOutput.add_member(:subscription_id, Shapes::ShapeRef.new(shape: SubscriptionId, location_name: "subscriptionId"))
    DeleteSubscriptionGrantOutput.add_member(:subscription_target_id, Shapes::ShapeRef.new(shape: SubscriptionTargetId, required: true, location_name: "subscriptionTargetId"))
    DeleteSubscriptionGrantOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, required: true, location_name: "updatedAt"))
    DeleteSubscriptionGrantOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    DeleteSubscriptionGrantOutput.struct_class = Types::DeleteSubscriptionGrantOutput

    DeleteSubscriptionRequestInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    DeleteSubscriptionRequestInput.add_member(:identifier, Shapes::ShapeRef.new(shape: SubscriptionRequestId, required: true, location: "uri", location_name: "identifier"))
    DeleteSubscriptionRequestInput.struct_class = Types::DeleteSubscriptionRequestInput

    DeleteSubscriptionTargetInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    DeleteSubscriptionTargetInput.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentIdentifier"))
    DeleteSubscriptionTargetInput.add_member(:identifier, Shapes::ShapeRef.new(shape: SubscriptionTargetId, required: true, location: "uri", location_name: "identifier"))
    DeleteSubscriptionTargetInput.struct_class = Types::DeleteSubscriptionTargetInput

    Deployment.add_member(:deployment_id, Shapes::ShapeRef.new(shape: String, location_name: "deploymentId"))
    Deployment.add_member(:deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "deploymentStatus"))
    Deployment.add_member(:deployment_type, Shapes::ShapeRef.new(shape: DeploymentType, location_name: "deploymentType"))
    Deployment.add_member(:failure_reason, Shapes::ShapeRef.new(shape: EnvironmentError, location_name: "failureReason"))
    Deployment.add_member(:is_deployment_complete, Shapes::ShapeRef.new(shape: Boolean, location_name: "isDeploymentComplete"))
    Deployment.add_member(:messages, Shapes::ShapeRef.new(shape: DeploymentMessagesList, location_name: "messages"))
    Deployment.struct_class = Types::Deployment

    DeploymentMessagesList.member = Shapes::ShapeRef.new(shape: DeploymentMessage)

    DeploymentProperties.add_member(:end_timeout_minutes, Shapes::ShapeRef.new(shape: DeploymentPropertiesEndTimeoutMinutesInteger, location_name: "endTimeoutMinutes"))
    DeploymentProperties.add_member(:start_timeout_minutes, Shapes::ShapeRef.new(shape: DeploymentPropertiesStartTimeoutMinutesInteger, location_name: "startTimeoutMinutes"))
    DeploymentProperties.struct_class = Types::DeploymentProperties

    DetailedGlossaryTerm.add_member(:name, Shapes::ShapeRef.new(shape: GlossaryTermName, location_name: "name"))
    DetailedGlossaryTerm.add_member(:short_description, Shapes::ShapeRef.new(shape: ShortDescription, location_name: "shortDescription"))
    DetailedGlossaryTerm.struct_class = Types::DetailedGlossaryTerm

    DetailedGlossaryTerms.member = Shapes::ShapeRef.new(shape: DetailedGlossaryTerm)

    DomainSummaries.member = Shapes::ShapeRef.new(shape: DomainSummary)

    DomainSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    DomainSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    DomainSummary.add_member(:description, Shapes::ShapeRef.new(shape: DomainDescription, location_name: "description"))
    DomainSummary.add_member(:id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "id"))
    DomainSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "lastUpdatedAt"))
    DomainSummary.add_member(:managed_account_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "managedAccountId"))
    DomainSummary.add_member(:name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "name"))
    DomainSummary.add_member(:portal_url, Shapes::ShapeRef.new(shape: String, location_name: "portalUrl"))
    DomainSummary.add_member(:status, Shapes::ShapeRef.new(shape: DomainStatus, required: true, location_name: "status"))
    DomainSummary.struct_class = Types::DomainSummary

    EnabledRegionList.member = Shapes::ShapeRef.new(shape: RegionName)

    EnvironmentActionList.member = Shapes::ShapeRef.new(shape: ConfigurableEnvironmentAction)

    EnvironmentBlueprintConfigurationItem.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    EnvironmentBlueprintConfigurationItem.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    EnvironmentBlueprintConfigurationItem.add_member(:enabled_regions, Shapes::ShapeRef.new(shape: EnabledRegionList, location_name: "enabledRegions"))
    EnvironmentBlueprintConfigurationItem.add_member(:environment_blueprint_id, Shapes::ShapeRef.new(shape: EnvironmentBlueprintId, required: true, location_name: "environmentBlueprintId"))
    EnvironmentBlueprintConfigurationItem.add_member(:manage_access_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "manageAccessRoleArn"))
    EnvironmentBlueprintConfigurationItem.add_member(:provisioning_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "provisioningRoleArn"))
    EnvironmentBlueprintConfigurationItem.add_member(:regional_parameters, Shapes::ShapeRef.new(shape: RegionalParameterMap, location_name: "regionalParameters"))
    EnvironmentBlueprintConfigurationItem.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    EnvironmentBlueprintConfigurationItem.struct_class = Types::EnvironmentBlueprintConfigurationItem

    EnvironmentBlueprintConfigurations.member = Shapes::ShapeRef.new(shape: EnvironmentBlueprintConfigurationItem)

    EnvironmentBlueprintSummaries.member = Shapes::ShapeRef.new(shape: EnvironmentBlueprintSummary)

    EnvironmentBlueprintSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    EnvironmentBlueprintSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    EnvironmentBlueprintSummary.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentBlueprintId, required: true, location_name: "id"))
    EnvironmentBlueprintSummary.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentBlueprintName, required: true, location_name: "name"))
    EnvironmentBlueprintSummary.add_member(:provider, Shapes::ShapeRef.new(shape: String, required: true, location_name: "provider"))
    EnvironmentBlueprintSummary.add_member(:provisioning_properties, Shapes::ShapeRef.new(shape: ProvisioningProperties, required: true, location_name: "provisioningProperties"))
    EnvironmentBlueprintSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    EnvironmentBlueprintSummary.struct_class = Types::EnvironmentBlueprintSummary

    EnvironmentError.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    EnvironmentError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    EnvironmentError.struct_class = Types::EnvironmentError

    EnvironmentParameter.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    EnvironmentParameter.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    EnvironmentParameter.struct_class = Types::EnvironmentParameter

    EnvironmentParametersList.member = Shapes::ShapeRef.new(shape: EnvironmentParameter)

    EnvironmentProfileSummaries.member = Shapes::ShapeRef.new(shape: EnvironmentProfileSummary)

    EnvironmentProfileSummary.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "awsAccountId"))
    EnvironmentProfileSummary.add_member(:aws_account_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "awsAccountRegion"))
    EnvironmentProfileSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    EnvironmentProfileSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: String, required: true, location_name: "createdBy"))
    EnvironmentProfileSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    EnvironmentProfileSummary.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    EnvironmentProfileSummary.add_member(:environment_blueprint_id, Shapes::ShapeRef.new(shape: EnvironmentBlueprintId, required: true, location_name: "environmentBlueprintId"))
    EnvironmentProfileSummary.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentProfileId, required: true, location_name: "id"))
    EnvironmentProfileSummary.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentProfileName, required: true, location_name: "name"))
    EnvironmentProfileSummary.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "projectId"))
    EnvironmentProfileSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    EnvironmentProfileSummary.struct_class = Types::EnvironmentProfileSummary

    EnvironmentSummaries.member = Shapes::ShapeRef.new(shape: EnvironmentSummary)

    EnvironmentSummary.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "awsAccountId"))
    EnvironmentSummary.add_member(:aws_account_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "awsAccountRegion"))
    EnvironmentSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    EnvironmentSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: String, required: true, location_name: "createdBy"))
    EnvironmentSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    EnvironmentSummary.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    EnvironmentSummary.add_member(:environment_profile_id, Shapes::ShapeRef.new(shape: EnvironmentProfileId, required: true, location_name: "environmentProfileId"))
    EnvironmentSummary.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "id"))
    EnvironmentSummary.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location_name: "name"))
    EnvironmentSummary.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    EnvironmentSummary.add_member(:provider, Shapes::ShapeRef.new(shape: String, required: true, location_name: "provider"))
    EnvironmentSummary.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentStatus, location_name: "status"))
    EnvironmentSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    EnvironmentSummary.struct_class = Types::EnvironmentSummary

    FailureCause.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    FailureCause.struct_class = Types::FailureCause

    Filter.add_member(:attribute, Shapes::ShapeRef.new(shape: Attribute, required: true, location_name: "attribute"))
    Filter.add_member(:value, Shapes::ShapeRef.new(shape: FilterValueString, required: true, location_name: "value"))
    Filter.struct_class = Types::Filter

    FilterClause.add_member(:and, Shapes::ShapeRef.new(shape: FilterList, location_name: "and"))
    FilterClause.add_member(:filter, Shapes::ShapeRef.new(shape: Filter, location_name: "filter"))
    FilterClause.add_member(:or, Shapes::ShapeRef.new(shape: FilterList, location_name: "or"))
    FilterClause.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FilterClause.add_member_subclass(:and, Types::FilterClause::And)
    FilterClause.add_member_subclass(:filter, Types::FilterClause::Filter)
    FilterClause.add_member_subclass(:or, Types::FilterClause::Or)
    FilterClause.add_member_subclass(:unknown, Types::FilterClause::Unknown)
    FilterClause.struct_class = Types::FilterClause

    FilterExpression.add_member(:expression, Shapes::ShapeRef.new(shape: FilterExpressionExpressionString, required: true, location_name: "expression"))
    FilterExpression.add_member(:type, Shapes::ShapeRef.new(shape: FilterExpressionType, required: true, location_name: "type"))
    FilterExpression.struct_class = Types::FilterExpression

    FilterExpressions.member = Shapes::ShapeRef.new(shape: FilterExpression)

    FilterList.member = Shapes::ShapeRef.new(shape: FilterClause)

    FormEntryInput.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, location_name: "required"))
    FormEntryInput.add_member(:type_identifier, Shapes::ShapeRef.new(shape: FormTypeIdentifier, required: true, location_name: "typeIdentifier"))
    FormEntryInput.add_member(:type_revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "typeRevision"))
    FormEntryInput.struct_class = Types::FormEntryInput

    FormEntryOutput.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, location_name: "required"))
    FormEntryOutput.add_member(:type_name, Shapes::ShapeRef.new(shape: FormTypeName, required: true, location_name: "typeName"))
    FormEntryOutput.add_member(:type_revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "typeRevision"))
    FormEntryOutput.struct_class = Types::FormEntryOutput

    FormInput.add_member(:content, Shapes::ShapeRef.new(shape: FormInputContentString, location_name: "content"))
    FormInput.add_member(:form_name, Shapes::ShapeRef.new(shape: FormName, required: true, location_name: "formName"))
    FormInput.add_member(:type_identifier, Shapes::ShapeRef.new(shape: FormTypeIdentifier, location_name: "typeIdentifier"))
    FormInput.add_member(:type_revision, Shapes::ShapeRef.new(shape: Revision, location_name: "typeRevision"))
    FormInput.struct_class = Types::FormInput

    FormInputList.member = Shapes::ShapeRef.new(shape: FormInput)

    FormOutput.add_member(:content, Shapes::ShapeRef.new(shape: String, location_name: "content"))
    FormOutput.add_member(:form_name, Shapes::ShapeRef.new(shape: FormName, required: true, location_name: "formName"))
    FormOutput.add_member(:type_name, Shapes::ShapeRef.new(shape: FormTypeName, location_name: "typeName"))
    FormOutput.add_member(:type_revision, Shapes::ShapeRef.new(shape: Revision, location_name: "typeRevision"))
    FormOutput.struct_class = Types::FormOutput

    FormOutputList.member = Shapes::ShapeRef.new(shape: FormOutput)

    FormTypeData.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    FormTypeData.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    FormTypeData.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    FormTypeData.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    FormTypeData.add_member(:imports, Shapes::ShapeRef.new(shape: ImportList, location_name: "imports"))
    FormTypeData.add_member(:model, Shapes::ShapeRef.new(shape: Model, location_name: "model"))
    FormTypeData.add_member(:name, Shapes::ShapeRef.new(shape: FormTypeName, required: true, location_name: "name"))
    FormTypeData.add_member(:origin_domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "originDomainId"))
    FormTypeData.add_member(:origin_project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "originProjectId"))
    FormTypeData.add_member(:owning_project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "owningProjectId"))
    FormTypeData.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "revision"))
    FormTypeData.add_member(:status, Shapes::ShapeRef.new(shape: FormTypeStatus, location_name: "status"))
    FormTypeData.struct_class = Types::FormTypeData

    FormsInputMap.key = Shapes::ShapeRef.new(shape: FormName)
    FormsInputMap.value = Shapes::ShapeRef.new(shape: FormEntryInput)

    FormsOutputMap.key = Shapes::ShapeRef.new(shape: FormName)
    FormsOutputMap.value = Shapes::ShapeRef.new(shape: FormEntryOutput)

    GetAssetInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    GetAssetInput.add_member(:identifier, Shapes::ShapeRef.new(shape: AssetIdentifier, required: true, location: "uri", location_name: "identifier"))
    GetAssetInput.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, location: "querystring", location_name: "revision"))
    GetAssetInput.struct_class = Types::GetAssetInput

    GetAssetOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    GetAssetOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    GetAssetOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetAssetOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GetAssetOutput.add_member(:external_identifier, Shapes::ShapeRef.new(shape: ExternalIdentifier, location_name: "externalIdentifier"))
    GetAssetOutput.add_member(:first_revision_created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "firstRevisionCreatedAt"))
    GetAssetOutput.add_member(:first_revision_created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "firstRevisionCreatedBy"))
    GetAssetOutput.add_member(:forms_output, Shapes::ShapeRef.new(shape: FormOutputList, required: true, location_name: "formsOutput"))
    GetAssetOutput.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: GlossaryTerms, location_name: "glossaryTerms"))
    GetAssetOutput.add_member(:id, Shapes::ShapeRef.new(shape: AssetId, required: true, location_name: "id"))
    GetAssetOutput.add_member(:listing, Shapes::ShapeRef.new(shape: AssetListingDetails, location_name: "listing"))
    GetAssetOutput.add_member(:name, Shapes::ShapeRef.new(shape: AssetName, required: true, location_name: "name"))
    GetAssetOutput.add_member(:owning_project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "owningProjectId"))
    GetAssetOutput.add_member(:read_only_forms_output, Shapes::ShapeRef.new(shape: FormOutputList, location_name: "readOnlyFormsOutput"))
    GetAssetOutput.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "revision"))
    GetAssetOutput.add_member(:type_identifier, Shapes::ShapeRef.new(shape: AssetTypeIdentifier, required: true, location_name: "typeIdentifier"))
    GetAssetOutput.add_member(:type_revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "typeRevision"))
    GetAssetOutput.struct_class = Types::GetAssetOutput

    GetAssetTypeInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    GetAssetTypeInput.add_member(:identifier, Shapes::ShapeRef.new(shape: AssetTypeIdentifier, required: true, location: "uri", location_name: "identifier"))
    GetAssetTypeInput.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, location: "querystring", location_name: "revision"))
    GetAssetTypeInput.struct_class = Types::GetAssetTypeInput

    GetAssetTypeOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    GetAssetTypeOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    GetAssetTypeOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetAssetTypeOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GetAssetTypeOutput.add_member(:forms_output, Shapes::ShapeRef.new(shape: FormsOutputMap, required: true, location_name: "formsOutput"))
    GetAssetTypeOutput.add_member(:name, Shapes::ShapeRef.new(shape: TypeName, required: true, location_name: "name"))
    GetAssetTypeOutput.add_member(:origin_domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "originDomainId"))
    GetAssetTypeOutput.add_member(:origin_project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "originProjectId"))
    GetAssetTypeOutput.add_member(:owning_project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "owningProjectId"))
    GetAssetTypeOutput.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "revision"))
    GetAssetTypeOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetAssetTypeOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetAssetTypeOutput.struct_class = Types::GetAssetTypeOutput

    GetDataSourceInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    GetDataSourceInput.add_member(:identifier, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location: "uri", location_name: "identifier"))
    GetDataSourceInput.struct_class = Types::GetDataSourceInput

    GetDataSourceOutput.add_member(:asset_forms_output, Shapes::ShapeRef.new(shape: FormOutputList, location_name: "assetFormsOutput"))
    GetDataSourceOutput.add_member(:configuration, Shapes::ShapeRef.new(shape: DataSourceConfigurationOutput, location_name: "configuration"))
    GetDataSourceOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "createdAt"))
    GetDataSourceOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetDataSourceOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GetDataSourceOutput.add_member(:enable_setting, Shapes::ShapeRef.new(shape: EnableSetting, location_name: "enableSetting"))
    GetDataSourceOutput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    GetDataSourceOutput.add_member(:error_message, Shapes::ShapeRef.new(shape: DataSourceErrorMessage, location_name: "errorMessage"))
    GetDataSourceOutput.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "id"))
    GetDataSourceOutput.add_member(:last_run_asset_count, Shapes::ShapeRef.new(shape: Integer, location_name: "lastRunAssetCount"))
    GetDataSourceOutput.add_member(:last_run_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "lastRunAt"))
    GetDataSourceOutput.add_member(:last_run_error_message, Shapes::ShapeRef.new(shape: DataSourceErrorMessage, location_name: "lastRunErrorMessage"))
    GetDataSourceOutput.add_member(:last_run_status, Shapes::ShapeRef.new(shape: DataSourceRunStatus, location_name: "lastRunStatus"))
    GetDataSourceOutput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    GetDataSourceOutput.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    GetDataSourceOutput.add_member(:publish_on_import, Shapes::ShapeRef.new(shape: Boolean, location_name: "publishOnImport"))
    GetDataSourceOutput.add_member(:recommendation, Shapes::ShapeRef.new(shape: RecommendationConfiguration, location_name: "recommendation"))
    GetDataSourceOutput.add_member(:schedule, Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: "schedule"))
    GetDataSourceOutput.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: "status"))
    GetDataSourceOutput.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, location_name: "type"))
    GetDataSourceOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "updatedAt"))
    GetDataSourceOutput.struct_class = Types::GetDataSourceOutput

    GetDataSourceRunInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    GetDataSourceRunInput.add_member(:identifier, Shapes::ShapeRef.new(shape: DataSourceRunId, required: true, location: "uri", location_name: "identifier"))
    GetDataSourceRunInput.struct_class = Types::GetDataSourceRunInput

    GetDataSourceRunOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    GetDataSourceRunOutput.add_member(:data_source_configuration_snapshot, Shapes::ShapeRef.new(shape: String, location_name: "dataSourceConfigurationSnapshot"))
    GetDataSourceRunOutput.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "dataSourceId"))
    GetDataSourceRunOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GetDataSourceRunOutput.add_member(:error_message, Shapes::ShapeRef.new(shape: DataSourceErrorMessage, location_name: "errorMessage"))
    GetDataSourceRunOutput.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceRunId, required: true, location_name: "id"))
    GetDataSourceRunOutput.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    GetDataSourceRunOutput.add_member(:run_statistics_for_assets, Shapes::ShapeRef.new(shape: RunStatisticsForAssets, location_name: "runStatisticsForAssets"))
    GetDataSourceRunOutput.add_member(:started_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "startedAt"))
    GetDataSourceRunOutput.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceRunStatus, required: true, location_name: "status"))
    GetDataSourceRunOutput.add_member(:stopped_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "stoppedAt"))
    GetDataSourceRunOutput.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceRunType, required: true, location_name: "type"))
    GetDataSourceRunOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "updatedAt"))
    GetDataSourceRunOutput.struct_class = Types::GetDataSourceRunOutput

    GetDomainInput.add_member(:identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "identifier"))
    GetDomainInput.struct_class = Types::GetDomainInput

    GetDomainOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    GetDomainOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    GetDomainOutput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    GetDomainOutput.add_member(:domain_execution_role, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "domainExecutionRole"))
    GetDomainOutput.add_member(:id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "id"))
    GetDomainOutput.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyIdentifier"))
    GetDomainOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "lastUpdatedAt"))
    GetDomainOutput.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    GetDomainOutput.add_member(:portal_url, Shapes::ShapeRef.new(shape: String, location_name: "portalUrl"))
    GetDomainOutput.add_member(:single_sign_on, Shapes::ShapeRef.new(shape: SingleSignOn, location_name: "singleSignOn"))
    GetDomainOutput.add_member(:status, Shapes::ShapeRef.new(shape: DomainStatus, required: true, location_name: "status"))
    GetDomainOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetDomainOutput.struct_class = Types::GetDomainOutput

    GetEnvironmentBlueprintConfigurationInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    GetEnvironmentBlueprintConfigurationInput.add_member(:environment_blueprint_identifier, Shapes::ShapeRef.new(shape: EnvironmentBlueprintId, required: true, location: "uri", location_name: "environmentBlueprintIdentifier"))
    GetEnvironmentBlueprintConfigurationInput.struct_class = Types::GetEnvironmentBlueprintConfigurationInput

    GetEnvironmentBlueprintConfigurationOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    GetEnvironmentBlueprintConfigurationOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GetEnvironmentBlueprintConfigurationOutput.add_member(:enabled_regions, Shapes::ShapeRef.new(shape: EnabledRegionList, location_name: "enabledRegions"))
    GetEnvironmentBlueprintConfigurationOutput.add_member(:environment_blueprint_id, Shapes::ShapeRef.new(shape: EnvironmentBlueprintId, required: true, location_name: "environmentBlueprintId"))
    GetEnvironmentBlueprintConfigurationOutput.add_member(:manage_access_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "manageAccessRoleArn"))
    GetEnvironmentBlueprintConfigurationOutput.add_member(:provisioning_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "provisioningRoleArn"))
    GetEnvironmentBlueprintConfigurationOutput.add_member(:regional_parameters, Shapes::ShapeRef.new(shape: RegionalParameterMap, location_name: "regionalParameters"))
    GetEnvironmentBlueprintConfigurationOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    GetEnvironmentBlueprintConfigurationOutput.struct_class = Types::GetEnvironmentBlueprintConfigurationOutput

    GetEnvironmentBlueprintInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    GetEnvironmentBlueprintInput.add_member(:identifier, Shapes::ShapeRef.new(shape: EnvironmentBlueprintId, required: true, location: "uri", location_name: "identifier"))
    GetEnvironmentBlueprintInput.struct_class = Types::GetEnvironmentBlueprintInput

    GetEnvironmentBlueprintOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    GetEnvironmentBlueprintOutput.add_member(:deployment_properties, Shapes::ShapeRef.new(shape: DeploymentProperties, location_name: "deploymentProperties"))
    GetEnvironmentBlueprintOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetEnvironmentBlueprintOutput.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: GlossaryTerms, location_name: "glossaryTerms"))
    GetEnvironmentBlueprintOutput.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentBlueprintId, required: true, location_name: "id"))
    GetEnvironmentBlueprintOutput.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentBlueprintName, required: true, location_name: "name"))
    GetEnvironmentBlueprintOutput.add_member(:provider, Shapes::ShapeRef.new(shape: String, required: true, location_name: "provider"))
    GetEnvironmentBlueprintOutput.add_member(:provisioning_properties, Shapes::ShapeRef.new(shape: ProvisioningProperties, required: true, location_name: "provisioningProperties"))
    GetEnvironmentBlueprintOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    GetEnvironmentBlueprintOutput.add_member(:user_parameters, Shapes::ShapeRef.new(shape: CustomParameterList, location_name: "userParameters"))
    GetEnvironmentBlueprintOutput.struct_class = Types::GetEnvironmentBlueprintOutput

    GetEnvironmentInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    GetEnvironmentInput.add_member(:identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "identifier"))
    GetEnvironmentInput.struct_class = Types::GetEnvironmentInput

    GetEnvironmentOutput.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "awsAccountId"))
    GetEnvironmentOutput.add_member(:aws_account_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "awsAccountRegion"))
    GetEnvironmentOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    GetEnvironmentOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: String, required: true, location_name: "createdBy"))
    GetEnvironmentOutput.add_member(:deployment_properties, Shapes::ShapeRef.new(shape: DeploymentProperties, location_name: "deploymentProperties"))
    GetEnvironmentOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetEnvironmentOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GetEnvironmentOutput.add_member(:environment_actions, Shapes::ShapeRef.new(shape: EnvironmentActionList, location_name: "environmentActions"))
    GetEnvironmentOutput.add_member(:environment_blueprint_id, Shapes::ShapeRef.new(shape: EnvironmentBlueprintId, location_name: "environmentBlueprintId"))
    GetEnvironmentOutput.add_member(:environment_profile_id, Shapes::ShapeRef.new(shape: EnvironmentProfileId, required: true, location_name: "environmentProfileId"))
    GetEnvironmentOutput.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: GlossaryTerms, location_name: "glossaryTerms"))
    GetEnvironmentOutput.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "id"))
    GetEnvironmentOutput.add_member(:last_deployment, Shapes::ShapeRef.new(shape: Deployment, location_name: "lastDeployment"))
    GetEnvironmentOutput.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location_name: "name"))
    GetEnvironmentOutput.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    GetEnvironmentOutput.add_member(:provider, Shapes::ShapeRef.new(shape: String, required: true, location_name: "provider"))
    GetEnvironmentOutput.add_member(:provisioned_resources, Shapes::ShapeRef.new(shape: ResourceList, location_name: "provisionedResources"))
    GetEnvironmentOutput.add_member(:provisioning_properties, Shapes::ShapeRef.new(shape: ProvisioningProperties, location_name: "provisioningProperties"))
    GetEnvironmentOutput.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentStatus, location_name: "status"))
    GetEnvironmentOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    GetEnvironmentOutput.add_member(:user_parameters, Shapes::ShapeRef.new(shape: CustomParameterList, location_name: "userParameters"))
    GetEnvironmentOutput.struct_class = Types::GetEnvironmentOutput

    GetEnvironmentProfileInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    GetEnvironmentProfileInput.add_member(:identifier, Shapes::ShapeRef.new(shape: EnvironmentProfileId, required: true, location: "uri", location_name: "identifier"))
    GetEnvironmentProfileInput.struct_class = Types::GetEnvironmentProfileInput

    GetEnvironmentProfileOutput.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "awsAccountId"))
    GetEnvironmentProfileOutput.add_member(:aws_account_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "awsAccountRegion"))
    GetEnvironmentProfileOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    GetEnvironmentProfileOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: String, required: true, location_name: "createdBy"))
    GetEnvironmentProfileOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetEnvironmentProfileOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GetEnvironmentProfileOutput.add_member(:environment_blueprint_id, Shapes::ShapeRef.new(shape: EnvironmentBlueprintId, required: true, location_name: "environmentBlueprintId"))
    GetEnvironmentProfileOutput.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentProfileId, required: true, location_name: "id"))
    GetEnvironmentProfileOutput.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentProfileName, required: true, location_name: "name"))
    GetEnvironmentProfileOutput.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "projectId"))
    GetEnvironmentProfileOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    GetEnvironmentProfileOutput.add_member(:user_parameters, Shapes::ShapeRef.new(shape: CustomParameterList, location_name: "userParameters"))
    GetEnvironmentProfileOutput.struct_class = Types::GetEnvironmentProfileOutput

    GetFormTypeInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    GetFormTypeInput.add_member(:form_type_identifier, Shapes::ShapeRef.new(shape: FormTypeIdentifier, required: true, location: "uri", location_name: "formTypeIdentifier"))
    GetFormTypeInput.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, location: "querystring", location_name: "revision"))
    GetFormTypeInput.struct_class = Types::GetFormTypeInput

    GetFormTypeOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    GetFormTypeOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    GetFormTypeOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetFormTypeOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GetFormTypeOutput.add_member(:imports, Shapes::ShapeRef.new(shape: ImportList, location_name: "imports"))
    GetFormTypeOutput.add_member(:model, Shapes::ShapeRef.new(shape: Model, required: true, location_name: "model"))
    GetFormTypeOutput.add_member(:name, Shapes::ShapeRef.new(shape: FormTypeName, required: true, location_name: "name"))
    GetFormTypeOutput.add_member(:origin_domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "originDomainId"))
    GetFormTypeOutput.add_member(:origin_project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "originProjectId"))
    GetFormTypeOutput.add_member(:owning_project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "owningProjectId"))
    GetFormTypeOutput.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "revision"))
    GetFormTypeOutput.add_member(:status, Shapes::ShapeRef.new(shape: FormTypeStatus, location_name: "status"))
    GetFormTypeOutput.struct_class = Types::GetFormTypeOutput

    GetGlossaryInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    GetGlossaryInput.add_member(:identifier, Shapes::ShapeRef.new(shape: GlossaryId, required: true, location: "uri", location_name: "identifier"))
    GetGlossaryInput.struct_class = Types::GetGlossaryInput

    GetGlossaryOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    GetGlossaryOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    GetGlossaryOutput.add_member(:description, Shapes::ShapeRef.new(shape: GlossaryDescription, location_name: "description"))
    GetGlossaryOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GetGlossaryOutput.add_member(:id, Shapes::ShapeRef.new(shape: GlossaryId, required: true, location_name: "id"))
    GetGlossaryOutput.add_member(:name, Shapes::ShapeRef.new(shape: GlossaryName, required: true, location_name: "name"))
    GetGlossaryOutput.add_member(:owning_project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "owningProjectId"))
    GetGlossaryOutput.add_member(:status, Shapes::ShapeRef.new(shape: GlossaryStatus, required: true, location_name: "status"))
    GetGlossaryOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetGlossaryOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetGlossaryOutput.struct_class = Types::GetGlossaryOutput

    GetGlossaryTermInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    GetGlossaryTermInput.add_member(:identifier, Shapes::ShapeRef.new(shape: GlossaryTermId, required: true, location: "uri", location_name: "identifier"))
    GetGlossaryTermInput.struct_class = Types::GetGlossaryTermInput

    GetGlossaryTermOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    GetGlossaryTermOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    GetGlossaryTermOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GetGlossaryTermOutput.add_member(:glossary_id, Shapes::ShapeRef.new(shape: GlossaryId, required: true, location_name: "glossaryId"))
    GetGlossaryTermOutput.add_member(:id, Shapes::ShapeRef.new(shape: GlossaryTermId, required: true, location_name: "id"))
    GetGlossaryTermOutput.add_member(:long_description, Shapes::ShapeRef.new(shape: LongDescription, location_name: "longDescription"))
    GetGlossaryTermOutput.add_member(:name, Shapes::ShapeRef.new(shape: GlossaryTermName, required: true, location_name: "name"))
    GetGlossaryTermOutput.add_member(:short_description, Shapes::ShapeRef.new(shape: ShortDescription, location_name: "shortDescription"))
    GetGlossaryTermOutput.add_member(:status, Shapes::ShapeRef.new(shape: GlossaryTermStatus, required: true, location_name: "status"))
    GetGlossaryTermOutput.add_member(:term_relations, Shapes::ShapeRef.new(shape: TermRelations, location_name: "termRelations"))
    GetGlossaryTermOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetGlossaryTermOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetGlossaryTermOutput.struct_class = Types::GetGlossaryTermOutput

    GetGroupProfileInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    GetGroupProfileInput.add_member(:group_identifier, Shapes::ShapeRef.new(shape: GroupIdentifier, required: true, location: "uri", location_name: "groupIdentifier"))
    GetGroupProfileInput.struct_class = Types::GetGroupProfileInput

    GetGroupProfileOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "domainId"))
    GetGroupProfileOutput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupProfileName, location_name: "groupName"))
    GetGroupProfileOutput.add_member(:id, Shapes::ShapeRef.new(shape: GroupProfileId, location_name: "id"))
    GetGroupProfileOutput.add_member(:status, Shapes::ShapeRef.new(shape: GroupProfileStatus, location_name: "status"))
    GetGroupProfileOutput.struct_class = Types::GetGroupProfileOutput

    GetIamPortalLoginUrlInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    GetIamPortalLoginUrlInput.struct_class = Types::GetIamPortalLoginUrlInput

    GetIamPortalLoginUrlOutput.add_member(:auth_code_url, Shapes::ShapeRef.new(shape: String, location_name: "authCodeUrl"))
    GetIamPortalLoginUrlOutput.add_member(:user_profile_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "userProfileId"))
    GetIamPortalLoginUrlOutput.struct_class = Types::GetIamPortalLoginUrlOutput

    GetListingInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    GetListingInput.add_member(:identifier, Shapes::ShapeRef.new(shape: ListingId, required: true, location: "uri", location_name: "identifier"))
    GetListingInput.add_member(:listing_revision, Shapes::ShapeRef.new(shape: Revision, location: "querystring", location_name: "listingRevision"))
    GetListingInput.struct_class = Types::GetListingInput

    GetListingOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    GetListingOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    GetListingOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetListingOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GetListingOutput.add_member(:id, Shapes::ShapeRef.new(shape: ListingId, required: true, location_name: "id"))
    GetListingOutput.add_member(:item, Shapes::ShapeRef.new(shape: ListingItem, location_name: "item"))
    GetListingOutput.add_member(:listing_revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "listingRevision"))
    GetListingOutput.add_member(:name, Shapes::ShapeRef.new(shape: ListingName, location_name: "name"))
    GetListingOutput.add_member(:status, Shapes::ShapeRef.new(shape: ListingStatus, location_name: "status"))
    GetListingOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetListingOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetListingOutput.struct_class = Types::GetListingOutput

    GetProjectInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    GetProjectInput.add_member(:identifier, Shapes::ShapeRef.new(shape: ProjectId, required: true, location: "uri", location_name: "identifier"))
    GetProjectInput.struct_class = Types::GetProjectInput

    GetProjectOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    GetProjectOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    GetProjectOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetProjectOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GetProjectOutput.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: GlossaryTerms, location_name: "glossaryTerms"))
    GetProjectOutput.add_member(:id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "id"))
    GetProjectOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "lastUpdatedAt"))
    GetProjectOutput.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "name"))
    GetProjectOutput.struct_class = Types::GetProjectOutput

    GetSubscriptionGrantInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    GetSubscriptionGrantInput.add_member(:identifier, Shapes::ShapeRef.new(shape: SubscriptionGrantId, required: true, location: "uri", location_name: "identifier"))
    GetSubscriptionGrantInput.struct_class = Types::GetSubscriptionGrantInput

    GetSubscriptionGrantOutput.add_member(:assets, Shapes::ShapeRef.new(shape: SubscribedAssets, location_name: "assets"))
    GetSubscriptionGrantOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    GetSubscriptionGrantOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    GetSubscriptionGrantOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GetSubscriptionGrantOutput.add_member(:granted_entity, Shapes::ShapeRef.new(shape: GrantedEntity, required: true, location_name: "grantedEntity"))
    GetSubscriptionGrantOutput.add_member(:id, Shapes::ShapeRef.new(shape: SubscriptionGrantId, required: true, location_name: "id"))
    GetSubscriptionGrantOutput.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionGrantOverallStatus, required: true, location_name: "status"))
    GetSubscriptionGrantOutput.add_member(:subscription_id, Shapes::ShapeRef.new(shape: SubscriptionId, location_name: "subscriptionId"))
    GetSubscriptionGrantOutput.add_member(:subscription_target_id, Shapes::ShapeRef.new(shape: SubscriptionTargetId, required: true, location_name: "subscriptionTargetId"))
    GetSubscriptionGrantOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, required: true, location_name: "updatedAt"))
    GetSubscriptionGrantOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetSubscriptionGrantOutput.struct_class = Types::GetSubscriptionGrantOutput

    GetSubscriptionInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    GetSubscriptionInput.add_member(:identifier, Shapes::ShapeRef.new(shape: SubscriptionId, required: true, location: "uri", location_name: "identifier"))
    GetSubscriptionInput.struct_class = Types::GetSubscriptionInput

    GetSubscriptionOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    GetSubscriptionOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    GetSubscriptionOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GetSubscriptionOutput.add_member(:id, Shapes::ShapeRef.new(shape: SubscriptionId, required: true, location_name: "id"))
    GetSubscriptionOutput.add_member(:retain_permissions, Shapes::ShapeRef.new(shape: Boolean, location_name: "retainPermissions"))
    GetSubscriptionOutput.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionStatus, required: true, location_name: "status"))
    GetSubscriptionOutput.add_member(:subscribed_listing, Shapes::ShapeRef.new(shape: SubscribedListing, required: true, location_name: "subscribedListing"))
    GetSubscriptionOutput.add_member(:subscribed_principal, Shapes::ShapeRef.new(shape: SubscribedPrincipal, required: true, location_name: "subscribedPrincipal"))
    GetSubscriptionOutput.add_member(:subscription_request_id, Shapes::ShapeRef.new(shape: SubscriptionRequestId, location_name: "subscriptionRequestId"))
    GetSubscriptionOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, required: true, location_name: "updatedAt"))
    GetSubscriptionOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetSubscriptionOutput.struct_class = Types::GetSubscriptionOutput

    GetSubscriptionRequestDetailsInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    GetSubscriptionRequestDetailsInput.add_member(:identifier, Shapes::ShapeRef.new(shape: SubscriptionRequestId, required: true, location: "uri", location_name: "identifier"))
    GetSubscriptionRequestDetailsInput.struct_class = Types::GetSubscriptionRequestDetailsInput

    GetSubscriptionRequestDetailsOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    GetSubscriptionRequestDetailsOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    GetSubscriptionRequestDetailsOutput.add_member(:decision_comment, Shapes::ShapeRef.new(shape: DecisionComment, location_name: "decisionComment"))
    GetSubscriptionRequestDetailsOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GetSubscriptionRequestDetailsOutput.add_member(:id, Shapes::ShapeRef.new(shape: SubscriptionRequestId, required: true, location_name: "id"))
    GetSubscriptionRequestDetailsOutput.add_member(:request_reason, Shapes::ShapeRef.new(shape: RequestReason, required: true, location_name: "requestReason"))
    GetSubscriptionRequestDetailsOutput.add_member(:reviewer_id, Shapes::ShapeRef.new(shape: String, location_name: "reviewerId"))
    GetSubscriptionRequestDetailsOutput.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionRequestStatus, required: true, location_name: "status"))
    GetSubscriptionRequestDetailsOutput.add_member(:subscribed_listings, Shapes::ShapeRef.new(shape: GetSubscriptionRequestDetailsOutputSubscribedListingsList, required: true, location_name: "subscribedListings"))
    GetSubscriptionRequestDetailsOutput.add_member(:subscribed_principals, Shapes::ShapeRef.new(shape: GetSubscriptionRequestDetailsOutputSubscribedPrincipalsList, required: true, location_name: "subscribedPrincipals"))
    GetSubscriptionRequestDetailsOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, required: true, location_name: "updatedAt"))
    GetSubscriptionRequestDetailsOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetSubscriptionRequestDetailsOutput.struct_class = Types::GetSubscriptionRequestDetailsOutput

    GetSubscriptionRequestDetailsOutputSubscribedListingsList.member = Shapes::ShapeRef.new(shape: SubscribedListing)

    GetSubscriptionRequestDetailsOutputSubscribedPrincipalsList.member = Shapes::ShapeRef.new(shape: SubscribedPrincipal)

    GetSubscriptionTargetInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    GetSubscriptionTargetInput.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentIdentifier"))
    GetSubscriptionTargetInput.add_member(:identifier, Shapes::ShapeRef.new(shape: SubscriptionTargetId, required: true, location: "uri", location_name: "identifier"))
    GetSubscriptionTargetInput.struct_class = Types::GetSubscriptionTargetInput

    GetSubscriptionTargetOutput.add_member(:applicable_asset_types, Shapes::ShapeRef.new(shape: ApplicableAssetTypes, required: true, location_name: "applicableAssetTypes"))
    GetSubscriptionTargetOutput.add_member(:authorized_principals, Shapes::ShapeRef.new(shape: AuthorizedPrincipalIdentifiers, required: true, location_name: "authorizedPrincipals"))
    GetSubscriptionTargetOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    GetSubscriptionTargetOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    GetSubscriptionTargetOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GetSubscriptionTargetOutput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    GetSubscriptionTargetOutput.add_member(:id, Shapes::ShapeRef.new(shape: SubscriptionTargetId, required: true, location_name: "id"))
    GetSubscriptionTargetOutput.add_member(:manage_access_role, Shapes::ShapeRef.new(shape: String, required: true, location_name: "manageAccessRole"))
    GetSubscriptionTargetOutput.add_member(:name, Shapes::ShapeRef.new(shape: SubscriptionTargetName, required: true, location_name: "name"))
    GetSubscriptionTargetOutput.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    GetSubscriptionTargetOutput.add_member(:provider, Shapes::ShapeRef.new(shape: String, required: true, location_name: "provider"))
    GetSubscriptionTargetOutput.add_member(:subscription_target_config, Shapes::ShapeRef.new(shape: SubscriptionTargetForms, required: true, location_name: "subscriptionTargetConfig"))
    GetSubscriptionTargetOutput.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    GetSubscriptionTargetOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetSubscriptionTargetOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetSubscriptionTargetOutput.struct_class = Types::GetSubscriptionTargetOutput

    GetUserProfileInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    GetUserProfileInput.add_member(:type, Shapes::ShapeRef.new(shape: UserProfileType, location: "querystring", location_name: "type"))
    GetUserProfileInput.add_member(:user_identifier, Shapes::ShapeRef.new(shape: UserIdentifier, required: true, location: "uri", location_name: "userIdentifier"))
    GetUserProfileInput.struct_class = Types::GetUserProfileInput

    GetUserProfileOutput.add_member(:details, Shapes::ShapeRef.new(shape: UserProfileDetails, location_name: "details"))
    GetUserProfileOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "domainId"))
    GetUserProfileOutput.add_member(:id, Shapes::ShapeRef.new(shape: UserProfileId, location_name: "id"))
    GetUserProfileOutput.add_member(:status, Shapes::ShapeRef.new(shape: UserProfileStatus, location_name: "status"))
    GetUserProfileOutput.add_member(:type, Shapes::ShapeRef.new(shape: UserProfileType, location_name: "type"))
    GetUserProfileOutput.struct_class = Types::GetUserProfileOutput

    GlossaryItem.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    GlossaryItem.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    GlossaryItem.add_member(:description, Shapes::ShapeRef.new(shape: GlossaryDescription, location_name: "description"))
    GlossaryItem.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GlossaryItem.add_member(:id, Shapes::ShapeRef.new(shape: GlossaryId, required: true, location_name: "id"))
    GlossaryItem.add_member(:name, Shapes::ShapeRef.new(shape: GlossaryName, required: true, location_name: "name"))
    GlossaryItem.add_member(:owning_project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "owningProjectId"))
    GlossaryItem.add_member(:status, Shapes::ShapeRef.new(shape: GlossaryStatus, required: true, location_name: "status"))
    GlossaryItem.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GlossaryItem.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GlossaryItem.struct_class = Types::GlossaryItem

    GlossaryTermItem.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    GlossaryTermItem.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    GlossaryTermItem.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GlossaryTermItem.add_member(:glossary_id, Shapes::ShapeRef.new(shape: GlossaryId, required: true, location_name: "glossaryId"))
    GlossaryTermItem.add_member(:id, Shapes::ShapeRef.new(shape: GlossaryTermId, required: true, location_name: "id"))
    GlossaryTermItem.add_member(:long_description, Shapes::ShapeRef.new(shape: LongDescription, location_name: "longDescription"))
    GlossaryTermItem.add_member(:name, Shapes::ShapeRef.new(shape: GlossaryTermName, required: true, location_name: "name"))
    GlossaryTermItem.add_member(:short_description, Shapes::ShapeRef.new(shape: ShortDescription, location_name: "shortDescription"))
    GlossaryTermItem.add_member(:status, Shapes::ShapeRef.new(shape: GlossaryTermStatus, required: true, location_name: "status"))
    GlossaryTermItem.add_member(:term_relations, Shapes::ShapeRef.new(shape: TermRelations, location_name: "termRelations"))
    GlossaryTermItem.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GlossaryTermItem.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GlossaryTermItem.struct_class = Types::GlossaryTermItem

    GlossaryTerms.member = Shapes::ShapeRef.new(shape: GlossaryTermId)

    GlueRunConfigurationInput.add_member(:data_access_role, Shapes::ShapeRef.new(shape: GlueRunConfigurationInputDataAccessRoleString, location_name: "dataAccessRole"))
    GlueRunConfigurationInput.add_member(:relational_filter_configurations, Shapes::ShapeRef.new(shape: RelationalFilterConfigurations, required: true, location_name: "relationalFilterConfigurations"))
    GlueRunConfigurationInput.struct_class = Types::GlueRunConfigurationInput

    GlueRunConfigurationOutput.add_member(:account_id, Shapes::ShapeRef.new(shape: GlueRunConfigurationOutputAccountIdString, location_name: "accountId"))
    GlueRunConfigurationOutput.add_member(:data_access_role, Shapes::ShapeRef.new(shape: GlueRunConfigurationOutputDataAccessRoleString, location_name: "dataAccessRole"))
    GlueRunConfigurationOutput.add_member(:region, Shapes::ShapeRef.new(shape: GlueRunConfigurationOutputRegionString, location_name: "region"))
    GlueRunConfigurationOutput.add_member(:relational_filter_configurations, Shapes::ShapeRef.new(shape: RelationalFilterConfigurations, required: true, location_name: "relationalFilterConfigurations"))
    GlueRunConfigurationOutput.struct_class = Types::GlueRunConfigurationOutput

    GrantedEntity.add_member(:listing, Shapes::ShapeRef.new(shape: ListingRevision, location_name: "listing"))
    GrantedEntity.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    GrantedEntity.add_member_subclass(:listing, Types::GrantedEntity::Listing)
    GrantedEntity.add_member_subclass(:unknown, Types::GrantedEntity::Unknown)
    GrantedEntity.struct_class = Types::GrantedEntity

    GrantedEntityInput.add_member(:listing, Shapes::ShapeRef.new(shape: ListingRevisionInput, location_name: "listing"))
    GrantedEntityInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    GrantedEntityInput.add_member_subclass(:listing, Types::GrantedEntityInput::Listing)
    GrantedEntityInput.add_member_subclass(:unknown, Types::GrantedEntityInput::Unknown)
    GrantedEntityInput.struct_class = Types::GrantedEntityInput

    GroupDetails.add_member(:group_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "groupId"))
    GroupDetails.struct_class = Types::GroupDetails

    GroupProfileSummaries.member = Shapes::ShapeRef.new(shape: GroupProfileSummary)

    GroupProfileSummary.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "domainId"))
    GroupProfileSummary.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupProfileName, location_name: "groupName"))
    GroupProfileSummary.add_member(:id, Shapes::ShapeRef.new(shape: GroupProfileId, location_name: "id"))
    GroupProfileSummary.add_member(:status, Shapes::ShapeRef.new(shape: GroupProfileStatus, location_name: "status"))
    GroupProfileSummary.struct_class = Types::GroupProfileSummary

    IamUserProfileDetails.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    IamUserProfileDetails.struct_class = Types::IamUserProfileDetails

    Import.add_member(:name, Shapes::ShapeRef.new(shape: FormTypeName, required: true, location_name: "name"))
    Import.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "revision"))
    Import.struct_class = Types::Import

    ImportList.member = Shapes::ShapeRef.new(shape: Import)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAssetRevisionsInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    ListAssetRevisionsInput.add_member(:identifier, Shapes::ShapeRef.new(shape: AssetIdentifier, required: true, location: "uri", location_name: "identifier"))
    ListAssetRevisionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssetRevisionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListAssetRevisionsInput.struct_class = Types::ListAssetRevisionsInput

    ListAssetRevisionsOutput.add_member(:items, Shapes::ShapeRef.new(shape: AssetRevisions, location_name: "items"))
    ListAssetRevisionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAssetRevisionsOutput.struct_class = Types::ListAssetRevisionsOutput

    ListDataSourceRunActivitiesInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    ListDataSourceRunActivitiesInput.add_member(:identifier, Shapes::ShapeRef.new(shape: DataSourceRunId, required: true, location: "uri", location_name: "identifier"))
    ListDataSourceRunActivitiesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDataSourceRunActivitiesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListDataSourceRunActivitiesInput.add_member(:status, Shapes::ShapeRef.new(shape: DataAssetActivityStatus, location: "querystring", location_name: "status"))
    ListDataSourceRunActivitiesInput.struct_class = Types::ListDataSourceRunActivitiesInput

    ListDataSourceRunActivitiesOutput.add_member(:items, Shapes::ShapeRef.new(shape: DataSourceRunActivities, required: true, location_name: "items"))
    ListDataSourceRunActivitiesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDataSourceRunActivitiesOutput.struct_class = Types::ListDataSourceRunActivitiesOutput

    ListDataSourceRunsInput.add_member(:data_source_identifier, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location: "uri", location_name: "dataSourceIdentifier"))
    ListDataSourceRunsInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    ListDataSourceRunsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDataSourceRunsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListDataSourceRunsInput.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceRunStatus, location: "querystring", location_name: "status"))
    ListDataSourceRunsInput.struct_class = Types::ListDataSourceRunsInput

    ListDataSourceRunsOutput.add_member(:items, Shapes::ShapeRef.new(shape: DataSourceRunSummaries, required: true, location_name: "items"))
    ListDataSourceRunsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDataSourceRunsOutput.struct_class = Types::ListDataSourceRunsOutput

    ListDataSourcesInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    ListDataSourcesInput.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "environmentIdentifier"))
    ListDataSourcesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDataSourcesInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, location: "querystring", location_name: "name"))
    ListDataSourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListDataSourcesInput.add_member(:project_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "querystring", location_name: "projectIdentifier"))
    ListDataSourcesInput.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, location: "querystring", location_name: "status"))
    ListDataSourcesInput.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, location: "querystring", location_name: "type"))
    ListDataSourcesInput.struct_class = Types::ListDataSourcesInput

    ListDataSourcesOutput.add_member(:items, Shapes::ShapeRef.new(shape: DataSourceSummaries, required: true, location_name: "items"))
    ListDataSourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDataSourcesOutput.struct_class = Types::ListDataSourcesOutput

    ListDomainsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsForListDomains, location: "querystring", location_name: "maxResults"))
    ListDomainsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListDomainsInput.add_member(:status, Shapes::ShapeRef.new(shape: DomainStatus, location: "querystring", location_name: "status"))
    ListDomainsInput.struct_class = Types::ListDomainsInput

    ListDomainsOutput.add_member(:items, Shapes::ShapeRef.new(shape: DomainSummaries, required: true, location_name: "items"))
    ListDomainsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDomainsOutput.struct_class = Types::ListDomainsOutput

    ListEnvironmentBlueprintConfigurationsInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    ListEnvironmentBlueprintConfigurationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEnvironmentBlueprintConfigurationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListEnvironmentBlueprintConfigurationsInput.struct_class = Types::ListEnvironmentBlueprintConfigurationsInput

    ListEnvironmentBlueprintConfigurationsOutput.add_member(:items, Shapes::ShapeRef.new(shape: EnvironmentBlueprintConfigurations, location_name: "items"))
    ListEnvironmentBlueprintConfigurationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEnvironmentBlueprintConfigurationsOutput.struct_class = Types::ListEnvironmentBlueprintConfigurationsOutput

    ListEnvironmentBlueprintsInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    ListEnvironmentBlueprintsInput.add_member(:managed, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "managed"))
    ListEnvironmentBlueprintsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEnvironmentBlueprintsInput.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentBlueprintName, location: "querystring", location_name: "name"))
    ListEnvironmentBlueprintsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListEnvironmentBlueprintsInput.struct_class = Types::ListEnvironmentBlueprintsInput

    ListEnvironmentBlueprintsOutput.add_member(:items, Shapes::ShapeRef.new(shape: EnvironmentBlueprintSummaries, required: true, location_name: "items"))
    ListEnvironmentBlueprintsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEnvironmentBlueprintsOutput.struct_class = Types::ListEnvironmentBlueprintsOutput

    ListEnvironmentProfilesInput.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location: "querystring", location_name: "awsAccountId"))
    ListEnvironmentProfilesInput.add_member(:aws_account_region, Shapes::ShapeRef.new(shape: AwsRegion, location: "querystring", location_name: "awsAccountRegion"))
    ListEnvironmentProfilesInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    ListEnvironmentProfilesInput.add_member(:environment_blueprint_identifier, Shapes::ShapeRef.new(shape: EnvironmentBlueprintId, location: "querystring", location_name: "environmentBlueprintIdentifier"))
    ListEnvironmentProfilesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEnvironmentProfilesInput.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentProfileName, location: "querystring", location_name: "name"))
    ListEnvironmentProfilesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListEnvironmentProfilesInput.add_member(:project_identifier, Shapes::ShapeRef.new(shape: ProjectId, location: "querystring", location_name: "projectIdentifier"))
    ListEnvironmentProfilesInput.struct_class = Types::ListEnvironmentProfilesInput

    ListEnvironmentProfilesOutput.add_member(:items, Shapes::ShapeRef.new(shape: EnvironmentProfileSummaries, required: true, location_name: "items"))
    ListEnvironmentProfilesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEnvironmentProfilesOutput.struct_class = Types::ListEnvironmentProfilesOutput

    ListEnvironmentsInput.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location: "querystring", location_name: "awsAccountId"))
    ListEnvironmentsInput.add_member(:aws_account_region, Shapes::ShapeRef.new(shape: AwsRegion, location: "querystring", location_name: "awsAccountRegion"))
    ListEnvironmentsInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    ListEnvironmentsInput.add_member(:environment_blueprint_identifier, Shapes::ShapeRef.new(shape: EnvironmentBlueprintId, location: "querystring", location_name: "environmentBlueprintIdentifier"))
    ListEnvironmentsInput.add_member(:environment_profile_identifier, Shapes::ShapeRef.new(shape: EnvironmentProfileId, location: "querystring", location_name: "environmentProfileIdentifier"))
    ListEnvironmentsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEnvironmentsInput.add_member(:name, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "name"))
    ListEnvironmentsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListEnvironmentsInput.add_member(:project_identifier, Shapes::ShapeRef.new(shape: ProjectId, required: true, location: "querystring", location_name: "projectIdentifier"))
    ListEnvironmentsInput.add_member(:provider, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "provider"))
    ListEnvironmentsInput.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentStatus, location: "querystring", location_name: "status"))
    ListEnvironmentsInput.struct_class = Types::ListEnvironmentsInput

    ListEnvironmentsOutput.add_member(:items, Shapes::ShapeRef.new(shape: EnvironmentSummaries, required: true, location_name: "items"))
    ListEnvironmentsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEnvironmentsOutput.struct_class = Types::ListEnvironmentsOutput

    ListNotificationsInput.add_member(:after_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "afterTimestamp"))
    ListNotificationsInput.add_member(:before_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "beforeTimestamp"))
    ListNotificationsInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    ListNotificationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListNotificationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListNotificationsInput.add_member(:subjects, Shapes::ShapeRef.new(shape: NotificationSubjects, location: "querystring", location_name: "subjects"))
    ListNotificationsInput.add_member(:task_status, Shapes::ShapeRef.new(shape: TaskStatus, location: "querystring", location_name: "taskStatus"))
    ListNotificationsInput.add_member(:type, Shapes::ShapeRef.new(shape: NotificationType, required: true, location: "querystring", location_name: "type"))
    ListNotificationsInput.struct_class = Types::ListNotificationsInput

    ListNotificationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNotificationsOutput.add_member(:notifications, Shapes::ShapeRef.new(shape: NotificationsList, location_name: "notifications"))
    ListNotificationsOutput.struct_class = Types::ListNotificationsOutput

    ListProjectMembershipsInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    ListProjectMembershipsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProjectMembershipsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListProjectMembershipsInput.add_member(:project_identifier, Shapes::ShapeRef.new(shape: ProjectId, required: true, location: "uri", location_name: "projectIdentifier"))
    ListProjectMembershipsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortFieldProject, location: "querystring", location_name: "sortBy"))
    ListProjectMembershipsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListProjectMembershipsInput.struct_class = Types::ListProjectMembershipsInput

    ListProjectMembershipsOutput.add_member(:members, Shapes::ShapeRef.new(shape: ProjectMembers, required: true, location_name: "members"))
    ListProjectMembershipsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListProjectMembershipsOutput.struct_class = Types::ListProjectMembershipsOutput

    ListProjectsInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    ListProjectsInput.add_member(:group_identifier, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "groupIdentifier"))
    ListProjectsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProjectsInput.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, location: "querystring", location_name: "name"))
    ListProjectsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListProjectsInput.add_member(:user_identifier, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "userIdentifier"))
    ListProjectsInput.struct_class = Types::ListProjectsInput

    ListProjectsOutput.add_member(:items, Shapes::ShapeRef.new(shape: ProjectSummaries, location_name: "items"))
    ListProjectsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListProjectsOutput.struct_class = Types::ListProjectsOutput

    ListSubscriptionGrantsInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    ListSubscriptionGrantsInput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location: "querystring", location_name: "environmentId"))
    ListSubscriptionGrantsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSubscriptionGrantsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListSubscriptionGrantsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortKey, location: "querystring", location_name: "sortBy"))
    ListSubscriptionGrantsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListSubscriptionGrantsInput.add_member(:subscribed_listing_id, Shapes::ShapeRef.new(shape: ListingId, location: "querystring", location_name: "subscribedListingId"))
    ListSubscriptionGrantsInput.add_member(:subscription_id, Shapes::ShapeRef.new(shape: SubscriptionId, location: "querystring", location_name: "subscriptionId"))
    ListSubscriptionGrantsInput.add_member(:subscription_target_id, Shapes::ShapeRef.new(shape: SubscriptionTargetId, location: "querystring", location_name: "subscriptionTargetId"))
    ListSubscriptionGrantsInput.struct_class = Types::ListSubscriptionGrantsInput

    ListSubscriptionGrantsOutput.add_member(:items, Shapes::ShapeRef.new(shape: SubscriptionGrants, required: true, location_name: "items"))
    ListSubscriptionGrantsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSubscriptionGrantsOutput.struct_class = Types::ListSubscriptionGrantsOutput

    ListSubscriptionRequestsInput.add_member(:approver_project_id, Shapes::ShapeRef.new(shape: ProjectId, location: "querystring", location_name: "approverProjectId"))
    ListSubscriptionRequestsInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    ListSubscriptionRequestsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSubscriptionRequestsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListSubscriptionRequestsInput.add_member(:owning_project_id, Shapes::ShapeRef.new(shape: ProjectId, location: "querystring", location_name: "owningProjectId"))
    ListSubscriptionRequestsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortKey, location: "querystring", location_name: "sortBy"))
    ListSubscriptionRequestsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListSubscriptionRequestsInput.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionRequestStatus, location: "querystring", location_name: "status"))
    ListSubscriptionRequestsInput.add_member(:subscribed_listing_id, Shapes::ShapeRef.new(shape: ListingId, location: "querystring", location_name: "subscribedListingId"))
    ListSubscriptionRequestsInput.struct_class = Types::ListSubscriptionRequestsInput

    ListSubscriptionRequestsOutput.add_member(:items, Shapes::ShapeRef.new(shape: SubscriptionRequests, required: true, location_name: "items"))
    ListSubscriptionRequestsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSubscriptionRequestsOutput.struct_class = Types::ListSubscriptionRequestsOutput

    ListSubscriptionTargetsInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    ListSubscriptionTargetsInput.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentIdentifier"))
    ListSubscriptionTargetsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSubscriptionTargetsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListSubscriptionTargetsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortKey, location: "querystring", location_name: "sortBy"))
    ListSubscriptionTargetsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListSubscriptionTargetsInput.struct_class = Types::ListSubscriptionTargetsInput

    ListSubscriptionTargetsOutput.add_member(:items, Shapes::ShapeRef.new(shape: SubscriptionTargets, required: true, location_name: "items"))
    ListSubscriptionTargetsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSubscriptionTargetsOutput.struct_class = Types::ListSubscriptionTargetsOutput

    ListSubscriptionsInput.add_member(:approver_project_id, Shapes::ShapeRef.new(shape: ProjectId, location: "querystring", location_name: "approverProjectId"))
    ListSubscriptionsInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    ListSubscriptionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSubscriptionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListSubscriptionsInput.add_member(:owning_project_id, Shapes::ShapeRef.new(shape: ProjectId, location: "querystring", location_name: "owningProjectId"))
    ListSubscriptionsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortKey, location: "querystring", location_name: "sortBy"))
    ListSubscriptionsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListSubscriptionsInput.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionStatus, location: "querystring", location_name: "status"))
    ListSubscriptionsInput.add_member(:subscribed_listing_id, Shapes::ShapeRef.new(shape: ListingId, location: "querystring", location_name: "subscribedListingId"))
    ListSubscriptionsInput.add_member(:subscription_request_identifier, Shapes::ShapeRef.new(shape: SubscriptionRequestId, location: "querystring", location_name: "subscriptionRequestIdentifier"))
    ListSubscriptionsInput.struct_class = Types::ListSubscriptionsInput

    ListSubscriptionsOutput.add_member(:items, Shapes::ShapeRef.new(shape: Subscriptions, required: true, location_name: "items"))
    ListSubscriptionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSubscriptionsOutput.struct_class = Types::ListSubscriptionsOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListingItem.add_member(:asset_listing, Shapes::ShapeRef.new(shape: AssetListing, location_name: "assetListing"))
    ListingItem.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ListingItem.add_member_subclass(:asset_listing, Types::ListingItem::AssetListing)
    ListingItem.add_member_subclass(:unknown, Types::ListingItem::Unknown)
    ListingItem.struct_class = Types::ListingItem

    ListingRevision.add_member(:id, Shapes::ShapeRef.new(shape: ListingId, required: true, location_name: "id"))
    ListingRevision.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "revision"))
    ListingRevision.struct_class = Types::ListingRevision

    ListingRevisionInput.add_member(:identifier, Shapes::ShapeRef.new(shape: ListingId, required: true, location_name: "identifier"))
    ListingRevisionInput.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "revision"))
    ListingRevisionInput.struct_class = Types::ListingRevisionInput

    Member.add_member(:group_identifier, Shapes::ShapeRef.new(shape: String, location_name: "groupIdentifier"))
    Member.add_member(:user_identifier, Shapes::ShapeRef.new(shape: String, location_name: "userIdentifier"))
    Member.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Member.add_member_subclass(:group_identifier, Types::Member::GroupIdentifier)
    Member.add_member_subclass(:user_identifier, Types::Member::UserIdentifier)
    Member.add_member_subclass(:unknown, Types::Member::Unknown)
    Member.struct_class = Types::Member

    MemberDetails.add_member(:group, Shapes::ShapeRef.new(shape: GroupDetails, location_name: "group"))
    MemberDetails.add_member(:user, Shapes::ShapeRef.new(shape: UserDetails, location_name: "user"))
    MemberDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MemberDetails.add_member_subclass(:group, Types::MemberDetails::Group)
    MemberDetails.add_member_subclass(:user, Types::MemberDetails::User)
    MemberDetails.add_member_subclass(:unknown, Types::MemberDetails::Unknown)
    MemberDetails.struct_class = Types::MemberDetails

    MetadataMap.key = Shapes::ShapeRef.new(shape: String)
    MetadataMap.value = Shapes::ShapeRef.new(shape: String)

    Model.add_member(:smithy, Shapes::ShapeRef.new(shape: Smithy, location_name: "smithy"))
    Model.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Model.add_member_subclass(:smithy, Types::Model::Smithy)
    Model.add_member_subclass(:unknown, Types::Model::Unknown)
    Model.struct_class = Types::Model

    NotificationOutput.add_member(:action_link, Shapes::ShapeRef.new(shape: ActionLink, required: true, location_name: "actionLink"))
    NotificationOutput.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTimestamp"))
    NotificationOutput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainIdentifier"))
    NotificationOutput.add_member(:identifier, Shapes::ShapeRef.new(shape: TaskId, required: true, location_name: "identifier"))
    NotificationOutput.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTimestamp"))
    NotificationOutput.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "message"))
    NotificationOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: MetadataMap, location_name: "metadata"))
    NotificationOutput.add_member(:status, Shapes::ShapeRef.new(shape: TaskStatus, location_name: "status"))
    NotificationOutput.add_member(:title, Shapes::ShapeRef.new(shape: Title, required: true, location_name: "title"))
    NotificationOutput.add_member(:topic, Shapes::ShapeRef.new(shape: Topic, required: true, location_name: "topic"))
    NotificationOutput.add_member(:type, Shapes::ShapeRef.new(shape: NotificationType, required: true, location_name: "type"))
    NotificationOutput.struct_class = Types::NotificationOutput

    NotificationResource.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    NotificationResource.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    NotificationResource.add_member(:type, Shapes::ShapeRef.new(shape: NotificationResourceType, required: true, location_name: "type"))
    NotificationResource.struct_class = Types::NotificationResource

    NotificationSubjects.member = Shapes::ShapeRef.new(shape: String)

    NotificationsList.member = Shapes::ShapeRef.new(shape: NotificationOutput)

    PredictionChoices.member = Shapes::ShapeRef.new(shape: Integer)

    PredictionConfiguration.add_member(:business_name_generation, Shapes::ShapeRef.new(shape: BusinessNameGenerationConfiguration, location_name: "businessNameGeneration"))
    PredictionConfiguration.struct_class = Types::PredictionConfiguration

    ProjectMember.add_member(:designation, Shapes::ShapeRef.new(shape: UserDesignation, required: true, location_name: "designation"))
    ProjectMember.add_member(:member_details, Shapes::ShapeRef.new(shape: MemberDetails, required: true, location_name: "memberDetails"))
    ProjectMember.struct_class = Types::ProjectMember

    ProjectMembers.member = Shapes::ShapeRef.new(shape: ProjectMember)

    ProjectSummaries.member = Shapes::ShapeRef.new(shape: ProjectSummary)

    ProjectSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    ProjectSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    ProjectSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ProjectSummary.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    ProjectSummary.add_member(:id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "id"))
    ProjectSummary.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "name"))
    ProjectSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    ProjectSummary.struct_class = Types::ProjectSummary

    ProvisioningProperties.add_member(:cloud_formation, Shapes::ShapeRef.new(shape: CloudFormationProperties, location_name: "cloudFormation"))
    ProvisioningProperties.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProvisioningProperties.add_member_subclass(:cloud_formation, Types::ProvisioningProperties::CloudFormation)
    ProvisioningProperties.add_member_subclass(:unknown, Types::ProvisioningProperties::Unknown)
    ProvisioningProperties.struct_class = Types::ProvisioningProperties

    PutEnvironmentBlueprintConfigurationInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    PutEnvironmentBlueprintConfigurationInput.add_member(:enabled_regions, Shapes::ShapeRef.new(shape: EnabledRegionList, required: true, location_name: "enabledRegions"))
    PutEnvironmentBlueprintConfigurationInput.add_member(:environment_blueprint_identifier, Shapes::ShapeRef.new(shape: EnvironmentBlueprintId, required: true, location: "uri", location_name: "environmentBlueprintIdentifier"))
    PutEnvironmentBlueprintConfigurationInput.add_member(:manage_access_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "manageAccessRoleArn"))
    PutEnvironmentBlueprintConfigurationInput.add_member(:provisioning_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "provisioningRoleArn"))
    PutEnvironmentBlueprintConfigurationInput.add_member(:regional_parameters, Shapes::ShapeRef.new(shape: RegionalParameterMap, location_name: "regionalParameters"))
    PutEnvironmentBlueprintConfigurationInput.struct_class = Types::PutEnvironmentBlueprintConfigurationInput

    PutEnvironmentBlueprintConfigurationOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    PutEnvironmentBlueprintConfigurationOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    PutEnvironmentBlueprintConfigurationOutput.add_member(:enabled_regions, Shapes::ShapeRef.new(shape: EnabledRegionList, location_name: "enabledRegions"))
    PutEnvironmentBlueprintConfigurationOutput.add_member(:environment_blueprint_id, Shapes::ShapeRef.new(shape: EnvironmentBlueprintId, required: true, location_name: "environmentBlueprintId"))
    PutEnvironmentBlueprintConfigurationOutput.add_member(:manage_access_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "manageAccessRoleArn"))
    PutEnvironmentBlueprintConfigurationOutput.add_member(:provisioning_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "provisioningRoleArn"))
    PutEnvironmentBlueprintConfigurationOutput.add_member(:regional_parameters, Shapes::ShapeRef.new(shape: RegionalParameterMap, location_name: "regionalParameters"))
    PutEnvironmentBlueprintConfigurationOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    PutEnvironmentBlueprintConfigurationOutput.struct_class = Types::PutEnvironmentBlueprintConfigurationOutput

    RecommendationConfiguration.add_member(:enable_business_name_generation, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableBusinessNameGeneration"))
    RecommendationConfiguration.struct_class = Types::RecommendationConfiguration

    RedshiftClusterStorage.add_member(:cluster_name, Shapes::ShapeRef.new(shape: RedshiftClusterStorageClusterNameString, required: true, location_name: "clusterName"))
    RedshiftClusterStorage.struct_class = Types::RedshiftClusterStorage

    RedshiftCredentialConfiguration.add_member(:secret_manager_arn, Shapes::ShapeRef.new(shape: RedshiftCredentialConfigurationSecretManagerArnString, required: true, location_name: "secretManagerArn"))
    RedshiftCredentialConfiguration.struct_class = Types::RedshiftCredentialConfiguration

    RedshiftRunConfigurationInput.add_member(:data_access_role, Shapes::ShapeRef.new(shape: RedshiftRunConfigurationInputDataAccessRoleString, location_name: "dataAccessRole"))
    RedshiftRunConfigurationInput.add_member(:redshift_credential_configuration, Shapes::ShapeRef.new(shape: RedshiftCredentialConfiguration, required: true, location_name: "redshiftCredentialConfiguration"))
    RedshiftRunConfigurationInput.add_member(:redshift_storage, Shapes::ShapeRef.new(shape: RedshiftStorage, required: true, location_name: "redshiftStorage"))
    RedshiftRunConfigurationInput.add_member(:relational_filter_configurations, Shapes::ShapeRef.new(shape: RelationalFilterConfigurations, required: true, location_name: "relationalFilterConfigurations"))
    RedshiftRunConfigurationInput.struct_class = Types::RedshiftRunConfigurationInput

    RedshiftRunConfigurationOutput.add_member(:account_id, Shapes::ShapeRef.new(shape: RedshiftRunConfigurationOutputAccountIdString, location_name: "accountId"))
    RedshiftRunConfigurationOutput.add_member(:data_access_role, Shapes::ShapeRef.new(shape: RedshiftRunConfigurationOutputDataAccessRoleString, location_name: "dataAccessRole"))
    RedshiftRunConfigurationOutput.add_member(:redshift_credential_configuration, Shapes::ShapeRef.new(shape: RedshiftCredentialConfiguration, required: true, location_name: "redshiftCredentialConfiguration"))
    RedshiftRunConfigurationOutput.add_member(:redshift_storage, Shapes::ShapeRef.new(shape: RedshiftStorage, required: true, location_name: "redshiftStorage"))
    RedshiftRunConfigurationOutput.add_member(:region, Shapes::ShapeRef.new(shape: RedshiftRunConfigurationOutputRegionString, location_name: "region"))
    RedshiftRunConfigurationOutput.add_member(:relational_filter_configurations, Shapes::ShapeRef.new(shape: RelationalFilterConfigurations, required: true, location_name: "relationalFilterConfigurations"))
    RedshiftRunConfigurationOutput.struct_class = Types::RedshiftRunConfigurationOutput

    RedshiftServerlessStorage.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: RedshiftServerlessStorageWorkgroupNameString, required: true, location_name: "workgroupName"))
    RedshiftServerlessStorage.struct_class = Types::RedshiftServerlessStorage

    RedshiftStorage.add_member(:redshift_cluster_source, Shapes::ShapeRef.new(shape: RedshiftClusterStorage, location_name: "redshiftClusterSource"))
    RedshiftStorage.add_member(:redshift_serverless_source, Shapes::ShapeRef.new(shape: RedshiftServerlessStorage, location_name: "redshiftServerlessSource"))
    RedshiftStorage.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RedshiftStorage.add_member_subclass(:redshift_cluster_source, Types::RedshiftStorage::RedshiftClusterSource)
    RedshiftStorage.add_member_subclass(:redshift_serverless_source, Types::RedshiftStorage::RedshiftServerlessSource)
    RedshiftStorage.add_member_subclass(:unknown, Types::RedshiftStorage::Unknown)
    RedshiftStorage.struct_class = Types::RedshiftStorage

    RegionalParameter.key = Shapes::ShapeRef.new(shape: String)
    RegionalParameter.value = Shapes::ShapeRef.new(shape: String)

    RegionalParameterMap.key = Shapes::ShapeRef.new(shape: RegionName)
    RegionalParameterMap.value = Shapes::ShapeRef.new(shape: RegionalParameter)

    RejectChoice.add_member(:prediction_choices, Shapes::ShapeRef.new(shape: PredictionChoices, location_name: "predictionChoices"))
    RejectChoice.add_member(:prediction_target, Shapes::ShapeRef.new(shape: String, location_name: "predictionTarget"))
    RejectChoice.struct_class = Types::RejectChoice

    RejectChoices.member = Shapes::ShapeRef.new(shape: RejectChoice)

    RejectPredictionsInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    RejectPredictionsInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    RejectPredictionsInput.add_member(:identifier, Shapes::ShapeRef.new(shape: AssetIdentifier, required: true, location: "uri", location_name: "identifier"))
    RejectPredictionsInput.add_member(:reject_choices, Shapes::ShapeRef.new(shape: RejectChoices, location_name: "rejectChoices"))
    RejectPredictionsInput.add_member(:reject_rule, Shapes::ShapeRef.new(shape: RejectRule, location_name: "rejectRule"))
    RejectPredictionsInput.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, location: "querystring", location_name: "revision"))
    RejectPredictionsInput.struct_class = Types::RejectPredictionsInput

    RejectPredictionsOutput.add_member(:asset_id, Shapes::ShapeRef.new(shape: AssetId, required: true, location_name: "assetId"))
    RejectPredictionsOutput.add_member(:asset_revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "assetRevision"))
    RejectPredictionsOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    RejectPredictionsOutput.struct_class = Types::RejectPredictionsOutput

    RejectRule.add_member(:rule, Shapes::ShapeRef.new(shape: RejectRuleBehavior, location_name: "rule"))
    RejectRule.add_member(:threshold, Shapes::ShapeRef.new(shape: Float, location_name: "threshold"))
    RejectRule.struct_class = Types::RejectRule

    RejectSubscriptionRequestInput.add_member(:decision_comment, Shapes::ShapeRef.new(shape: DecisionComment, location_name: "decisionComment"))
    RejectSubscriptionRequestInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    RejectSubscriptionRequestInput.add_member(:identifier, Shapes::ShapeRef.new(shape: SubscriptionRequestId, required: true, location: "uri", location_name: "identifier"))
    RejectSubscriptionRequestInput.struct_class = Types::RejectSubscriptionRequestInput

    RejectSubscriptionRequestOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    RejectSubscriptionRequestOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    RejectSubscriptionRequestOutput.add_member(:decision_comment, Shapes::ShapeRef.new(shape: DecisionComment, location_name: "decisionComment"))
    RejectSubscriptionRequestOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    RejectSubscriptionRequestOutput.add_member(:id, Shapes::ShapeRef.new(shape: SubscriptionRequestId, required: true, location_name: "id"))
    RejectSubscriptionRequestOutput.add_member(:request_reason, Shapes::ShapeRef.new(shape: RequestReason, required: true, location_name: "requestReason"))
    RejectSubscriptionRequestOutput.add_member(:reviewer_id, Shapes::ShapeRef.new(shape: String, location_name: "reviewerId"))
    RejectSubscriptionRequestOutput.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionRequestStatus, required: true, location_name: "status"))
    RejectSubscriptionRequestOutput.add_member(:subscribed_listings, Shapes::ShapeRef.new(shape: RejectSubscriptionRequestOutputSubscribedListingsList, required: true, location_name: "subscribedListings"))
    RejectSubscriptionRequestOutput.add_member(:subscribed_principals, Shapes::ShapeRef.new(shape: RejectSubscriptionRequestOutputSubscribedPrincipalsList, required: true, location_name: "subscribedPrincipals"))
    RejectSubscriptionRequestOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, required: true, location_name: "updatedAt"))
    RejectSubscriptionRequestOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    RejectSubscriptionRequestOutput.struct_class = Types::RejectSubscriptionRequestOutput

    RejectSubscriptionRequestOutputSubscribedListingsList.member = Shapes::ShapeRef.new(shape: SubscribedListing)

    RejectSubscriptionRequestOutputSubscribedPrincipalsList.member = Shapes::ShapeRef.new(shape: SubscribedPrincipal)

    RelationalFilterConfiguration.add_member(:database_name, Shapes::ShapeRef.new(shape: RelationalFilterConfigurationDatabaseNameString, required: true, location_name: "databaseName"))
    RelationalFilterConfiguration.add_member(:filter_expressions, Shapes::ShapeRef.new(shape: FilterExpressions, location_name: "filterExpressions"))
    RelationalFilterConfiguration.add_member(:schema_name, Shapes::ShapeRef.new(shape: RelationalFilterConfigurationSchemaNameString, location_name: "schemaName"))
    RelationalFilterConfiguration.struct_class = Types::RelationalFilterConfiguration

    RelationalFilterConfigurations.member = Shapes::ShapeRef.new(shape: RelationalFilterConfiguration)

    Resource.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Resource.add_member(:provider, Shapes::ShapeRef.new(shape: String, location_name: "provider"))
    Resource.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    Resource.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "value"))
    Resource.struct_class = Types::Resource

    ResourceList.member = Shapes::ShapeRef.new(shape: Resource)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RevokeSubscriptionInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    RevokeSubscriptionInput.add_member(:identifier, Shapes::ShapeRef.new(shape: SubscriptionId, required: true, location: "uri", location_name: "identifier"))
    RevokeSubscriptionInput.add_member(:retain_permissions, Shapes::ShapeRef.new(shape: Boolean, location_name: "retainPermissions"))
    RevokeSubscriptionInput.struct_class = Types::RevokeSubscriptionInput

    RevokeSubscriptionOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    RevokeSubscriptionOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    RevokeSubscriptionOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    RevokeSubscriptionOutput.add_member(:id, Shapes::ShapeRef.new(shape: SubscriptionId, required: true, location_name: "id"))
    RevokeSubscriptionOutput.add_member(:retain_permissions, Shapes::ShapeRef.new(shape: Boolean, location_name: "retainPermissions"))
    RevokeSubscriptionOutput.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionStatus, required: true, location_name: "status"))
    RevokeSubscriptionOutput.add_member(:subscribed_listing, Shapes::ShapeRef.new(shape: SubscribedListing, required: true, location_name: "subscribedListing"))
    RevokeSubscriptionOutput.add_member(:subscribed_principal, Shapes::ShapeRef.new(shape: SubscribedPrincipal, required: true, location_name: "subscribedPrincipal"))
    RevokeSubscriptionOutput.add_member(:subscription_request_id, Shapes::ShapeRef.new(shape: SubscriptionRequestId, location_name: "subscriptionRequestId"))
    RevokeSubscriptionOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, required: true, location_name: "updatedAt"))
    RevokeSubscriptionOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    RevokeSubscriptionOutput.struct_class = Types::RevokeSubscriptionOutput

    RunStatisticsForAssets.add_member(:added, Shapes::ShapeRef.new(shape: Integer, location_name: "added"))
    RunStatisticsForAssets.add_member(:failed, Shapes::ShapeRef.new(shape: Integer, location_name: "failed"))
    RunStatisticsForAssets.add_member(:skipped, Shapes::ShapeRef.new(shape: Integer, location_name: "skipped"))
    RunStatisticsForAssets.add_member(:unchanged, Shapes::ShapeRef.new(shape: Integer, location_name: "unchanged"))
    RunStatisticsForAssets.add_member(:updated, Shapes::ShapeRef.new(shape: Integer, location_name: "updated"))
    RunStatisticsForAssets.struct_class = Types::RunStatisticsForAssets

    ScheduleConfiguration.add_member(:schedule, Shapes::ShapeRef.new(shape: CronString, location_name: "schedule"))
    ScheduleConfiguration.add_member(:timezone, Shapes::ShapeRef.new(shape: Timezone, location_name: "timezone"))
    ScheduleConfiguration.struct_class = Types::ScheduleConfiguration

    SearchGroupProfilesInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    SearchGroupProfilesInput.add_member(:group_type, Shapes::ShapeRef.new(shape: GroupSearchType, required: true, location_name: "groupType"))
    SearchGroupProfilesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchGroupProfilesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    SearchGroupProfilesInput.add_member(:search_text, Shapes::ShapeRef.new(shape: GroupSearchText, location_name: "searchText"))
    SearchGroupProfilesInput.struct_class = Types::SearchGroupProfilesInput

    SearchGroupProfilesOutput.add_member(:items, Shapes::ShapeRef.new(shape: GroupProfileSummaries, location_name: "items"))
    SearchGroupProfilesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    SearchGroupProfilesOutput.struct_class = Types::SearchGroupProfilesOutput

    SearchInItem.add_member(:attribute, Shapes::ShapeRef.new(shape: Attribute, required: true, location_name: "attribute"))
    SearchInItem.struct_class = Types::SearchInItem

    SearchInList.member = Shapes::ShapeRef.new(shape: SearchInItem)

    SearchInput.add_member(:additional_attributes, Shapes::ShapeRef.new(shape: SearchOutputAdditionalAttributes, location_name: "additionalAttributes"))
    SearchInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    SearchInput.add_member(:filters, Shapes::ShapeRef.new(shape: FilterClause, location_name: "filters"))
    SearchInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    SearchInput.add_member(:owning_project_identifier, Shapes::ShapeRef.new(shape: ProjectId, location_name: "owningProjectIdentifier"))
    SearchInput.add_member(:search_in, Shapes::ShapeRef.new(shape: SearchInList, location_name: "searchIn"))
    SearchInput.add_member(:search_scope, Shapes::ShapeRef.new(shape: InventorySearchScope, required: true, location_name: "searchScope"))
    SearchInput.add_member(:search_text, Shapes::ShapeRef.new(shape: SearchText, location_name: "searchText"))
    SearchInput.add_member(:sort, Shapes::ShapeRef.new(shape: SearchSort, location_name: "sort"))
    SearchInput.struct_class = Types::SearchInput

    SearchInventoryResultItem.add_member(:asset_item, Shapes::ShapeRef.new(shape: AssetItem, location_name: "assetItem"))
    SearchInventoryResultItem.add_member(:data_product_item, Shapes::ShapeRef.new(shape: DataProductSummary, location_name: "dataProductItem"))
    SearchInventoryResultItem.add_member(:glossary_item, Shapes::ShapeRef.new(shape: GlossaryItem, location_name: "glossaryItem"))
    SearchInventoryResultItem.add_member(:glossary_term_item, Shapes::ShapeRef.new(shape: GlossaryTermItem, location_name: "glossaryTermItem"))
    SearchInventoryResultItem.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SearchInventoryResultItem.add_member_subclass(:asset_item, Types::SearchInventoryResultItem::AssetItem)
    SearchInventoryResultItem.add_member_subclass(:data_product_item, Types::SearchInventoryResultItem::DataProductItem)
    SearchInventoryResultItem.add_member_subclass(:glossary_item, Types::SearchInventoryResultItem::GlossaryItem)
    SearchInventoryResultItem.add_member_subclass(:glossary_term_item, Types::SearchInventoryResultItem::GlossaryTermItem)
    SearchInventoryResultItem.add_member_subclass(:unknown, Types::SearchInventoryResultItem::Unknown)
    SearchInventoryResultItem.struct_class = Types::SearchInventoryResultItem

    SearchInventoryResultItems.member = Shapes::ShapeRef.new(shape: SearchInventoryResultItem)

    SearchListingsInput.add_member(:additional_attributes, Shapes::ShapeRef.new(shape: SearchOutputAdditionalAttributes, location_name: "additionalAttributes"))
    SearchListingsInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    SearchListingsInput.add_member(:filters, Shapes::ShapeRef.new(shape: FilterClause, location_name: "filters"))
    SearchListingsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchListingsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    SearchListingsInput.add_member(:search_in, Shapes::ShapeRef.new(shape: SearchInList, location_name: "searchIn"))
    SearchListingsInput.add_member(:search_text, Shapes::ShapeRef.new(shape: String, location_name: "searchText"))
    SearchListingsInput.add_member(:sort, Shapes::ShapeRef.new(shape: SearchSort, location_name: "sort"))
    SearchListingsInput.struct_class = Types::SearchListingsInput

    SearchListingsOutput.add_member(:items, Shapes::ShapeRef.new(shape: SearchResultItems, location_name: "items"))
    SearchListingsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    SearchListingsOutput.add_member(:total_match_count, Shapes::ShapeRef.new(shape: Integer, location_name: "totalMatchCount"))
    SearchListingsOutput.struct_class = Types::SearchListingsOutput

    SearchOutput.add_member(:items, Shapes::ShapeRef.new(shape: SearchInventoryResultItems, location_name: "items"))
    SearchOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    SearchOutput.add_member(:total_match_count, Shapes::ShapeRef.new(shape: Integer, location_name: "totalMatchCount"))
    SearchOutput.struct_class = Types::SearchOutput

    SearchOutputAdditionalAttributes.member = Shapes::ShapeRef.new(shape: SearchOutputAdditionalAttribute)

    SearchResultItem.add_member(:asset_listing, Shapes::ShapeRef.new(shape: AssetListingItem, location_name: "assetListing"))
    SearchResultItem.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SearchResultItem.add_member_subclass(:asset_listing, Types::SearchResultItem::AssetListing)
    SearchResultItem.add_member_subclass(:unknown, Types::SearchResultItem::Unknown)
    SearchResultItem.struct_class = Types::SearchResultItem

    SearchResultItems.member = Shapes::ShapeRef.new(shape: SearchResultItem)

    SearchSort.add_member(:attribute, Shapes::ShapeRef.new(shape: Attribute, required: true, location_name: "attribute"))
    SearchSort.add_member(:order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "order"))
    SearchSort.struct_class = Types::SearchSort

    SearchTypesInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    SearchTypesInput.add_member(:filters, Shapes::ShapeRef.new(shape: FilterClause, location_name: "filters"))
    SearchTypesInput.add_member(:managed, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "managed"))
    SearchTypesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchTypesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    SearchTypesInput.add_member(:search_in, Shapes::ShapeRef.new(shape: SearchInList, location_name: "searchIn"))
    SearchTypesInput.add_member(:search_scope, Shapes::ShapeRef.new(shape: TypesSearchScope, required: true, location_name: "searchScope"))
    SearchTypesInput.add_member(:search_text, Shapes::ShapeRef.new(shape: SearchText, location_name: "searchText"))
    SearchTypesInput.add_member(:sort, Shapes::ShapeRef.new(shape: SearchSort, location_name: "sort"))
    SearchTypesInput.struct_class = Types::SearchTypesInput

    SearchTypesOutput.add_member(:items, Shapes::ShapeRef.new(shape: SearchTypesResultItems, location_name: "items"))
    SearchTypesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    SearchTypesOutput.add_member(:total_match_count, Shapes::ShapeRef.new(shape: Integer, location_name: "totalMatchCount"))
    SearchTypesOutput.struct_class = Types::SearchTypesOutput

    SearchTypesResultItem.add_member(:asset_type_item, Shapes::ShapeRef.new(shape: AssetTypeItem, location_name: "assetTypeItem"))
    SearchTypesResultItem.add_member(:form_type_item, Shapes::ShapeRef.new(shape: FormTypeData, location_name: "formTypeItem"))
    SearchTypesResultItem.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SearchTypesResultItem.add_member_subclass(:asset_type_item, Types::SearchTypesResultItem::AssetTypeItem)
    SearchTypesResultItem.add_member_subclass(:form_type_item, Types::SearchTypesResultItem::FormTypeItem)
    SearchTypesResultItem.add_member_subclass(:unknown, Types::SearchTypesResultItem::Unknown)
    SearchTypesResultItem.struct_class = Types::SearchTypesResultItem

    SearchTypesResultItems.member = Shapes::ShapeRef.new(shape: SearchTypesResultItem)

    SearchUserProfilesInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    SearchUserProfilesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchUserProfilesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    SearchUserProfilesInput.add_member(:search_text, Shapes::ShapeRef.new(shape: UserSearchText, location_name: "searchText"))
    SearchUserProfilesInput.add_member(:user_type, Shapes::ShapeRef.new(shape: UserSearchType, required: true, location_name: "userType"))
    SearchUserProfilesInput.struct_class = Types::SearchUserProfilesInput

    SearchUserProfilesOutput.add_member(:items, Shapes::ShapeRef.new(shape: UserProfileSummaries, location_name: "items"))
    SearchUserProfilesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    SearchUserProfilesOutput.struct_class = Types::SearchUserProfilesOutput

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SingleSignOn.add_member(:type, Shapes::ShapeRef.new(shape: AuthType, location_name: "type"))
    SingleSignOn.add_member(:user_assignment, Shapes::ShapeRef.new(shape: UserAssignment, location_name: "userAssignment"))
    SingleSignOn.struct_class = Types::SingleSignOn

    SsoUserProfileDetails.add_member(:first_name, Shapes::ShapeRef.new(shape: FirstName, location_name: "firstName"))
    SsoUserProfileDetails.add_member(:last_name, Shapes::ShapeRef.new(shape: LastName, location_name: "lastName"))
    SsoUserProfileDetails.add_member(:username, Shapes::ShapeRef.new(shape: UserProfileName, location_name: "username"))
    SsoUserProfileDetails.struct_class = Types::SsoUserProfileDetails

    StartDataSourceRunInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    StartDataSourceRunInput.add_member(:data_source_identifier, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location: "uri", location_name: "dataSourceIdentifier"))
    StartDataSourceRunInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    StartDataSourceRunInput.struct_class = Types::StartDataSourceRunInput

    StartDataSourceRunOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    StartDataSourceRunOutput.add_member(:data_source_configuration_snapshot, Shapes::ShapeRef.new(shape: String, location_name: "dataSourceConfigurationSnapshot"))
    StartDataSourceRunOutput.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "dataSourceId"))
    StartDataSourceRunOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    StartDataSourceRunOutput.add_member(:error_message, Shapes::ShapeRef.new(shape: DataSourceErrorMessage, location_name: "errorMessage"))
    StartDataSourceRunOutput.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceRunId, required: true, location_name: "id"))
    StartDataSourceRunOutput.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    StartDataSourceRunOutput.add_member(:run_statistics_for_assets, Shapes::ShapeRef.new(shape: RunStatisticsForAssets, location_name: "runStatisticsForAssets"))
    StartDataSourceRunOutput.add_member(:started_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "startedAt"))
    StartDataSourceRunOutput.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceRunStatus, required: true, location_name: "status"))
    StartDataSourceRunOutput.add_member(:stopped_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "stoppedAt"))
    StartDataSourceRunOutput.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceRunType, required: true, location_name: "type"))
    StartDataSourceRunOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "updatedAt"))
    StartDataSourceRunOutput.struct_class = Types::StartDataSourceRunOutput

    SubscribedAsset.add_member(:asset_id, Shapes::ShapeRef.new(shape: AssetId, required: true, location_name: "assetId"))
    SubscribedAsset.add_member(:asset_revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "assetRevision"))
    SubscribedAsset.add_member(:failure_cause, Shapes::ShapeRef.new(shape: FailureCause, location_name: "failureCause"))
    SubscribedAsset.add_member(:failure_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "failureTimestamp"))
    SubscribedAsset.add_member(:granted_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "grantedTimestamp"))
    SubscribedAsset.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionGrantStatus, required: true, location_name: "status"))
    SubscribedAsset.add_member(:target_name, Shapes::ShapeRef.new(shape: String, location_name: "targetName"))
    SubscribedAsset.struct_class = Types::SubscribedAsset

    SubscribedAssetListing.add_member(:entity_id, Shapes::ShapeRef.new(shape: AssetId, location_name: "entityId"))
    SubscribedAssetListing.add_member(:entity_revision, Shapes::ShapeRef.new(shape: Revision, location_name: "entityRevision"))
    SubscribedAssetListing.add_member(:entity_type, Shapes::ShapeRef.new(shape: TypeName, location_name: "entityType"))
    SubscribedAssetListing.add_member(:forms, Shapes::ShapeRef.new(shape: Forms, location_name: "forms"))
    SubscribedAssetListing.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: DetailedGlossaryTerms, location_name: "glossaryTerms"))
    SubscribedAssetListing.struct_class = Types::SubscribedAssetListing

    SubscribedAssets.member = Shapes::ShapeRef.new(shape: SubscribedAsset)

    SubscribedListing.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    SubscribedListing.add_member(:id, Shapes::ShapeRef.new(shape: ListingId, required: true, location_name: "id"))
    SubscribedListing.add_member(:item, Shapes::ShapeRef.new(shape: SubscribedListingItem, required: true, location_name: "item"))
    SubscribedListing.add_member(:name, Shapes::ShapeRef.new(shape: ListingName, required: true, location_name: "name"))
    SubscribedListing.add_member(:owner_project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "ownerProjectId"))
    SubscribedListing.add_member(:owner_project_name, Shapes::ShapeRef.new(shape: String, location_name: "ownerProjectName"))
    SubscribedListing.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, location_name: "revision"))
    SubscribedListing.struct_class = Types::SubscribedListing

    SubscribedListingInput.add_member(:identifier, Shapes::ShapeRef.new(shape: ListingId, required: true, location_name: "identifier"))
    SubscribedListingInput.struct_class = Types::SubscribedListingInput

    SubscribedListingInputs.member = Shapes::ShapeRef.new(shape: SubscribedListingInput)

    SubscribedListingItem.add_member(:asset_listing, Shapes::ShapeRef.new(shape: SubscribedAssetListing, location_name: "assetListing"))
    SubscribedListingItem.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SubscribedListingItem.add_member_subclass(:asset_listing, Types::SubscribedListingItem::AssetListing)
    SubscribedListingItem.add_member_subclass(:unknown, Types::SubscribedListingItem::Unknown)
    SubscribedListingItem.struct_class = Types::SubscribedListingItem

    SubscribedPrincipal.add_member(:project, Shapes::ShapeRef.new(shape: SubscribedProject, location_name: "project"))
    SubscribedPrincipal.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SubscribedPrincipal.add_member_subclass(:project, Types::SubscribedPrincipal::Project)
    SubscribedPrincipal.add_member_subclass(:unknown, Types::SubscribedPrincipal::Unknown)
    SubscribedPrincipal.struct_class = Types::SubscribedPrincipal

    SubscribedPrincipalInput.add_member(:project, Shapes::ShapeRef.new(shape: SubscribedProjectInput, location_name: "project"))
    SubscribedPrincipalInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SubscribedPrincipalInput.add_member_subclass(:project, Types::SubscribedPrincipalInput::Project)
    SubscribedPrincipalInput.add_member_subclass(:unknown, Types::SubscribedPrincipalInput::Unknown)
    SubscribedPrincipalInput.struct_class = Types::SubscribedPrincipalInput

    SubscribedPrincipalInputs.member = Shapes::ShapeRef.new(shape: SubscribedPrincipalInput)

    SubscribedProject.add_member(:id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "id"))
    SubscribedProject.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, location_name: "name"))
    SubscribedProject.struct_class = Types::SubscribedProject

    SubscribedProjectInput.add_member(:identifier, Shapes::ShapeRef.new(shape: ProjectId, location_name: "identifier"))
    SubscribedProjectInput.struct_class = Types::SubscribedProjectInput

    SubscriptionGrantSummary.add_member(:assets, Shapes::ShapeRef.new(shape: SubscribedAssets, location_name: "assets"))
    SubscriptionGrantSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    SubscriptionGrantSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    SubscriptionGrantSummary.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    SubscriptionGrantSummary.add_member(:granted_entity, Shapes::ShapeRef.new(shape: GrantedEntity, required: true, location_name: "grantedEntity"))
    SubscriptionGrantSummary.add_member(:id, Shapes::ShapeRef.new(shape: SubscriptionGrantId, required: true, location_name: "id"))
    SubscriptionGrantSummary.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionGrantOverallStatus, required: true, location_name: "status"))
    SubscriptionGrantSummary.add_member(:subscription_id, Shapes::ShapeRef.new(shape: SubscriptionId, location_name: "subscriptionId"))
    SubscriptionGrantSummary.add_member(:subscription_target_id, Shapes::ShapeRef.new(shape: SubscriptionTargetId, required: true, location_name: "subscriptionTargetId"))
    SubscriptionGrantSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, required: true, location_name: "updatedAt"))
    SubscriptionGrantSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    SubscriptionGrantSummary.struct_class = Types::SubscriptionGrantSummary

    SubscriptionGrants.member = Shapes::ShapeRef.new(shape: SubscriptionGrantSummary)

    SubscriptionRequestSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    SubscriptionRequestSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    SubscriptionRequestSummary.add_member(:decision_comment, Shapes::ShapeRef.new(shape: DecisionComment, location_name: "decisionComment"))
    SubscriptionRequestSummary.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    SubscriptionRequestSummary.add_member(:id, Shapes::ShapeRef.new(shape: SubscriptionRequestId, required: true, location_name: "id"))
    SubscriptionRequestSummary.add_member(:request_reason, Shapes::ShapeRef.new(shape: RequestReason, required: true, location_name: "requestReason"))
    SubscriptionRequestSummary.add_member(:reviewer_id, Shapes::ShapeRef.new(shape: String, location_name: "reviewerId"))
    SubscriptionRequestSummary.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionRequestStatus, required: true, location_name: "status"))
    SubscriptionRequestSummary.add_member(:subscribed_listings, Shapes::ShapeRef.new(shape: SubscriptionRequestSummarySubscribedListingsList, required: true, location_name: "subscribedListings"))
    SubscriptionRequestSummary.add_member(:subscribed_principals, Shapes::ShapeRef.new(shape: SubscriptionRequestSummarySubscribedPrincipalsList, required: true, location_name: "subscribedPrincipals"))
    SubscriptionRequestSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, required: true, location_name: "updatedAt"))
    SubscriptionRequestSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    SubscriptionRequestSummary.struct_class = Types::SubscriptionRequestSummary

    SubscriptionRequestSummarySubscribedListingsList.member = Shapes::ShapeRef.new(shape: SubscribedListing)

    SubscriptionRequestSummarySubscribedPrincipalsList.member = Shapes::ShapeRef.new(shape: SubscribedPrincipal)

    SubscriptionRequests.member = Shapes::ShapeRef.new(shape: SubscriptionRequestSummary)

    SubscriptionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    SubscriptionSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    SubscriptionSummary.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    SubscriptionSummary.add_member(:id, Shapes::ShapeRef.new(shape: SubscriptionId, required: true, location_name: "id"))
    SubscriptionSummary.add_member(:retain_permissions, Shapes::ShapeRef.new(shape: Boolean, location_name: "retainPermissions"))
    SubscriptionSummary.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionStatus, required: true, location_name: "status"))
    SubscriptionSummary.add_member(:subscribed_listing, Shapes::ShapeRef.new(shape: SubscribedListing, required: true, location_name: "subscribedListing"))
    SubscriptionSummary.add_member(:subscribed_principal, Shapes::ShapeRef.new(shape: SubscribedPrincipal, required: true, location_name: "subscribedPrincipal"))
    SubscriptionSummary.add_member(:subscription_request_id, Shapes::ShapeRef.new(shape: SubscriptionRequestId, location_name: "subscriptionRequestId"))
    SubscriptionSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, required: true, location_name: "updatedAt"))
    SubscriptionSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    SubscriptionSummary.struct_class = Types::SubscriptionSummary

    SubscriptionTargetForm.add_member(:content, Shapes::ShapeRef.new(shape: String, required: true, location_name: "content"))
    SubscriptionTargetForm.add_member(:form_name, Shapes::ShapeRef.new(shape: FormName, required: true, location_name: "formName"))
    SubscriptionTargetForm.struct_class = Types::SubscriptionTargetForm

    SubscriptionTargetForms.member = Shapes::ShapeRef.new(shape: SubscriptionTargetForm)

    SubscriptionTargetSummary.add_member(:applicable_asset_types, Shapes::ShapeRef.new(shape: ApplicableAssetTypes, required: true, location_name: "applicableAssetTypes"))
    SubscriptionTargetSummary.add_member(:authorized_principals, Shapes::ShapeRef.new(shape: AuthorizedPrincipalIdentifiers, required: true, location_name: "authorizedPrincipals"))
    SubscriptionTargetSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    SubscriptionTargetSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    SubscriptionTargetSummary.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    SubscriptionTargetSummary.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    SubscriptionTargetSummary.add_member(:id, Shapes::ShapeRef.new(shape: SubscriptionTargetId, required: true, location_name: "id"))
    SubscriptionTargetSummary.add_member(:manage_access_role, Shapes::ShapeRef.new(shape: String, required: true, location_name: "manageAccessRole"))
    SubscriptionTargetSummary.add_member(:name, Shapes::ShapeRef.new(shape: SubscriptionTargetName, required: true, location_name: "name"))
    SubscriptionTargetSummary.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    SubscriptionTargetSummary.add_member(:provider, Shapes::ShapeRef.new(shape: String, required: true, location_name: "provider"))
    SubscriptionTargetSummary.add_member(:subscription_target_config, Shapes::ShapeRef.new(shape: SubscriptionTargetForms, required: true, location_name: "subscriptionTargetConfig"))
    SubscriptionTargetSummary.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    SubscriptionTargetSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    SubscriptionTargetSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    SubscriptionTargetSummary.struct_class = Types::SubscriptionTargetSummary

    SubscriptionTargets.member = Shapes::ShapeRef.new(shape: SubscriptionTargetSummary)

    Subscriptions.member = Shapes::ShapeRef.new(shape: SubscriptionSummary)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    TermRelations.add_member(:classifies, Shapes::ShapeRef.new(shape: TermRelationsClassifiesList, location_name: "classifies"))
    TermRelations.add_member(:is_a, Shapes::ShapeRef.new(shape: TermRelationsIsAList, location_name: "isA"))
    TermRelations.struct_class = Types::TermRelations

    TermRelationsClassifiesList.member = Shapes::ShapeRef.new(shape: GlossaryTermId)

    TermRelationsIsAList.member = Shapes::ShapeRef.new(shape: GlossaryTermId)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    Topic.add_member(:resource, Shapes::ShapeRef.new(shape: NotificationResource, required: true, location_name: "resource"))
    Topic.add_member(:role, Shapes::ShapeRef.new(shape: NotificationRole, required: true, location_name: "role"))
    Topic.add_member(:subject, Shapes::ShapeRef.new(shape: String, required: true, location_name: "subject"))
    Topic.struct_class = Types::Topic

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDataSourceInput.add_member(:asset_forms_input, Shapes::ShapeRef.new(shape: FormInputList, location_name: "assetFormsInput"))
    UpdateDataSourceInput.add_member(:configuration, Shapes::ShapeRef.new(shape: DataSourceConfigurationInput, location_name: "configuration"))
    UpdateDataSourceInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateDataSourceInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    UpdateDataSourceInput.add_member(:enable_setting, Shapes::ShapeRef.new(shape: EnableSetting, location_name: "enableSetting"))
    UpdateDataSourceInput.add_member(:identifier, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location: "uri", location_name: "identifier"))
    UpdateDataSourceInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    UpdateDataSourceInput.add_member(:publish_on_import, Shapes::ShapeRef.new(shape: Boolean, location_name: "publishOnImport"))
    UpdateDataSourceInput.add_member(:recommendation, Shapes::ShapeRef.new(shape: RecommendationConfiguration, location_name: "recommendation"))
    UpdateDataSourceInput.add_member(:schedule, Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: "schedule"))
    UpdateDataSourceInput.struct_class = Types::UpdateDataSourceInput

    UpdateDataSourceOutput.add_member(:asset_forms_output, Shapes::ShapeRef.new(shape: FormOutputList, location_name: "assetFormsOutput"))
    UpdateDataSourceOutput.add_member(:configuration, Shapes::ShapeRef.new(shape: DataSourceConfigurationOutput, location_name: "configuration"))
    UpdateDataSourceOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "createdAt"))
    UpdateDataSourceOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateDataSourceOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    UpdateDataSourceOutput.add_member(:enable_setting, Shapes::ShapeRef.new(shape: EnableSetting, location_name: "enableSetting"))
    UpdateDataSourceOutput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    UpdateDataSourceOutput.add_member(:error_message, Shapes::ShapeRef.new(shape: DataSourceErrorMessage, location_name: "errorMessage"))
    UpdateDataSourceOutput.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "id"))
    UpdateDataSourceOutput.add_member(:last_run_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "lastRunAt"))
    UpdateDataSourceOutput.add_member(:last_run_error_message, Shapes::ShapeRef.new(shape: DataSourceErrorMessage, location_name: "lastRunErrorMessage"))
    UpdateDataSourceOutput.add_member(:last_run_status, Shapes::ShapeRef.new(shape: DataSourceRunStatus, location_name: "lastRunStatus"))
    UpdateDataSourceOutput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    UpdateDataSourceOutput.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    UpdateDataSourceOutput.add_member(:publish_on_import, Shapes::ShapeRef.new(shape: Boolean, location_name: "publishOnImport"))
    UpdateDataSourceOutput.add_member(:recommendation, Shapes::ShapeRef.new(shape: RecommendationConfiguration, location_name: "recommendation"))
    UpdateDataSourceOutput.add_member(:schedule, Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: "schedule"))
    UpdateDataSourceOutput.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: "status"))
    UpdateDataSourceOutput.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, location_name: "type"))
    UpdateDataSourceOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "updatedAt"))
    UpdateDataSourceOutput.struct_class = Types::UpdateDataSourceOutput

    UpdateDomainInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateDomainInput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateDomainInput.add_member(:domain_execution_role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "domainExecutionRole"))
    UpdateDomainInput.add_member(:identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "identifier"))
    UpdateDomainInput.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    UpdateDomainInput.add_member(:single_sign_on, Shapes::ShapeRef.new(shape: SingleSignOn, location_name: "singleSignOn"))
    UpdateDomainInput.struct_class = Types::UpdateDomainInput

    UpdateDomainOutput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateDomainOutput.add_member(:domain_execution_role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "domainExecutionRole"))
    UpdateDomainOutput.add_member(:id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "id"))
    UpdateDomainOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "lastUpdatedAt"))
    UpdateDomainOutput.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    UpdateDomainOutput.add_member(:single_sign_on, Shapes::ShapeRef.new(shape: SingleSignOn, location_name: "singleSignOn"))
    UpdateDomainOutput.struct_class = Types::UpdateDomainOutput

    UpdateEnvironmentInput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateEnvironmentInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    UpdateEnvironmentInput.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: GlossaryTerms, location_name: "glossaryTerms"))
    UpdateEnvironmentInput.add_member(:identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "identifier"))
    UpdateEnvironmentInput.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    UpdateEnvironmentInput.struct_class = Types::UpdateEnvironmentInput

    UpdateEnvironmentOutput.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "awsAccountId"))
    UpdateEnvironmentOutput.add_member(:aws_account_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "awsAccountRegion"))
    UpdateEnvironmentOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    UpdateEnvironmentOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: String, required: true, location_name: "createdBy"))
    UpdateEnvironmentOutput.add_member(:deployment_properties, Shapes::ShapeRef.new(shape: DeploymentProperties, location_name: "deploymentProperties"))
    UpdateEnvironmentOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateEnvironmentOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    UpdateEnvironmentOutput.add_member(:environment_actions, Shapes::ShapeRef.new(shape: EnvironmentActionList, location_name: "environmentActions"))
    UpdateEnvironmentOutput.add_member(:environment_blueprint_id, Shapes::ShapeRef.new(shape: EnvironmentBlueprintId, location_name: "environmentBlueprintId"))
    UpdateEnvironmentOutput.add_member(:environment_profile_id, Shapes::ShapeRef.new(shape: EnvironmentProfileId, required: true, location_name: "environmentProfileId"))
    UpdateEnvironmentOutput.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: GlossaryTerms, location_name: "glossaryTerms"))
    UpdateEnvironmentOutput.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "id"))
    UpdateEnvironmentOutput.add_member(:last_deployment, Shapes::ShapeRef.new(shape: Deployment, location_name: "lastDeployment"))
    UpdateEnvironmentOutput.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location_name: "name"))
    UpdateEnvironmentOutput.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    UpdateEnvironmentOutput.add_member(:provider, Shapes::ShapeRef.new(shape: String, required: true, location_name: "provider"))
    UpdateEnvironmentOutput.add_member(:provisioned_resources, Shapes::ShapeRef.new(shape: ResourceList, location_name: "provisionedResources"))
    UpdateEnvironmentOutput.add_member(:provisioning_properties, Shapes::ShapeRef.new(shape: ProvisioningProperties, location_name: "provisioningProperties"))
    UpdateEnvironmentOutput.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentStatus, location_name: "status"))
    UpdateEnvironmentOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    UpdateEnvironmentOutput.add_member(:user_parameters, Shapes::ShapeRef.new(shape: CustomParameterList, location_name: "userParameters"))
    UpdateEnvironmentOutput.struct_class = Types::UpdateEnvironmentOutput

    UpdateEnvironmentProfileInput.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "awsAccountId"))
    UpdateEnvironmentProfileInput.add_member(:aws_account_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "awsAccountRegion"))
    UpdateEnvironmentProfileInput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateEnvironmentProfileInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    UpdateEnvironmentProfileInput.add_member(:identifier, Shapes::ShapeRef.new(shape: EnvironmentProfileId, required: true, location: "uri", location_name: "identifier"))
    UpdateEnvironmentProfileInput.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentProfileName, location_name: "name"))
    UpdateEnvironmentProfileInput.add_member(:user_parameters, Shapes::ShapeRef.new(shape: EnvironmentParametersList, location_name: "userParameters"))
    UpdateEnvironmentProfileInput.struct_class = Types::UpdateEnvironmentProfileInput

    UpdateEnvironmentProfileOutput.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "awsAccountId"))
    UpdateEnvironmentProfileOutput.add_member(:aws_account_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "awsAccountRegion"))
    UpdateEnvironmentProfileOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    UpdateEnvironmentProfileOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: String, required: true, location_name: "createdBy"))
    UpdateEnvironmentProfileOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateEnvironmentProfileOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    UpdateEnvironmentProfileOutput.add_member(:environment_blueprint_id, Shapes::ShapeRef.new(shape: EnvironmentBlueprintId, required: true, location_name: "environmentBlueprintId"))
    UpdateEnvironmentProfileOutput.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentProfileId, required: true, location_name: "id"))
    UpdateEnvironmentProfileOutput.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentProfileName, required: true, location_name: "name"))
    UpdateEnvironmentProfileOutput.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "projectId"))
    UpdateEnvironmentProfileOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    UpdateEnvironmentProfileOutput.add_member(:user_parameters, Shapes::ShapeRef.new(shape: CustomParameterList, location_name: "userParameters"))
    UpdateEnvironmentProfileOutput.struct_class = Types::UpdateEnvironmentProfileOutput

    UpdateGlossaryInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateGlossaryInput.add_member(:description, Shapes::ShapeRef.new(shape: GlossaryDescription, location_name: "description"))
    UpdateGlossaryInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    UpdateGlossaryInput.add_member(:identifier, Shapes::ShapeRef.new(shape: GlossaryId, required: true, location: "uri", location_name: "identifier"))
    UpdateGlossaryInput.add_member(:name, Shapes::ShapeRef.new(shape: GlossaryName, location_name: "name"))
    UpdateGlossaryInput.add_member(:status, Shapes::ShapeRef.new(shape: GlossaryStatus, location_name: "status"))
    UpdateGlossaryInput.struct_class = Types::UpdateGlossaryInput

    UpdateGlossaryOutput.add_member(:description, Shapes::ShapeRef.new(shape: GlossaryDescription, location_name: "description"))
    UpdateGlossaryOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    UpdateGlossaryOutput.add_member(:id, Shapes::ShapeRef.new(shape: GlossaryId, required: true, location_name: "id"))
    UpdateGlossaryOutput.add_member(:name, Shapes::ShapeRef.new(shape: GlossaryName, required: true, location_name: "name"))
    UpdateGlossaryOutput.add_member(:owning_project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "owningProjectId"))
    UpdateGlossaryOutput.add_member(:status, Shapes::ShapeRef.new(shape: GlossaryStatus, location_name: "status"))
    UpdateGlossaryOutput.struct_class = Types::UpdateGlossaryOutput

    UpdateGlossaryTermInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    UpdateGlossaryTermInput.add_member(:glossary_identifier, Shapes::ShapeRef.new(shape: GlossaryTermId, location_name: "glossaryIdentifier"))
    UpdateGlossaryTermInput.add_member(:identifier, Shapes::ShapeRef.new(shape: GlossaryTermId, required: true, location: "uri", location_name: "identifier"))
    UpdateGlossaryTermInput.add_member(:long_description, Shapes::ShapeRef.new(shape: LongDescription, location_name: "longDescription"))
    UpdateGlossaryTermInput.add_member(:name, Shapes::ShapeRef.new(shape: GlossaryTermName, location_name: "name"))
    UpdateGlossaryTermInput.add_member(:short_description, Shapes::ShapeRef.new(shape: ShortDescription, location_name: "shortDescription"))
    UpdateGlossaryTermInput.add_member(:status, Shapes::ShapeRef.new(shape: GlossaryTermStatus, location_name: "status"))
    UpdateGlossaryTermInput.add_member(:term_relations, Shapes::ShapeRef.new(shape: TermRelations, location_name: "termRelations"))
    UpdateGlossaryTermInput.struct_class = Types::UpdateGlossaryTermInput

    UpdateGlossaryTermOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    UpdateGlossaryTermOutput.add_member(:glossary_id, Shapes::ShapeRef.new(shape: GlossaryId, required: true, location_name: "glossaryId"))
    UpdateGlossaryTermOutput.add_member(:id, Shapes::ShapeRef.new(shape: GlossaryTermId, required: true, location_name: "id"))
    UpdateGlossaryTermOutput.add_member(:long_description, Shapes::ShapeRef.new(shape: LongDescription, location_name: "longDescription"))
    UpdateGlossaryTermOutput.add_member(:name, Shapes::ShapeRef.new(shape: GlossaryTermName, required: true, location_name: "name"))
    UpdateGlossaryTermOutput.add_member(:short_description, Shapes::ShapeRef.new(shape: ShortDescription, location_name: "shortDescription"))
    UpdateGlossaryTermOutput.add_member(:status, Shapes::ShapeRef.new(shape: GlossaryTermStatus, required: true, location_name: "status"))
    UpdateGlossaryTermOutput.add_member(:term_relations, Shapes::ShapeRef.new(shape: TermRelations, location_name: "termRelations"))
    UpdateGlossaryTermOutput.struct_class = Types::UpdateGlossaryTermOutput

    UpdateGroupProfileInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    UpdateGroupProfileInput.add_member(:group_identifier, Shapes::ShapeRef.new(shape: GroupIdentifier, required: true, location: "uri", location_name: "groupIdentifier"))
    UpdateGroupProfileInput.add_member(:status, Shapes::ShapeRef.new(shape: GroupProfileStatus, required: true, location_name: "status"))
    UpdateGroupProfileInput.struct_class = Types::UpdateGroupProfileInput

    UpdateGroupProfileOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "domainId"))
    UpdateGroupProfileOutput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupProfileName, location_name: "groupName"))
    UpdateGroupProfileOutput.add_member(:id, Shapes::ShapeRef.new(shape: GroupProfileId, location_name: "id"))
    UpdateGroupProfileOutput.add_member(:status, Shapes::ShapeRef.new(shape: GroupProfileStatus, location_name: "status"))
    UpdateGroupProfileOutput.struct_class = Types::UpdateGroupProfileOutput

    UpdateProjectInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateProjectInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    UpdateProjectInput.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: GlossaryTerms, location_name: "glossaryTerms"))
    UpdateProjectInput.add_member(:identifier, Shapes::ShapeRef.new(shape: ProjectId, required: true, location: "uri", location_name: "identifier"))
    UpdateProjectInput.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, location_name: "name"))
    UpdateProjectInput.struct_class = Types::UpdateProjectInput

    UpdateProjectOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    UpdateProjectOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    UpdateProjectOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateProjectOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    UpdateProjectOutput.add_member(:glossary_terms, Shapes::ShapeRef.new(shape: GlossaryTerms, location_name: "glossaryTerms"))
    UpdateProjectOutput.add_member(:id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "id"))
    UpdateProjectOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "lastUpdatedAt"))
    UpdateProjectOutput.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "name"))
    UpdateProjectOutput.struct_class = Types::UpdateProjectOutput

    UpdateSubscriptionGrantStatusInput.add_member(:asset_identifier, Shapes::ShapeRef.new(shape: AssetId, required: true, location: "uri", location_name: "assetIdentifier"))
    UpdateSubscriptionGrantStatusInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    UpdateSubscriptionGrantStatusInput.add_member(:failure_cause, Shapes::ShapeRef.new(shape: FailureCause, location_name: "failureCause"))
    UpdateSubscriptionGrantStatusInput.add_member(:identifier, Shapes::ShapeRef.new(shape: SubscriptionGrantId, required: true, location: "uri", location_name: "identifier"))
    UpdateSubscriptionGrantStatusInput.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionGrantStatus, required: true, location_name: "status"))
    UpdateSubscriptionGrantStatusInput.add_member(:target_name, Shapes::ShapeRef.new(shape: String, location_name: "targetName"))
    UpdateSubscriptionGrantStatusInput.struct_class = Types::UpdateSubscriptionGrantStatusInput

    UpdateSubscriptionGrantStatusOutput.add_member(:assets, Shapes::ShapeRef.new(shape: SubscribedAssets, location_name: "assets"))
    UpdateSubscriptionGrantStatusOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    UpdateSubscriptionGrantStatusOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    UpdateSubscriptionGrantStatusOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    UpdateSubscriptionGrantStatusOutput.add_member(:granted_entity, Shapes::ShapeRef.new(shape: GrantedEntity, required: true, location_name: "grantedEntity"))
    UpdateSubscriptionGrantStatusOutput.add_member(:id, Shapes::ShapeRef.new(shape: SubscriptionGrantId, required: true, location_name: "id"))
    UpdateSubscriptionGrantStatusOutput.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionGrantOverallStatus, required: true, location_name: "status"))
    UpdateSubscriptionGrantStatusOutput.add_member(:subscription_id, Shapes::ShapeRef.new(shape: SubscriptionId, location_name: "subscriptionId"))
    UpdateSubscriptionGrantStatusOutput.add_member(:subscription_target_id, Shapes::ShapeRef.new(shape: SubscriptionTargetId, required: true, location_name: "subscriptionTargetId"))
    UpdateSubscriptionGrantStatusOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, required: true, location_name: "updatedAt"))
    UpdateSubscriptionGrantStatusOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    UpdateSubscriptionGrantStatusOutput.struct_class = Types::UpdateSubscriptionGrantStatusOutput

    UpdateSubscriptionRequestInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    UpdateSubscriptionRequestInput.add_member(:identifier, Shapes::ShapeRef.new(shape: SubscriptionRequestId, required: true, location: "uri", location_name: "identifier"))
    UpdateSubscriptionRequestInput.add_member(:request_reason, Shapes::ShapeRef.new(shape: RequestReason, required: true, location_name: "requestReason"))
    UpdateSubscriptionRequestInput.struct_class = Types::UpdateSubscriptionRequestInput

    UpdateSubscriptionRequestOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    UpdateSubscriptionRequestOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    UpdateSubscriptionRequestOutput.add_member(:decision_comment, Shapes::ShapeRef.new(shape: DecisionComment, location_name: "decisionComment"))
    UpdateSubscriptionRequestOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    UpdateSubscriptionRequestOutput.add_member(:id, Shapes::ShapeRef.new(shape: SubscriptionRequestId, required: true, location_name: "id"))
    UpdateSubscriptionRequestOutput.add_member(:request_reason, Shapes::ShapeRef.new(shape: RequestReason, required: true, location_name: "requestReason"))
    UpdateSubscriptionRequestOutput.add_member(:reviewer_id, Shapes::ShapeRef.new(shape: String, location_name: "reviewerId"))
    UpdateSubscriptionRequestOutput.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionRequestStatus, required: true, location_name: "status"))
    UpdateSubscriptionRequestOutput.add_member(:subscribed_listings, Shapes::ShapeRef.new(shape: UpdateSubscriptionRequestOutputSubscribedListingsList, required: true, location_name: "subscribedListings"))
    UpdateSubscriptionRequestOutput.add_member(:subscribed_principals, Shapes::ShapeRef.new(shape: UpdateSubscriptionRequestOutputSubscribedPrincipalsList, required: true, location_name: "subscribedPrincipals"))
    UpdateSubscriptionRequestOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, required: true, location_name: "updatedAt"))
    UpdateSubscriptionRequestOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    UpdateSubscriptionRequestOutput.struct_class = Types::UpdateSubscriptionRequestOutput

    UpdateSubscriptionRequestOutputSubscribedListingsList.member = Shapes::ShapeRef.new(shape: SubscribedListing)

    UpdateSubscriptionRequestOutputSubscribedPrincipalsList.member = Shapes::ShapeRef.new(shape: SubscribedPrincipal)

    UpdateSubscriptionTargetInput.add_member(:applicable_asset_types, Shapes::ShapeRef.new(shape: ApplicableAssetTypes, location_name: "applicableAssetTypes"))
    UpdateSubscriptionTargetInput.add_member(:authorized_principals, Shapes::ShapeRef.new(shape: AuthorizedPrincipalIdentifiers, location_name: "authorizedPrincipals"))
    UpdateSubscriptionTargetInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    UpdateSubscriptionTargetInput.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentIdentifier"))
    UpdateSubscriptionTargetInput.add_member(:identifier, Shapes::ShapeRef.new(shape: SubscriptionTargetId, required: true, location: "uri", location_name: "identifier"))
    UpdateSubscriptionTargetInput.add_member(:manage_access_role, Shapes::ShapeRef.new(shape: String, location_name: "manageAccessRole"))
    UpdateSubscriptionTargetInput.add_member(:name, Shapes::ShapeRef.new(shape: SubscriptionTargetName, location_name: "name"))
    UpdateSubscriptionTargetInput.add_member(:provider, Shapes::ShapeRef.new(shape: String, location_name: "provider"))
    UpdateSubscriptionTargetInput.add_member(:subscription_target_config, Shapes::ShapeRef.new(shape: SubscriptionTargetForms, location_name: "subscriptionTargetConfig"))
    UpdateSubscriptionTargetInput.struct_class = Types::UpdateSubscriptionTargetInput

    UpdateSubscriptionTargetOutput.add_member(:applicable_asset_types, Shapes::ShapeRef.new(shape: ApplicableAssetTypes, required: true, location_name: "applicableAssetTypes"))
    UpdateSubscriptionTargetOutput.add_member(:authorized_principals, Shapes::ShapeRef.new(shape: AuthorizedPrincipalIdentifiers, required: true, location_name: "authorizedPrincipals"))
    UpdateSubscriptionTargetOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    UpdateSubscriptionTargetOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    UpdateSubscriptionTargetOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    UpdateSubscriptionTargetOutput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    UpdateSubscriptionTargetOutput.add_member(:id, Shapes::ShapeRef.new(shape: SubscriptionTargetId, required: true, location_name: "id"))
    UpdateSubscriptionTargetOutput.add_member(:manage_access_role, Shapes::ShapeRef.new(shape: String, required: true, location_name: "manageAccessRole"))
    UpdateSubscriptionTargetOutput.add_member(:name, Shapes::ShapeRef.new(shape: SubscriptionTargetName, required: true, location_name: "name"))
    UpdateSubscriptionTargetOutput.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    UpdateSubscriptionTargetOutput.add_member(:provider, Shapes::ShapeRef.new(shape: String, required: true, location_name: "provider"))
    UpdateSubscriptionTargetOutput.add_member(:subscription_target_config, Shapes::ShapeRef.new(shape: SubscriptionTargetForms, required: true, location_name: "subscriptionTargetConfig"))
    UpdateSubscriptionTargetOutput.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    UpdateSubscriptionTargetOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    UpdateSubscriptionTargetOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    UpdateSubscriptionTargetOutput.struct_class = Types::UpdateSubscriptionTargetOutput

    UpdateUserProfileInput.add_member(:domain_identifier, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainIdentifier"))
    UpdateUserProfileInput.add_member(:status, Shapes::ShapeRef.new(shape: UserProfileStatus, required: true, location_name: "status"))
    UpdateUserProfileInput.add_member(:type, Shapes::ShapeRef.new(shape: UserProfileType, location_name: "type"))
    UpdateUserProfileInput.add_member(:user_identifier, Shapes::ShapeRef.new(shape: UserIdentifier, required: true, location: "uri", location_name: "userIdentifier"))
    UpdateUserProfileInput.struct_class = Types::UpdateUserProfileInput

    UpdateUserProfileOutput.add_member(:details, Shapes::ShapeRef.new(shape: UserProfileDetails, location_name: "details"))
    UpdateUserProfileOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "domainId"))
    UpdateUserProfileOutput.add_member(:id, Shapes::ShapeRef.new(shape: UserProfileId, location_name: "id"))
    UpdateUserProfileOutput.add_member(:status, Shapes::ShapeRef.new(shape: UserProfileStatus, location_name: "status"))
    UpdateUserProfileOutput.add_member(:type, Shapes::ShapeRef.new(shape: UserProfileType, location_name: "type"))
    UpdateUserProfileOutput.struct_class = Types::UpdateUserProfileOutput

    UserDetails.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "userId"))
    UserDetails.struct_class = Types::UserDetails

    UserProfileDetails.add_member(:iam, Shapes::ShapeRef.new(shape: IamUserProfileDetails, location_name: "iam"))
    UserProfileDetails.add_member(:sso, Shapes::ShapeRef.new(shape: SsoUserProfileDetails, location_name: "sso"))
    UserProfileDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    UserProfileDetails.add_member_subclass(:iam, Types::UserProfileDetails::Iam)
    UserProfileDetails.add_member_subclass(:sso, Types::UserProfileDetails::Sso)
    UserProfileDetails.add_member_subclass(:unknown, Types::UserProfileDetails::Unknown)
    UserProfileDetails.struct_class = Types::UserProfileDetails

    UserProfileSummaries.member = Shapes::ShapeRef.new(shape: UserProfileSummary)

    UserProfileSummary.add_member(:details, Shapes::ShapeRef.new(shape: UserProfileDetails, location_name: "details"))
    UserProfileSummary.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "domainId"))
    UserProfileSummary.add_member(:id, Shapes::ShapeRef.new(shape: UserProfileId, location_name: "id"))
    UserProfileSummary.add_member(:status, Shapes::ShapeRef.new(shape: UserProfileStatus, location_name: "status"))
    UserProfileSummary.add_member(:type, Shapes::ShapeRef.new(shape: UserProfileType, location_name: "type"))
    UserProfileSummary.struct_class = Types::UserProfileSummary

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "endpointPrefix" => "datazone",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon DataZone",
        "serviceId" => "DataZone",
        "signatureVersion" => "v4",
        "signingName" => "datazone",
        "uid" => "datazone-2018-05-10",
      }

      api.add_operation(:accept_predictions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptPredictions"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/assets/{identifier}/accept-predictions"
        o.input = Shapes::ShapeRef.new(shape: AcceptPredictionsInput)
        o.output = Shapes::ShapeRef.new(shape: AcceptPredictionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:accept_subscription_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptSubscriptionRequest"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/subscription-requests/{identifier}/accept"
        o.input = Shapes::ShapeRef.new(shape: AcceptSubscriptionRequestInput)
        o.output = Shapes::ShapeRef.new(shape: AcceptSubscriptionRequestOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:cancel_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelSubscription"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/subscriptions/{identifier}/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelSubscriptionInput)
        o.output = Shapes::ShapeRef.new(shape: CancelSubscriptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:create_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAsset"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/assets"
        o.input = Shapes::ShapeRef.new(shape: CreateAssetInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAssetOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:create_asset_revision, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAssetRevision"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/assets/{identifier}/revisions"
        o.input = Shapes::ShapeRef.new(shape: CreateAssetRevisionInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAssetRevisionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:create_asset_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAssetType"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/asset-types"
        o.input = Shapes::ShapeRef.new(shape: CreateAssetTypeInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAssetTypeOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:create_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataSource"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/data-sources"
        o.input = Shapes::ShapeRef.new(shape: CreateDataSourceInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDataSourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:create_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomain"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDomainOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:create_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environments"
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentInput)
        o.output = Shapes::ShapeRef.new(shape: CreateEnvironmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:create_environment_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironmentProfile"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environment-profiles"
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentProfileInput)
        o.output = Shapes::ShapeRef.new(shape: CreateEnvironmentProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:create_form_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFormType"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/form-types"
        o.input = Shapes::ShapeRef.new(shape: CreateFormTypeInput)
        o.output = Shapes::ShapeRef.new(shape: CreateFormTypeOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:create_glossary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGlossary"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/glossaries"
        o.input = Shapes::ShapeRef.new(shape: CreateGlossaryInput)
        o.output = Shapes::ShapeRef.new(shape: CreateGlossaryOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:create_glossary_term, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGlossaryTerm"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/glossary-terms"
        o.input = Shapes::ShapeRef.new(shape: CreateGlossaryTermInput)
        o.output = Shapes::ShapeRef.new(shape: CreateGlossaryTermOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:create_group_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGroupProfile"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/group-profiles"
        o.input = Shapes::ShapeRef.new(shape: CreateGroupProfileInput)
        o.output = Shapes::ShapeRef.new(shape: CreateGroupProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:create_listing_change_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateListingChangeSet"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/listings/change-set"
        o.input = Shapes::ShapeRef.new(shape: CreateListingChangeSetInput)
        o.output = Shapes::ShapeRef.new(shape: CreateListingChangeSetOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:create_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProject"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/projects"
        o.input = Shapes::ShapeRef.new(shape: CreateProjectInput)
        o.output = Shapes::ShapeRef.new(shape: CreateProjectOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:create_project_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProjectMembership"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/projects/{projectIdentifier}/createMembership"
        o.input = Shapes::ShapeRef.new(shape: CreateProjectMembershipInput)
        o.output = Shapes::ShapeRef.new(shape: CreateProjectMembershipOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:create_subscription_grant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSubscriptionGrant"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/subscription-grants"
        o.input = Shapes::ShapeRef.new(shape: CreateSubscriptionGrantInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSubscriptionGrantOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:create_subscription_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSubscriptionRequest"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/subscription-requests"
        o.input = Shapes::ShapeRef.new(shape: CreateSubscriptionRequestInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSubscriptionRequestOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:create_subscription_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSubscriptionTarget"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets"
        o.input = Shapes::ShapeRef.new(shape: CreateSubscriptionTargetInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSubscriptionTargetOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:create_user_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUserProfile"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/user-profiles"
        o.input = Shapes::ShapeRef.new(shape: CreateUserProfileInput)
        o.output = Shapes::ShapeRef.new(shape: CreateUserProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:delete_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAsset"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/assets/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAssetInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteAssetOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:delete_asset_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAssetType"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/asset-types/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAssetTypeInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteAssetTypeOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:delete_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataSource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/data-sources/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataSourceInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataSourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:delete_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomain"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/domains/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteDomainOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:delete_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironment"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environments/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:delete_environment_blueprint_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironmentBlueprintConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environment-blueprint-configurations/{environmentBlueprintIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentBlueprintConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteEnvironmentBlueprintConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:delete_environment_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironmentProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environment-profiles/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentProfileInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:delete_form_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFormType"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/form-types/{formTypeIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFormTypeInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteFormTypeOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:delete_glossary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGlossary"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/glossaries/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGlossaryInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteGlossaryOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:delete_glossary_term, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGlossaryTerm"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/glossary-terms/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGlossaryTermInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteGlossaryTermOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:delete_listing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteListing"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/listings/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteListingInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteListingOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:delete_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProject"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/projects/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProjectInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteProjectOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:delete_project_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProjectMembership"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/projects/{projectIdentifier}/deleteMembership"
        o.input = Shapes::ShapeRef.new(shape: DeleteProjectMembershipInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteProjectMembershipOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:delete_subscription_grant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSubscriptionGrant"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/subscription-grants/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSubscriptionGrantInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteSubscriptionGrantOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:delete_subscription_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSubscriptionRequest"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/subscription-requests/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSubscriptionRequestInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:delete_subscription_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSubscriptionTarget"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSubscriptionTargetInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAsset"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/assets/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetAssetInput)
        o.output = Shapes::ShapeRef.new(shape: GetAssetOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_asset_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAssetType"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/asset-types/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetAssetTypeInput)
        o.output = Shapes::ShapeRef.new(shape: GetAssetTypeOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataSource"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/data-sources/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetDataSourceInput)
        o.output = Shapes::ShapeRef.new(shape: GetDataSourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_data_source_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataSourceRun"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/data-source-runs/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetDataSourceRunInput)
        o.output = Shapes::ShapeRef.new(shape: GetDataSourceRunOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomain"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetDomainInput)
        o.output = Shapes::ShapeRef.new(shape: GetDomainOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnvironment"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environments/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetEnvironmentInput)
        o.output = Shapes::ShapeRef.new(shape: GetEnvironmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_environment_blueprint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnvironmentBlueprint"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environment-blueprints/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetEnvironmentBlueprintInput)
        o.output = Shapes::ShapeRef.new(shape: GetEnvironmentBlueprintOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_environment_blueprint_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnvironmentBlueprintConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environment-blueprint-configurations/{environmentBlueprintIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetEnvironmentBlueprintConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: GetEnvironmentBlueprintConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_environment_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnvironmentProfile"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environment-profiles/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetEnvironmentProfileInput)
        o.output = Shapes::ShapeRef.new(shape: GetEnvironmentProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_form_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFormType"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/form-types/{formTypeIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetFormTypeInput)
        o.output = Shapes::ShapeRef.new(shape: GetFormTypeOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_glossary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGlossary"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/glossaries/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetGlossaryInput)
        o.output = Shapes::ShapeRef.new(shape: GetGlossaryOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_glossary_term, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGlossaryTerm"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/glossary-terms/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetGlossaryTermInput)
        o.output = Shapes::ShapeRef.new(shape: GetGlossaryTermOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_group_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGroupProfile"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/group-profiles/{groupIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetGroupProfileInput)
        o.output = Shapes::ShapeRef.new(shape: GetGroupProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_iam_portal_login_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIamPortalLoginUrl"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/get-portal-login-url"
        o.input = Shapes::ShapeRef.new(shape: GetIamPortalLoginUrlInput)
        o.output = Shapes::ShapeRef.new(shape: GetIamPortalLoginUrlOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_listing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetListing"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/listings/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetListingInput)
        o.output = Shapes::ShapeRef.new(shape: GetListingOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProject"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/projects/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetProjectInput)
        o.output = Shapes::ShapeRef.new(shape: GetProjectOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSubscription"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/subscriptions/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetSubscriptionInput)
        o.output = Shapes::ShapeRef.new(shape: GetSubscriptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_subscription_grant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSubscriptionGrant"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/subscription-grants/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetSubscriptionGrantInput)
        o.output = Shapes::ShapeRef.new(shape: GetSubscriptionGrantOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_subscription_request_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSubscriptionRequestDetails"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/subscription-requests/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetSubscriptionRequestDetailsInput)
        o.output = Shapes::ShapeRef.new(shape: GetSubscriptionRequestDetailsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_subscription_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSubscriptionTarget"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetSubscriptionTargetInput)
        o.output = Shapes::ShapeRef.new(shape: GetSubscriptionTargetOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_user_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUserProfile"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/user-profiles/{userIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetUserProfileInput)
        o.output = Shapes::ShapeRef.new(shape: GetUserProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:list_asset_revisions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssetRevisions"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/assets/{identifier}/revisions"
        o.input = Shapes::ShapeRef.new(shape: ListAssetRevisionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListAssetRevisionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_source_run_activities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataSourceRunActivities"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/data-source-runs/{identifier}/activities"
        o.input = Shapes::ShapeRef.new(shape: ListDataSourceRunActivitiesInput)
        o.output = Shapes::ShapeRef.new(shape: ListDataSourceRunActivitiesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_source_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataSourceRuns"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/data-sources/{dataSourceIdentifier}/runs"
        o.input = Shapes::ShapeRef.new(shape: ListDataSourceRunsInput)
        o.output = Shapes::ShapeRef.new(shape: ListDataSourceRunsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataSources"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/data-sources"
        o.input = Shapes::ShapeRef.new(shape: ListDataSourcesInput)
        o.output = Shapes::ShapeRef.new(shape: ListDataSourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomains"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains"
        o.input = Shapes::ShapeRef.new(shape: ListDomainsInput)
        o.output = Shapes::ShapeRef.new(shape: ListDomainsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_environment_blueprint_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironmentBlueprintConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environment-blueprint-configurations"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentBlueprintConfigurationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentBlueprintConfigurationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_environment_blueprints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironmentBlueprints"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environment-blueprints"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentBlueprintsInput)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentBlueprintsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_environment_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironmentProfiles"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environment-profiles"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentProfilesInput)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentProfilesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironments"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environments"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentsInput)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_notifications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNotifications"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/notifications"
        o.input = Shapes::ShapeRef.new(shape: ListNotificationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListNotificationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_project_memberships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProjectMemberships"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/projects/{projectIdentifier}/memberships"
        o.input = Shapes::ShapeRef.new(shape: ListProjectMembershipsInput)
        o.output = Shapes::ShapeRef.new(shape: ListProjectMembershipsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_projects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProjects"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/projects"
        o.input = Shapes::ShapeRef.new(shape: ListProjectsInput)
        o.output = Shapes::ShapeRef.new(shape: ListProjectsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_subscription_grants, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSubscriptionGrants"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/subscription-grants"
        o.input = Shapes::ShapeRef.new(shape: ListSubscriptionGrantsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSubscriptionGrantsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_subscription_requests, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSubscriptionRequests"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/subscription-requests"
        o.input = Shapes::ShapeRef.new(shape: ListSubscriptionRequestsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSubscriptionRequestsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_subscription_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSubscriptionTargets"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets"
        o.input = Shapes::ShapeRef.new(shape: ListSubscriptionTargetsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSubscriptionTargetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_subscriptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSubscriptions"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/subscriptions"
        o.input = Shapes::ShapeRef.new(shape: ListSubscriptionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSubscriptionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:put_environment_blueprint_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEnvironmentBlueprintConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environment-blueprint-configurations/{environmentBlueprintIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: PutEnvironmentBlueprintConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: PutEnvironmentBlueprintConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:reject_predictions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectPredictions"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/assets/{identifier}/reject-predictions"
        o.input = Shapes::ShapeRef.new(shape: RejectPredictionsInput)
        o.output = Shapes::ShapeRef.new(shape: RejectPredictionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:reject_subscription_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectSubscriptionRequest"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/subscription-requests/{identifier}/reject"
        o.input = Shapes::ShapeRef.new(shape: RejectSubscriptionRequestInput)
        o.output = Shapes::ShapeRef.new(shape: RejectSubscriptionRequestOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:revoke_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeSubscription"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/subscriptions/{identifier}/revoke"
        o.input = Shapes::ShapeRef.new(shape: RevokeSubscriptionInput)
        o.output = Shapes::ShapeRef.new(shape: RevokeSubscriptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:search, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Search"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/search"
        o.input = Shapes::ShapeRef.new(shape: SearchInput)
        o.output = Shapes::ShapeRef.new(shape: SearchOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_group_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchGroupProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/search-group-profiles"
        o.input = Shapes::ShapeRef.new(shape: SearchGroupProfilesInput)
        o.output = Shapes::ShapeRef.new(shape: SearchGroupProfilesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_listings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchListings"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/listings/search"
        o.input = Shapes::ShapeRef.new(shape: SearchListingsInput)
        o.output = Shapes::ShapeRef.new(shape: SearchListingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchTypes"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/types-search"
        o.input = Shapes::ShapeRef.new(shape: SearchTypesInput)
        o.output = Shapes::ShapeRef.new(shape: SearchTypesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_user_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchUserProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/search-user-profiles"
        o.input = Shapes::ShapeRef.new(shape: SearchUserProfilesInput)
        o.output = Shapes::ShapeRef.new(shape: SearchUserProfilesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_data_source_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDataSourceRun"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/data-sources/{dataSourceIdentifier}/runs"
        o.input = Shapes::ShapeRef.new(shape: StartDataSourceRunInput)
        o.output = Shapes::ShapeRef.new(shape: StartDataSourceRunOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:update_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataSource"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/data-sources/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataSourceInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataSourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:update_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDomain"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/domains/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDomainInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateDomainOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:update_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnvironment"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environments/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEnvironmentInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnvironmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:update_environment_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnvironmentProfile"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environment-profiles/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEnvironmentProfileInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnvironmentProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:update_glossary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGlossary"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/glossaries/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateGlossaryInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGlossaryOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:update_glossary_term, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGlossaryTerm"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/glossary-terms/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateGlossaryTermInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGlossaryTermOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:update_group_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGroupProfile"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/group-profiles/{groupIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateGroupProfileInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGroupProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:update_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProject"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/projects/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProjectInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateProjectOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:update_subscription_grant_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSubscriptionGrantStatus"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/subscription-grants/{identifier}/status/{assetIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSubscriptionGrantStatusInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateSubscriptionGrantStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:update_subscription_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSubscriptionRequest"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/subscription-requests/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSubscriptionRequestInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateSubscriptionRequestOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:update_subscription_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSubscriptionTarget"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSubscriptionTargetInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateSubscriptionTargetOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:update_user_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserProfile"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/domains/{domainIdentifier}/user-profiles/{userIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserProfileInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)
    end

  end
end
