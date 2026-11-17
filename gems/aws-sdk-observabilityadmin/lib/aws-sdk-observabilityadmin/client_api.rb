# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ObservabilityAdmin
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountIdentifier = Shapes::StringShape.new(name: 'AccountIdentifier')
    AccountIdentifiers = Shapes::ListShape.new(name: 'AccountIdentifiers')
    Action = Shapes::StringShape.new(name: 'Action')
    ActionCondition = Shapes::StructureShape.new(name: 'ActionCondition')
    AdvancedEventSelector = Shapes::StructureShape.new(name: 'AdvancedEventSelector')
    AdvancedEventSelectors = Shapes::ListShape.new(name: 'AdvancedEventSelectors')
    AdvancedFieldSelector = Shapes::StructureShape.new(name: 'AdvancedFieldSelector')
    AllRegions = Shapes::BooleanShape.new(name: 'AllRegions')
    AllSubscriptions = Shapes::StructureShape.new(name: 'AllSubscriptions')
    AwsConfigConnectorArn = Shapes::StringShape.new(name: 'AwsConfigConnectorArn')
    AwsResourceExplorerManagedViewArn = Shapes::StringShape.new(name: 'AwsResourceExplorerManagedViewArn')
    AzureAwsManagedFlowLogs = Shapes::StructureShape.new(name: 'AzureAwsManagedFlowLogs')
    AzureClientIdentifier = Shapes::StringShape.new(name: 'AzureClientIdentifier')
    AzureConnectorConfiguration = Shapes::StructureShape.new(name: 'AzureConnectorConfiguration')
    AzureConnectorQuery = Shapes::UnionShape.new(name: 'AzureConnectorQuery')
    AzureConnectorQueryResults = Shapes::UnionShape.new(name: 'AzureConnectorQueryResults')
    AzureCustomerManagedFlowLogs = Shapes::StructureShape.new(name: 'AzureCustomerManagedFlowLogs')
    AzureCustomerManagedFlowLogsStorageAccountsList = Shapes::ListShape.new(name: 'AzureCustomerManagedFlowLogsStorageAccountsList')
    AzureEventHubConfiguration = Shapes::StructureShape.new(name: 'AzureEventHubConfiguration')
    AzureEventHubNamespaceName = Shapes::StringShape.new(name: 'AzureEventHubNamespaceName')
    AzureEventHubPartitionCount = Shapes::IntegerShape.new(name: 'AzureEventHubPartitionCount')
    AzureEventHubSummaries = Shapes::ListShape.new(name: 'AzureEventHubSummaries')
    AzureEventHubSummary = Shapes::StructureShape.new(name: 'AzureEventHubSummary')
    AzureEventHubTier = Shapes::StringShape.new(name: 'AzureEventHubTier')
    AzureEventHubsQuery = Shapes::StructureShape.new(name: 'AzureEventHubsQuery')
    AzureFlowLogRetentionDays = Shapes::IntegerShape.new(name: 'AzureFlowLogRetentionDays')
    AzureFlowLogStorageAccountScope = Shapes::StructureShape.new(name: 'AzureFlowLogStorageAccountScope')
    AzureFlowLogStorageAccountScopeStorageAccountIdsList = Shapes::ListShape.new(name: 'AzureFlowLogStorageAccountScopeStorageAccountIdsList')
    AzureFlowLogsInfrastructure = Shapes::UnionShape.new(name: 'AzureFlowLogsInfrastructure')
    AzureInfrastructure = Shapes::StructureShape.new(name: 'AzureInfrastructure')
    AzureInfrastructureEventHubsList = Shapes::ListShape.new(name: 'AzureInfrastructureEventHubsList')
    AzureManagementGroupId = Shapes::StringShape.new(name: 'AzureManagementGroupId')
    AzureManagementGroupSummaries = Shapes::ListShape.new(name: 'AzureManagementGroupSummaries')
    AzureManagementGroupSummary = Shapes::StructureShape.new(name: 'AzureManagementGroupSummary')
    AzureManagementGroupsQuery = Shapes::StructureShape.new(name: 'AzureManagementGroupsQuery')
    AzureQueryScope = Shapes::StructureShape.new(name: 'AzureQueryScope')
    AzureQueryScopeSubscriptionIdsList = Shapes::ListShape.new(name: 'AzureQueryScopeSubscriptionIdsList')
    AzureRegion = Shapes::StringShape.new(name: 'AzureRegion')
    AzureRegionList = Shapes::ListShape.new(name: 'AzureRegionList')
    AzureRegionsQuery = Shapes::StructureShape.new(name: 'AzureRegionsQuery')
    AzureResourceId = Shapes::StringShape.new(name: 'AzureResourceId')
    AzureResourceIdScope = Shapes::StructureShape.new(name: 'AzureResourceIdScope')
    AzureResourceIdScopeResourceIdsList = Shapes::ListShape.new(name: 'AzureResourceIdScopeResourceIdsList')
    AzureResourceIdentifierSummaries = Shapes::ListShape.new(name: 'AzureResourceIdentifierSummaries')
    AzureResourceIdentifierSummary = Shapes::StructureShape.new(name: 'AzureResourceIdentifierSummary')
    AzureResourceIdsQuery = Shapes::StructureShape.new(name: 'AzureResourceIdsQuery')
    AzureResourceIdsQueryTagFiltersList = Shapes::ListShape.new(name: 'AzureResourceIdsQueryTagFiltersList')
    AzureResourceTagKey = Shapes::StringShape.new(name: 'AzureResourceTagKey')
    AzureResourceTagValue = Shapes::StringShape.new(name: 'AzureResourceTagValue')
    AzureResourceTags = Shapes::MapShape.new(name: 'AzureResourceTags')
    AzureResourceType = Shapes::StringShape.new(name: 'AzureResourceType')
    AzureResourceTypeList = Shapes::ListShape.new(name: 'AzureResourceTypeList')
    AzureResourceTypesQuery = Shapes::StructureShape.new(name: 'AzureResourceTypesQuery')
    AzureScope = Shapes::StructureShape.new(name: 'AzureScope')
    AzureScopeItem = Shapes::StructureShape.new(name: 'AzureScopeItem')
    AzureScopeItemTelemetryTypesList = Shapes::ListShape.new(name: 'AzureScopeItemTelemetryTypesList')
    AzureScopeRegionsList = Shapes::ListShape.new(name: 'AzureScopeRegionsList')
    AzureScopeResourceTypesList = Shapes::ListShape.new(name: 'AzureScopeResourceTypesList')
    AzureScopeResourcesList = Shapes::ListShape.new(name: 'AzureScopeResourcesList')
    AzureScopeTagFiltersList = Shapes::ListShape.new(name: 'AzureScopeTagFiltersList')
    AzureStorageAccountId = Shapes::StringShape.new(name: 'AzureStorageAccountId')
    AzureSubscriptionId = Shapes::StringShape.new(name: 'AzureSubscriptionId')
    AzureSubscriptionScope = Shapes::UnionShape.new(name: 'AzureSubscriptionScope')
    AzureSubscriptionScopeIdsList = Shapes::ListShape.new(name: 'AzureSubscriptionScopeIdsList')
    AzureSubscriptionSummaries = Shapes::ListShape.new(name: 'AzureSubscriptionSummaries')
    AzureSubscriptionSummary = Shapes::StructureShape.new(name: 'AzureSubscriptionSummary')
    AzureSubscriptionsQuery = Shapes::StructureShape.new(name: 'AzureSubscriptionsQuery')
    AzureTelemetrySourceConfigurationInput = Shapes::StructureShape.new(name: 'AzureTelemetrySourceConfigurationInput')
    AzureTelemetrySourceConfigurationOutput = Shapes::StructureShape.new(name: 'AzureTelemetrySourceConfigurationOutput')
    AzureTelemetryType = Shapes::StringShape.new(name: 'AzureTelemetryType')
    AzureTenantIdentifier = Shapes::StringShape.new(name: 'AzureTenantIdentifier')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CentralizationFailureReason = Shapes::StringShape.new(name: 'CentralizationFailureReason')
    CentralizationRule = Shapes::StructureShape.new(name: 'CentralizationRule')
    CentralizationRuleDestination = Shapes::StructureShape.new(name: 'CentralizationRuleDestination')
    CentralizationRuleSource = Shapes::StructureShape.new(name: 'CentralizationRuleSource')
    CentralizationRuleSummaries = Shapes::ListShape.new(name: 'CentralizationRuleSummaries')
    CentralizationRuleSummary = Shapes::StructureShape.new(name: 'CentralizationRuleSummary')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CloudtrailParameters = Shapes::StructureShape.new(name: 'CloudtrailParameters')
    Condition = Shapes::StructureShape.new(name: 'Condition')
    Conditions = Shapes::ListShape.new(name: 'Conditions')
    ConfigurationSummary = Shapes::StructureShape.new(name: 'ConfigurationSummary')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Connector = Shapes::StructureShape.new(name: 'Connector')
    ConnectorConfiguration = Shapes::UnionShape.new(name: 'ConnectorConfiguration')
    ConnectorIdentifier = Shapes::StringShape.new(name: 'ConnectorIdentifier')
    ConnectorName = Shapes::StringShape.new(name: 'ConnectorName')
    ConnectorNextToken = Shapes::StringShape.new(name: 'ConnectorNextToken')
    ConnectorProvider = Shapes::StringShape.new(name: 'ConnectorProvider')
    ConnectorQuery = Shapes::UnionShape.new(name: 'ConnectorQuery')
    ConnectorQueryResults = Shapes::UnionShape.new(name: 'ConnectorQueryResults')
    ConnectorSummaries = Shapes::ListShape.new(name: 'ConnectorSummaries')
    ConnectorSummary = Shapes::StructureShape.new(name: 'ConnectorSummary')
    ContextGraphStatus = Shapes::StringShape.new(name: 'ContextGraphStatus')
    CreateCentralizationRuleForOrganizationInput = Shapes::StructureShape.new(name: 'CreateCentralizationRuleForOrganizationInput')
    CreateCentralizationRuleForOrganizationOutput = Shapes::StructureShape.new(name: 'CreateCentralizationRuleForOrganizationOutput')
    CreateConnectorInput = Shapes::StructureShape.new(name: 'CreateConnectorInput')
    CreateConnectorOutput = Shapes::StructureShape.new(name: 'CreateConnectorOutput')
    CreateDatasetIntegrationInput = Shapes::StructureShape.new(name: 'CreateDatasetIntegrationInput')
    CreateDatasetIntegrationOutput = Shapes::StructureShape.new(name: 'CreateDatasetIntegrationOutput')
    CreateS3TableIntegrationInput = Shapes::StructureShape.new(name: 'CreateS3TableIntegrationInput')
    CreateS3TableIntegrationOutput = Shapes::StructureShape.new(name: 'CreateS3TableIntegrationOutput')
    CreateTelemetryPipelineInput = Shapes::StructureShape.new(name: 'CreateTelemetryPipelineInput')
    CreateTelemetryPipelineOutput = Shapes::StructureShape.new(name: 'CreateTelemetryPipelineOutput')
    CreateTelemetryRuleForOrganizationInput = Shapes::StructureShape.new(name: 'CreateTelemetryRuleForOrganizationInput')
    CreateTelemetryRuleForOrganizationOutput = Shapes::StructureShape.new(name: 'CreateTelemetryRuleForOrganizationOutput')
    CreateTelemetryRuleInput = Shapes::StructureShape.new(name: 'CreateTelemetryRuleInput')
    CreateTelemetryRuleOutput = Shapes::StructureShape.new(name: 'CreateTelemetryRuleOutput')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    DataSourceFilterString = Shapes::StringShape.new(name: 'DataSourceFilterString')
    DataSources = Shapes::ListShape.new(name: 'DataSources')
    DatasetIntegrationSummaries = Shapes::ListShape.new(name: 'DatasetIntegrationSummaries')
    DatasetIntegrationSummary = Shapes::StructureShape.new(name: 'DatasetIntegrationSummary')
    DeleteCentralizationRuleForOrganizationInput = Shapes::StructureShape.new(name: 'DeleteCentralizationRuleForOrganizationInput')
    DeleteConnectorInput = Shapes::StructureShape.new(name: 'DeleteConnectorInput')
    DeleteConnectorOutput = Shapes::StructureShape.new(name: 'DeleteConnectorOutput')
    DeleteDatasetIntegrationInput = Shapes::StructureShape.new(name: 'DeleteDatasetIntegrationInput')
    DeleteS3TableIntegrationInput = Shapes::StructureShape.new(name: 'DeleteS3TableIntegrationInput')
    DeleteTelemetryPipelineInput = Shapes::StructureShape.new(name: 'DeleteTelemetryPipelineInput')
    DeleteTelemetryPipelineOutput = Shapes::StructureShape.new(name: 'DeleteTelemetryPipelineOutput')
    DeleteTelemetryRuleForOrganizationInput = Shapes::StructureShape.new(name: 'DeleteTelemetryRuleForOrganizationInput')
    DeleteTelemetryRuleInput = Shapes::StructureShape.new(name: 'DeleteTelemetryRuleInput')
    DeletionProtection = Shapes::StringShape.new(name: 'DeletionProtection')
    DestinationLogsConfiguration = Shapes::StructureShape.new(name: 'DestinationLogsConfiguration')
    DestinationMetricsConfiguration = Shapes::StructureShape.new(name: 'DestinationMetricsConfiguration')
    DestinationProfilesConfiguration = Shapes::StructureShape.new(name: 'DestinationProfilesConfiguration')
    DestinationType = Shapes::StringShape.new(name: 'DestinationType')
    ELBLoadBalancerLoggingParameters = Shapes::StructureShape.new(name: 'ELBLoadBalancerLoggingParameters')
    EncryptedLogGroupStrategy = Shapes::StringShape.new(name: 'EncryptedLogGroupStrategy')
    Encryption = Shapes::StructureShape.new(name: 'Encryption')
    EncryptionConflictResolutionStrategy = Shapes::StringShape.new(name: 'EncryptionConflictResolutionStrategy')
    EncryptionScope = Shapes::StringShape.new(name: 'EncryptionScope')
    EncryptionStrategy = Shapes::StringShape.new(name: 'EncryptionStrategy')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    FieldMap = Shapes::MapShape.new(name: 'FieldMap')
    FieldSelectors = Shapes::ListShape.new(name: 'FieldSelectors')
    FieldToMatch = Shapes::StructureShape.new(name: 'FieldToMatch')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterBehavior = Shapes::StringShape.new(name: 'FilterBehavior')
    FilterRequirement = Shapes::StringShape.new(name: 'FilterRequirement')
    Filters = Shapes::ListShape.new(name: 'Filters')
    GetCentralizationRuleForOrganizationInput = Shapes::StructureShape.new(name: 'GetCentralizationRuleForOrganizationInput')
    GetCentralizationRuleForOrganizationOutput = Shapes::StructureShape.new(name: 'GetCentralizationRuleForOrganizationOutput')
    GetConnectorInput = Shapes::StructureShape.new(name: 'GetConnectorInput')
    GetConnectorOutput = Shapes::StructureShape.new(name: 'GetConnectorOutput')
    GetConnectorTelemetryManifestInput = Shapes::StructureShape.new(name: 'GetConnectorTelemetryManifestInput')
    GetConnectorTelemetryManifestOutput = Shapes::StructureShape.new(name: 'GetConnectorTelemetryManifestOutput')
    GetConnectorTelemetrySetupInput = Shapes::StructureShape.new(name: 'GetConnectorTelemetrySetupInput')
    GetConnectorTelemetrySetupOutput = Shapes::StructureShape.new(name: 'GetConnectorTelemetrySetupOutput')
    GetDatasetIntegrationInput = Shapes::StructureShape.new(name: 'GetDatasetIntegrationInput')
    GetDatasetIntegrationOutput = Shapes::StructureShape.new(name: 'GetDatasetIntegrationOutput')
    GetS3TableIntegrationInput = Shapes::StructureShape.new(name: 'GetS3TableIntegrationInput')
    GetS3TableIntegrationOutput = Shapes::StructureShape.new(name: 'GetS3TableIntegrationOutput')
    GetTelemetryEnrichmentStatusOutput = Shapes::StructureShape.new(name: 'GetTelemetryEnrichmentStatusOutput')
    GetTelemetryEvaluationStatusForOrganizationOutput = Shapes::StructureShape.new(name: 'GetTelemetryEvaluationStatusForOrganizationOutput')
    GetTelemetryEvaluationStatusOutput = Shapes::StructureShape.new(name: 'GetTelemetryEvaluationStatusOutput')
    GetTelemetryPipelineInput = Shapes::StructureShape.new(name: 'GetTelemetryPipelineInput')
    GetTelemetryPipelineOutput = Shapes::StructureShape.new(name: 'GetTelemetryPipelineOutput')
    GetTelemetryRuleForOrganizationInput = Shapes::StructureShape.new(name: 'GetTelemetryRuleForOrganizationInput')
    GetTelemetryRuleForOrganizationOutput = Shapes::StructureShape.new(name: 'GetTelemetryRuleForOrganizationOutput')
    GetTelemetryRuleInput = Shapes::StructureShape.new(name: 'GetTelemetryRuleInput')
    GetTelemetryRuleOutput = Shapes::StructureShape.new(name: 'GetTelemetryRuleOutput')
    GetThirdPartyTelemetryEnrichmentInput = Shapes::StructureShape.new(name: 'GetThirdPartyTelemetryEnrichmentInput')
    GetThirdPartyTelemetryEnrichmentOutput = Shapes::StructureShape.new(name: 'GetThirdPartyTelemetryEnrichmentOutput')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegrationStatus = Shapes::StringShape.new(name: 'IntegrationStatus')
    IntegrationSummaries = Shapes::ListShape.new(name: 'IntegrationSummaries')
    IntegrationSummary = Shapes::StructureShape.new(name: 'IntegrationSummary')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidStateException = Shapes::StructureShape.new(name: 'InvalidStateException')
    IsReplicated = Shapes::BooleanShape.new(name: 'IsReplicated')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LabelNameCondition = Shapes::StructureShape.new(name: 'LabelNameCondition')
    LabelNameConditionLabelNameString = Shapes::StringShape.new(name: 'LabelNameConditionLabelNameString')
    ListCentralizationRulesForOrganizationInput = Shapes::StructureShape.new(name: 'ListCentralizationRulesForOrganizationInput')
    ListCentralizationRulesForOrganizationInputRuleNamePrefixString = Shapes::StringShape.new(name: 'ListCentralizationRulesForOrganizationInputRuleNamePrefixString')
    ListCentralizationRulesForOrganizationMaxResults = Shapes::IntegerShape.new(name: 'ListCentralizationRulesForOrganizationMaxResults')
    ListCentralizationRulesForOrganizationOutput = Shapes::StructureShape.new(name: 'ListCentralizationRulesForOrganizationOutput')
    ListConnectorsInput = Shapes::StructureShape.new(name: 'ListConnectorsInput')
    ListConnectorsMaxResults = Shapes::IntegerShape.new(name: 'ListConnectorsMaxResults')
    ListConnectorsOutput = Shapes::StructureShape.new(name: 'ListConnectorsOutput')
    ListDatasetIntegrationsInput = Shapes::StructureShape.new(name: 'ListDatasetIntegrationsInput')
    ListDatasetIntegrationsMaxResults = Shapes::IntegerShape.new(name: 'ListDatasetIntegrationsMaxResults')
    ListDatasetIntegrationsOutput = Shapes::StructureShape.new(name: 'ListDatasetIntegrationsOutput')
    ListResourceTelemetryForOrganizationInput = Shapes::StructureShape.new(name: 'ListResourceTelemetryForOrganizationInput')
    ListResourceTelemetryForOrganizationMaxResults = Shapes::IntegerShape.new(name: 'ListResourceTelemetryForOrganizationMaxResults')
    ListResourceTelemetryForOrganizationOutput = Shapes::StructureShape.new(name: 'ListResourceTelemetryForOrganizationOutput')
    ListResourceTelemetryInput = Shapes::StructureShape.new(name: 'ListResourceTelemetryInput')
    ListResourceTelemetryMaxResults = Shapes::IntegerShape.new(name: 'ListResourceTelemetryMaxResults')
    ListResourceTelemetryOutput = Shapes::StructureShape.new(name: 'ListResourceTelemetryOutput')
    ListResourcesByConnectorInput = Shapes::StructureShape.new(name: 'ListResourcesByConnectorInput')
    ListResourcesByConnectorMaxResults = Shapes::IntegerShape.new(name: 'ListResourcesByConnectorMaxResults')
    ListResourcesByConnectorOutput = Shapes::StructureShape.new(name: 'ListResourcesByConnectorOutput')
    ListS3TableIntegrationsInput = Shapes::StructureShape.new(name: 'ListS3TableIntegrationsInput')
    ListS3TableIntegrationsMaxResults = Shapes::IntegerShape.new(name: 'ListS3TableIntegrationsMaxResults')
    ListS3TableIntegrationsOutput = Shapes::StructureShape.new(name: 'ListS3TableIntegrationsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListTelemetryPipelinesInput = Shapes::StructureShape.new(name: 'ListTelemetryPipelinesInput')
    ListTelemetryPipelinesMaxResults = Shapes::IntegerShape.new(name: 'ListTelemetryPipelinesMaxResults')
    ListTelemetryPipelinesOutput = Shapes::StructureShape.new(name: 'ListTelemetryPipelinesOutput')
    ListTelemetryRulesForOrganizationInput = Shapes::StructureShape.new(name: 'ListTelemetryRulesForOrganizationInput')
    ListTelemetryRulesForOrganizationMaxResults = Shapes::IntegerShape.new(name: 'ListTelemetryRulesForOrganizationMaxResults')
    ListTelemetryRulesForOrganizationOutput = Shapes::StructureShape.new(name: 'ListTelemetryRulesForOrganizationOutput')
    ListTelemetryRulesInput = Shapes::StructureShape.new(name: 'ListTelemetryRulesInput')
    ListTelemetryRulesMaxResults = Shapes::IntegerShape.new(name: 'ListTelemetryRulesMaxResults')
    ListTelemetryRulesOutput = Shapes::StructureShape.new(name: 'ListTelemetryRulesOutput')
    ListThirdPartyTelemetryEnrichmentsInput = Shapes::StructureShape.new(name: 'ListThirdPartyTelemetryEnrichmentsInput')
    ListThirdPartyTelemetryEnrichmentsMaxResults = Shapes::IntegerShape.new(name: 'ListThirdPartyTelemetryEnrichmentsMaxResults')
    ListThirdPartyTelemetryEnrichmentsOutput = Shapes::StructureShape.new(name: 'ListThirdPartyTelemetryEnrichmentsOutput')
    LogDeliveryParameters = Shapes::StructureShape.new(name: 'LogDeliveryParameters')
    LogGroupNameConfiguration = Shapes::StructureShape.new(name: 'LogGroupNameConfiguration')
    LogGroupNamePattern = Shapes::StringShape.new(name: 'LogGroupNamePattern')
    LogType = Shapes::StringShape.new(name: 'LogType')
    LogTypes = Shapes::ListShape.new(name: 'LogTypes')
    LoggingFilter = Shapes::StructureShape.new(name: 'LoggingFilter')
    LogsBackupConfiguration = Shapes::StructureShape.new(name: 'LogsBackupConfiguration')
    LogsEncryptionConfiguration = Shapes::StructureShape.new(name: 'LogsEncryptionConfiguration')
    LogsFilterString = Shapes::StringShape.new(name: 'LogsFilterString')
    Long = Shapes::IntegerShape.new(name: 'Long')
    ManifestAzureResourceId = Shapes::StringShape.new(name: 'ManifestAzureResourceId')
    MetricsBackupConfiguration = Shapes::StructureShape.new(name: 'MetricsBackupConfiguration')
    MetricsFilterString = Shapes::StringShape.new(name: 'MetricsFilterString')
    MskEnhancedMonitoringLevel = Shapes::StringShape.new(name: 'MskEnhancedMonitoringLevel')
    MskMonitoringParameters = Shapes::StructureShape.new(name: 'MskMonitoringParameters')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OrganizationUnitIdentifier = Shapes::StringShape.new(name: 'OrganizationUnitIdentifier')
    OrganizationUnitIdentifiers = Shapes::ListShape.new(name: 'OrganizationUnitIdentifiers')
    OutputFormat = Shapes::StringShape.new(name: 'OutputFormat')
    Permission = Shapes::StringShape.new(name: 'Permission')
    PermissionList = Shapes::ListShape.new(name: 'PermissionList')
    PipelineOutput = Shapes::StructureShape.new(name: 'PipelineOutput')
    PipelineOutputError = Shapes::StructureShape.new(name: 'PipelineOutputError')
    PipelineOutputs = Shapes::ListShape.new(name: 'PipelineOutputs')
    Processors = Shapes::ListShape.new(name: 'Processors')
    ProfilesBackupConfiguration = Shapes::StructureShape.new(name: 'ProfilesBackupConfiguration')
    ProfilesFilterString = Shapes::StringShape.new(name: 'ProfilesFilterString')
    PutConnectorTelemetryManifestInput = Shapes::StructureShape.new(name: 'PutConnectorTelemetryManifestInput')
    PutConnectorTelemetryManifestOutput = Shapes::StructureShape.new(name: 'PutConnectorTelemetryManifestOutput')
    Record = Shapes::StructureShape.new(name: 'Record')
    RecordFormat = Shapes::StringShape.new(name: 'RecordFormat')
    Records = Shapes::ListShape.new(name: 'Records')
    RedactedFields = Shapes::ListShape.new(name: 'RedactedFields')
    Region = Shapes::StringShape.new(name: 'Region')
    RegionStatus = Shapes::StructureShape.new(name: 'RegionStatus')
    RegionStatuses = Shapes::ListShape.new(name: 'RegionStatuses')
    Regions = Shapes::ListShape.new(name: 'Regions')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceIdentifier = Shapes::StringShape.new(name: 'ResourceIdentifier')
    ResourceIdentifierPrefix = Shapes::StringShape.new(name: 'ResourceIdentifierPrefix')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypes = Shapes::ListShape.new(name: 'ResourceTypes')
    RetentionPeriodInDays = Shapes::IntegerShape.new(name: 'RetentionPeriodInDays')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RuleHealth = Shapes::StringShape.new(name: 'RuleHealth')
    RuleIdentifier = Shapes::StringShape.new(name: 'RuleIdentifier')
    RuleName = Shapes::StringShape.new(name: 'RuleName')
    SSEAlgorithm = Shapes::StringShape.new(name: 'SSEAlgorithm')
    ServiceLinkedRecorderArn = Shapes::StringShape.new(name: 'ServiceLinkedRecorderArn')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SetupArtifact = Shapes::StructureShape.new(name: 'SetupArtifact')
    SetupArtifactContent = Shapes::StringShape.new(name: 'SetupArtifactContent')
    SetupArtifactContentType = Shapes::StringShape.new(name: 'SetupArtifactContentType')
    SetupArtifactFileName = Shapes::StringShape.new(name: 'SetupArtifactFileName')
    SetupArtifactList = Shapes::ListShape.new(name: 'SetupArtifactList')
    SetupFormat = Shapes::StringShape.new(name: 'SetupFormat')
    SignalType = Shapes::StringShape.new(name: 'SignalType')
    SingleHeader = Shapes::StructureShape.new(name: 'SingleHeader')
    SingleHeaderNameString = Shapes::StringShape.new(name: 'SingleHeaderNameString')
    Sinks = Shapes::ListShape.new(name: 'Sinks')
    Source = Shapes::StructureShape.new(name: 'Source')
    SourceContextGraphConfiguration = Shapes::StructureShape.new(name: 'SourceContextGraphConfiguration')
    SourceFilterString = Shapes::StringShape.new(name: 'SourceFilterString')
    SourceLogsConfiguration = Shapes::StructureShape.new(name: 'SourceLogsConfiguration')
    SourceMetricsConfiguration = Shapes::StructureShape.new(name: 'SourceMetricsConfiguration')
    SourceProfilesConfiguration = Shapes::StructureShape.new(name: 'SourceProfilesConfiguration')
    SourceProgress = Shapes::StructureShape.new(name: 'SourceProgress')
    SourceProgressActiveInteger = Shapes::IntegerShape.new(name: 'SourceProgressActiveInteger')
    SourceProgressTotalInteger = Shapes::IntegerShape.new(name: 'SourceProgressTotalInteger')
    Sources = Shapes::ListShape.new(name: 'Sources')
    StartTelemetryEnrichmentOutput = Shapes::StructureShape.new(name: 'StartTelemetryEnrichmentOutput')
    StartTelemetryEvaluationForOrganizationInput = Shapes::StructureShape.new(name: 'StartTelemetryEvaluationForOrganizationInput')
    StartTelemetryEvaluationInput = Shapes::StructureShape.new(name: 'StartTelemetryEvaluationInput')
    StartTelemetryPipelineRefreshInput = Shapes::StructureShape.new(name: 'StartTelemetryPipelineRefreshInput')
    StartTelemetryPipelineRefreshOutput = Shapes::StructureShape.new(name: 'StartTelemetryPipelineRefreshOutput')
    StartThirdPartyTelemetryEnrichmentInput = Shapes::StructureShape.new(name: 'StartThirdPartyTelemetryEnrichmentInput')
    StartThirdPartyTelemetryEnrichmentOutput = Shapes::StructureShape.new(name: 'StartThirdPartyTelemetryEnrichmentOutput')
    Status = Shapes::StringShape.new(name: 'Status')
    StatusReason = Shapes::StringShape.new(name: 'StatusReason')
    StopTelemetryEnrichmentOutput = Shapes::StructureShape.new(name: 'StopTelemetryEnrichmentOutput')
    StopThirdPartyTelemetryEnrichmentInput = Shapes::StructureShape.new(name: 'StopThirdPartyTelemetryEnrichmentInput')
    StopThirdPartyTelemetryEnrichmentOutput = Shapes::StructureShape.new(name: 'StopThirdPartyTelemetryEnrichmentOutput')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    TagConflictResolutionStrategy = Shapes::StringShape.new(name: 'TagConflictResolutionStrategy')
    TagFilter = Shapes::StructureShape.new(name: 'TagFilter')
    TagFilterKey = Shapes::StringShape.new(name: 'TagFilterKey')
    TagFilterValue = Shapes::StringShape.new(name: 'TagFilterValue')
    TagFilterValuesList = Shapes::ListShape.new(name: 'TagFilterValuesList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMapInput = Shapes::MapShape.new(name: 'TagMapInput')
    TagMapOutput = Shapes::MapShape.new(name: 'TagMapOutput')
    TagPropagationConfiguration = Shapes::StructureShape.new(name: 'TagPropagationConfiguration')
    TagPropagationFailureReason = Shapes::StringShape.new(name: 'TagPropagationFailureReason')
    TagPropagationStatus = Shapes::StringShape.new(name: 'TagPropagationStatus')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TelemetryConfiguration = Shapes::StructureShape.new(name: 'TelemetryConfiguration')
    TelemetryConfigurationState = Shapes::MapShape.new(name: 'TelemetryConfigurationState')
    TelemetryConfigurations = Shapes::ListShape.new(name: 'TelemetryConfigurations')
    TelemetryDestinationConfiguration = Shapes::StructureShape.new(name: 'TelemetryDestinationConfiguration')
    TelemetryEnrichmentStatus = Shapes::StringShape.new(name: 'TelemetryEnrichmentStatus')
    TelemetryManifest = Shapes::StructureShape.new(name: 'TelemetryManifest')
    TelemetryManifestInfrastructure = Shapes::UnionShape.new(name: 'TelemetryManifestInfrastructure')
    TelemetryManifestSource = Shapes::UnionShape.new(name: 'TelemetryManifestSource')
    TelemetryManifestSourceAzureList = Shapes::ListShape.new(name: 'TelemetryManifestSourceAzureList')
    TelemetryPipeline = Shapes::StructureShape.new(name: 'TelemetryPipeline')
    TelemetryPipelineConfiguration = Shapes::StructureShape.new(name: 'TelemetryPipelineConfiguration')
    TelemetryPipelineConfigurationBody = Shapes::StringShape.new(name: 'TelemetryPipelineConfigurationBody')
    TelemetryPipelineIdentifier = Shapes::StringShape.new(name: 'TelemetryPipelineIdentifier')
    TelemetryPipelineName = Shapes::StringShape.new(name: 'TelemetryPipelineName')
    TelemetryPipelineStatus = Shapes::StringShape.new(name: 'TelemetryPipelineStatus')
    TelemetryPipelineStatusReason = Shapes::StructureShape.new(name: 'TelemetryPipelineStatusReason')
    TelemetryPipelineSummaries = Shapes::ListShape.new(name: 'TelemetryPipelineSummaries')
    TelemetryPipelineSummary = Shapes::StructureShape.new(name: 'TelemetryPipelineSummary')
    TelemetryRule = Shapes::StructureShape.new(name: 'TelemetryRule')
    TelemetryRuleSummaries = Shapes::ListShape.new(name: 'TelemetryRuleSummaries')
    TelemetryRuleSummary = Shapes::StructureShape.new(name: 'TelemetryRuleSummary')
    TelemetrySourceConfigurationInput = Shapes::UnionShape.new(name: 'TelemetrySourceConfigurationInput')
    TelemetrySourceConfigurationOutput = Shapes::UnionShape.new(name: 'TelemetrySourceConfigurationOutput')
    TelemetrySourceType = Shapes::StringShape.new(name: 'TelemetrySourceType')
    TelemetrySourceTypes = Shapes::ListShape.new(name: 'TelemetrySourceTypes')
    TelemetryState = Shapes::StringShape.new(name: 'TelemetryState')
    TelemetryType = Shapes::StringShape.new(name: 'TelemetryType')
    TestTelemetryPipelineInput = Shapes::StructureShape.new(name: 'TestTelemetryPipelineInput')
    TestTelemetryPipelineOutput = Shapes::StructureShape.new(name: 'TestTelemetryPipelineOutput')
    ThirdPartyTelemetryEnrichmentArn = Shapes::StringShape.new(name: 'ThirdPartyTelemetryEnrichmentArn')
    ThirdPartyTelemetryEnrichmentIdentifier = Shapes::StringShape.new(name: 'ThirdPartyTelemetryEnrichmentIdentifier')
    ThirdPartyTelemetryEnrichmentName = Shapes::StringShape.new(name: 'ThirdPartyTelemetryEnrichmentName')
    ThirdPartyTelemetryEnrichmentStatus = Shapes::StringShape.new(name: 'ThirdPartyTelemetryEnrichmentStatus')
    ThirdPartyTelemetryEnrichmentSummaries = Shapes::ListShape.new(name: 'ThirdPartyTelemetryEnrichmentSummaries')
    ThirdPartyTelemetryEnrichmentSummary = Shapes::StructureShape.new(name: 'ThirdPartyTelemetryEnrichmentSummary')
    ThirdPartyTelemetrySource = Shapes::StringShape.new(name: 'ThirdPartyTelemetrySource')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UpdateCentralizationRuleForOrganizationInput = Shapes::StructureShape.new(name: 'UpdateCentralizationRuleForOrganizationInput')
    UpdateCentralizationRuleForOrganizationOutput = Shapes::StructureShape.new(name: 'UpdateCentralizationRuleForOrganizationOutput')
    UpdateDatasetIntegrationInput = Shapes::StructureShape.new(name: 'UpdateDatasetIntegrationInput')
    UpdateDatasetIntegrationOutput = Shapes::StructureShape.new(name: 'UpdateDatasetIntegrationOutput')
    UpdateTelemetryPipelineInput = Shapes::StructureShape.new(name: 'UpdateTelemetryPipelineInput')
    UpdateTelemetryPipelineOutput = Shapes::StructureShape.new(name: 'UpdateTelemetryPipelineOutput')
    UpdateTelemetryRuleForOrganizationInput = Shapes::StructureShape.new(name: 'UpdateTelemetryRuleForOrganizationInput')
    UpdateTelemetryRuleForOrganizationOutput = Shapes::StructureShape.new(name: 'UpdateTelemetryRuleForOrganizationOutput')
    UpdateTelemetryRuleInput = Shapes::StructureShape.new(name: 'UpdateTelemetryRuleInput')
    UpdateTelemetryRuleOutput = Shapes::StructureShape.new(name: 'UpdateTelemetryRuleOutput')
    VPCFlowLogParameters = Shapes::StructureShape.new(name: 'VPCFlowLogParameters')
    ValidateTelemetryPipelineConfigurationInput = Shapes::StructureShape.new(name: 'ValidateTelemetryPipelineConfigurationInput')
    ValidateTelemetryPipelineConfigurationOutput = Shapes::StructureShape.new(name: 'ValidateTelemetryPipelineConfigurationOutput')
    ValidationError = Shapes::StructureShape.new(name: 'ValidationError')
    ValidationErrors = Shapes::ListShape.new(name: 'ValidationErrors')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WAFLogType = Shapes::StringShape.new(name: 'WAFLogType')
    WAFLoggingParameters = Shapes::StructureShape.new(name: 'WAFLoggingParameters')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.add_member(:amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountIdentifiers.member = Shapes::ShapeRef.new(shape: AccountIdentifier)

    ActionCondition.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    ActionCondition.struct_class = Types::ActionCondition

    AdvancedEventSelector.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    AdvancedEventSelector.add_member(:field_selectors, Shapes::ShapeRef.new(shape: FieldSelectors, required: true, location_name: "FieldSelectors"))
    AdvancedEventSelector.struct_class = Types::AdvancedEventSelector

    AdvancedEventSelectors.member = Shapes::ShapeRef.new(shape: AdvancedEventSelector)

    AdvancedFieldSelector.add_member(:field, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Field"))
    AdvancedFieldSelector.add_member(:equals, Shapes::ShapeRef.new(shape: StringList, location_name: "Equals"))
    AdvancedFieldSelector.add_member(:starts_with, Shapes::ShapeRef.new(shape: StringList, location_name: "StartsWith"))
    AdvancedFieldSelector.add_member(:ends_with, Shapes::ShapeRef.new(shape: StringList, location_name: "EndsWith"))
    AdvancedFieldSelector.add_member(:not_equals, Shapes::ShapeRef.new(shape: StringList, location_name: "NotEquals"))
    AdvancedFieldSelector.add_member(:not_starts_with, Shapes::ShapeRef.new(shape: StringList, location_name: "NotStartsWith"))
    AdvancedFieldSelector.add_member(:not_ends_with, Shapes::ShapeRef.new(shape: StringList, location_name: "NotEndsWith"))
    AdvancedFieldSelector.struct_class = Types::AdvancedFieldSelector

    AllSubscriptions.struct_class = Types::AllSubscriptions

    AzureAwsManagedFlowLogs.add_member(:retention_days, Shapes::ShapeRef.new(shape: AzureFlowLogRetentionDays, required: true, location_name: "RetentionDays"))
    AzureAwsManagedFlowLogs.struct_class = Types::AzureAwsManagedFlowLogs

    AzureConnectorConfiguration.add_member(:tenant_identifier, Shapes::ShapeRef.new(shape: AzureTenantIdentifier, required: true, location_name: "TenantIdentifier"))
    AzureConnectorConfiguration.add_member(:client_identifier, Shapes::ShapeRef.new(shape: AzureClientIdentifier, required: true, location_name: "ClientIdentifier"))
    AzureConnectorConfiguration.struct_class = Types::AzureConnectorConfiguration

    AzureConnectorQuery.add_member(:management_groups, Shapes::ShapeRef.new(shape: AzureManagementGroupsQuery, location_name: "ManagementGroups"))
    AzureConnectorQuery.add_member(:subscriptions, Shapes::ShapeRef.new(shape: AzureSubscriptionsQuery, location_name: "Subscriptions"))
    AzureConnectorQuery.add_member(:resource_types, Shapes::ShapeRef.new(shape: AzureResourceTypesQuery, location_name: "ResourceTypes"))
    AzureConnectorQuery.add_member(:regions, Shapes::ShapeRef.new(shape: AzureRegionsQuery, location_name: "Regions"))
    AzureConnectorQuery.add_member(:resource_ids, Shapes::ShapeRef.new(shape: AzureResourceIdsQuery, location_name: "ResourceIds"))
    AzureConnectorQuery.add_member(:event_hubs, Shapes::ShapeRef.new(shape: AzureEventHubsQuery, location_name: "EventHubs"))
    AzureConnectorQuery.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AzureConnectorQuery.add_member_subclass(:management_groups, Types::AzureConnectorQuery::ManagementGroups)
    AzureConnectorQuery.add_member_subclass(:subscriptions, Types::AzureConnectorQuery::Subscriptions)
    AzureConnectorQuery.add_member_subclass(:resource_types, Types::AzureConnectorQuery::ResourceTypes)
    AzureConnectorQuery.add_member_subclass(:regions, Types::AzureConnectorQuery::Regions)
    AzureConnectorQuery.add_member_subclass(:resource_ids, Types::AzureConnectorQuery::ResourceIds)
    AzureConnectorQuery.add_member_subclass(:event_hubs, Types::AzureConnectorQuery::EventHubs)
    AzureConnectorQuery.add_member_subclass(:unknown, Types::AzureConnectorQuery::Unknown)
    AzureConnectorQuery.struct_class = Types::AzureConnectorQuery

    AzureConnectorQueryResults.add_member(:management_groups, Shapes::ShapeRef.new(shape: AzureManagementGroupSummaries, location_name: "ManagementGroups"))
    AzureConnectorQueryResults.add_member(:subscriptions, Shapes::ShapeRef.new(shape: AzureSubscriptionSummaries, location_name: "Subscriptions"))
    AzureConnectorQueryResults.add_member(:resource_types, Shapes::ShapeRef.new(shape: AzureResourceTypeList, location_name: "ResourceTypes"))
    AzureConnectorQueryResults.add_member(:regions, Shapes::ShapeRef.new(shape: AzureRegionList, location_name: "Regions"))
    AzureConnectorQueryResults.add_member(:resource_ids, Shapes::ShapeRef.new(shape: AzureResourceIdentifierSummaries, location_name: "ResourceIds"))
    AzureConnectorQueryResults.add_member(:event_hubs, Shapes::ShapeRef.new(shape: AzureEventHubSummaries, location_name: "EventHubs"))
    AzureConnectorQueryResults.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AzureConnectorQueryResults.add_member_subclass(:management_groups, Types::AzureConnectorQueryResults::ManagementGroups)
    AzureConnectorQueryResults.add_member_subclass(:subscriptions, Types::AzureConnectorQueryResults::Subscriptions)
    AzureConnectorQueryResults.add_member_subclass(:resource_types, Types::AzureConnectorQueryResults::ResourceTypes)
    AzureConnectorQueryResults.add_member_subclass(:regions, Types::AzureConnectorQueryResults::Regions)
    AzureConnectorQueryResults.add_member_subclass(:resource_ids, Types::AzureConnectorQueryResults::ResourceIds)
    AzureConnectorQueryResults.add_member_subclass(:event_hubs, Types::AzureConnectorQueryResults::EventHubs)
    AzureConnectorQueryResults.add_member_subclass(:unknown, Types::AzureConnectorQueryResults::Unknown)
    AzureConnectorQueryResults.struct_class = Types::AzureConnectorQueryResults

    AzureCustomerManagedFlowLogs.add_member(:storage_accounts, Shapes::ShapeRef.new(shape: AzureCustomerManagedFlowLogsStorageAccountsList, required: true, location_name: "StorageAccounts"))
    AzureCustomerManagedFlowLogs.struct_class = Types::AzureCustomerManagedFlowLogs

    AzureCustomerManagedFlowLogsStorageAccountsList.member = Shapes::ShapeRef.new(shape: AzureFlowLogStorageAccountScope)

    AzureEventHubConfiguration.add_member(:tier, Shapes::ShapeRef.new(shape: AzureEventHubTier, required: true, location_name: "Tier"))
    AzureEventHubConfiguration.add_member(:partition_count, Shapes::ShapeRef.new(shape: AzureEventHubPartitionCount, required: true, location_name: "PartitionCount"))
    AzureEventHubConfiguration.struct_class = Types::AzureEventHubConfiguration

    AzureEventHubSummaries.member = Shapes::ShapeRef.new(shape: AzureEventHubSummary)

    AzureEventHubSummary.add_member(:resource_id, Shapes::ShapeRef.new(shape: AzureResourceId, required: true, location_name: "ResourceId"))
    AzureEventHubSummary.add_member(:event_hub_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EventHubName"))
    AzureEventHubSummary.add_member(:namespace_name, Shapes::ShapeRef.new(shape: AzureEventHubNamespaceName, required: true, location_name: "NamespaceName"))
    AzureEventHubSummary.add_member(:fully_qualified_namespace, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FullyQualifiedNamespace"))
    AzureEventHubSummary.add_member(:region, Shapes::ShapeRef.new(shape: AzureRegion, location_name: "Region"))
    AzureEventHubSummary.add_member(:subscription_id, Shapes::ShapeRef.new(shape: AzureSubscriptionId, location_name: "SubscriptionId"))
    AzureEventHubSummary.struct_class = Types::AzureEventHubSummary

    AzureEventHubsQuery.add_member(:scope, Shapes::ShapeRef.new(shape: AzureQueryScope, location_name: "Scope"))
    AzureEventHubsQuery.add_member(:namespace_name, Shapes::ShapeRef.new(shape: AzureEventHubNamespaceName, location_name: "NamespaceName"))
    AzureEventHubsQuery.add_member(:region, Shapes::ShapeRef.new(shape: AzureRegion, location_name: "Region"))
    AzureEventHubsQuery.struct_class = Types::AzureEventHubsQuery

    AzureFlowLogStorageAccountScope.add_member(:region, Shapes::ShapeRef.new(shape: AzureRegion, required: true, location_name: "Region"))
    AzureFlowLogStorageAccountScope.add_member(:storage_account_ids, Shapes::ShapeRef.new(shape: AzureFlowLogStorageAccountScopeStorageAccountIdsList, required: true, location_name: "StorageAccountIds"))
    AzureFlowLogStorageAccountScope.struct_class = Types::AzureFlowLogStorageAccountScope

    AzureFlowLogStorageAccountScopeStorageAccountIdsList.member = Shapes::ShapeRef.new(shape: AzureStorageAccountId)

    AzureFlowLogsInfrastructure.add_member(:customer_managed, Shapes::ShapeRef.new(shape: AzureCustomerManagedFlowLogs, location_name: "CustomerManaged"))
    AzureFlowLogsInfrastructure.add_member(:aws_managed, Shapes::ShapeRef.new(shape: AzureAwsManagedFlowLogs, location_name: "AwsManaged"))
    AzureFlowLogsInfrastructure.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AzureFlowLogsInfrastructure.add_member_subclass(:customer_managed, Types::AzureFlowLogsInfrastructure::CustomerManaged)
    AzureFlowLogsInfrastructure.add_member_subclass(:aws_managed, Types::AzureFlowLogsInfrastructure::AwsManaged)
    AzureFlowLogsInfrastructure.add_member_subclass(:unknown, Types::AzureFlowLogsInfrastructure::Unknown)
    AzureFlowLogsInfrastructure.struct_class = Types::AzureFlowLogsInfrastructure

    AzureInfrastructure.add_member(:subscription_id, Shapes::ShapeRef.new(shape: AzureSubscriptionId, location_name: "SubscriptionId"))
    AzureInfrastructure.add_member(:event_hubs, Shapes::ShapeRef.new(shape: AzureInfrastructureEventHubsList, location_name: "EventHubs"))
    AzureInfrastructure.add_member(:flow_logs, Shapes::ShapeRef.new(shape: AzureFlowLogsInfrastructure, location_name: "FlowLogs"))
    AzureInfrastructure.struct_class = Types::AzureInfrastructure

    AzureInfrastructureEventHubsList.member = Shapes::ShapeRef.new(shape: AzureEventHubConfiguration)

    AzureManagementGroupSummaries.member = Shapes::ShapeRef.new(shape: AzureManagementGroupSummary)

    AzureManagementGroupSummary.add_member(:id, Shapes::ShapeRef.new(shape: AzureManagementGroupId, required: true, location_name: "Id"))
    AzureManagementGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    AzureManagementGroupSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    AzureManagementGroupSummary.struct_class = Types::AzureManagementGroupSummary

    AzureManagementGroupsQuery.add_member(:parent_management_group_id, Shapes::ShapeRef.new(shape: AzureManagementGroupId, location_name: "ParentManagementGroupId"))
    AzureManagementGroupsQuery.struct_class = Types::AzureManagementGroupsQuery

    AzureQueryScope.add_member(:management_group_id, Shapes::ShapeRef.new(shape: AzureManagementGroupId, location_name: "ManagementGroupId"))
    AzureQueryScope.add_member(:subscription_ids, Shapes::ShapeRef.new(shape: AzureQueryScopeSubscriptionIdsList, location_name: "SubscriptionIds"))
    AzureQueryScope.struct_class = Types::AzureQueryScope

    AzureQueryScopeSubscriptionIdsList.member = Shapes::ShapeRef.new(shape: AzureSubscriptionId)

    AzureRegionList.member = Shapes::ShapeRef.new(shape: AzureRegion)

    AzureRegionsQuery.add_member(:scope, Shapes::ShapeRef.new(shape: AzureQueryScope, location_name: "Scope"))
    AzureRegionsQuery.struct_class = Types::AzureRegionsQuery

    AzureResourceIdScope.add_member(:region, Shapes::ShapeRef.new(shape: AzureRegion, required: true, location_name: "Region"))
    AzureResourceIdScope.add_member(:resource_ids, Shapes::ShapeRef.new(shape: AzureResourceIdScopeResourceIdsList, required: true, location_name: "ResourceIds"))
    AzureResourceIdScope.struct_class = Types::AzureResourceIdScope

    AzureResourceIdScopeResourceIdsList.member = Shapes::ShapeRef.new(shape: ManifestAzureResourceId)

    AzureResourceIdentifierSummaries.member = Shapes::ShapeRef.new(shape: AzureResourceIdentifierSummary)

    AzureResourceIdentifierSummary.add_member(:resource_id, Shapes::ShapeRef.new(shape: AzureResourceId, required: true, location_name: "ResourceId"))
    AzureResourceIdentifierSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: AzureResourceType, location_name: "ResourceType"))
    AzureResourceIdentifierSummary.add_member(:region, Shapes::ShapeRef.new(shape: AzureRegion, location_name: "Region"))
    AzureResourceIdentifierSummary.add_member(:subscription_id, Shapes::ShapeRef.new(shape: AzureSubscriptionId, location_name: "SubscriptionId"))
    AzureResourceIdentifierSummary.add_member(:tags, Shapes::ShapeRef.new(shape: AzureResourceTags, location_name: "Tags"))
    AzureResourceIdentifierSummary.struct_class = Types::AzureResourceIdentifierSummary

    AzureResourceIdsQuery.add_member(:scope, Shapes::ShapeRef.new(shape: AzureQueryScope, location_name: "Scope"))
    AzureResourceIdsQuery.add_member(:resource_type, Shapes::ShapeRef.new(shape: AzureResourceType, location_name: "ResourceType"))
    AzureResourceIdsQuery.add_member(:region, Shapes::ShapeRef.new(shape: AzureRegion, location_name: "Region"))
    AzureResourceIdsQuery.add_member(:tag_filters, Shapes::ShapeRef.new(shape: AzureResourceIdsQueryTagFiltersList, location_name: "TagFilters"))
    AzureResourceIdsQuery.struct_class = Types::AzureResourceIdsQuery

    AzureResourceIdsQueryTagFiltersList.member = Shapes::ShapeRef.new(shape: TagFilter)

    AzureResourceTags.key = Shapes::ShapeRef.new(shape: AzureResourceTagKey)
    AzureResourceTags.value = Shapes::ShapeRef.new(shape: AzureResourceTagValue)

    AzureResourceTypeList.member = Shapes::ShapeRef.new(shape: AzureResourceType)

    AzureResourceTypesQuery.add_member(:scope, Shapes::ShapeRef.new(shape: AzureQueryScope, location_name: "Scope"))
    AzureResourceTypesQuery.struct_class = Types::AzureResourceTypesQuery

    AzureScope.add_member(:subscriptions, Shapes::ShapeRef.new(shape: AzureSubscriptionScope, location_name: "Subscriptions"))
    AzureScope.add_member(:regions, Shapes::ShapeRef.new(shape: AzureScopeRegionsList, location_name: "Regions"))
    AzureScope.add_member(:resource_types, Shapes::ShapeRef.new(shape: AzureScopeResourceTypesList, location_name: "ResourceTypes"))
    AzureScope.add_member(:tag_filters, Shapes::ShapeRef.new(shape: AzureScopeTagFiltersList, location_name: "TagFilters"))
    AzureScope.add_member(:resources, Shapes::ShapeRef.new(shape: AzureScopeResourcesList, location_name: "Resources"))
    AzureScope.struct_class = Types::AzureScope

    AzureScopeItem.add_member(:telemetry_types, Shapes::ShapeRef.new(shape: AzureScopeItemTelemetryTypesList, required: true, location_name: "TelemetryTypes"))
    AzureScopeItem.add_member(:scope, Shapes::ShapeRef.new(shape: AzureScope, required: true, location_name: "Scope"))
    AzureScopeItem.struct_class = Types::AzureScopeItem

    AzureScopeItemTelemetryTypesList.member = Shapes::ShapeRef.new(shape: AzureTelemetryType)

    AzureScopeRegionsList.member = Shapes::ShapeRef.new(shape: AzureRegion)

    AzureScopeResourceTypesList.member = Shapes::ShapeRef.new(shape: AzureResourceType)

    AzureScopeResourcesList.member = Shapes::ShapeRef.new(shape: AzureResourceIdScope)

    AzureScopeTagFiltersList.member = Shapes::ShapeRef.new(shape: TagFilter)

    AzureSubscriptionScope.add_member(:all, Shapes::ShapeRef.new(shape: AllSubscriptions, location_name: "All"))
    AzureSubscriptionScope.add_member(:ids, Shapes::ShapeRef.new(shape: AzureSubscriptionScopeIdsList, location_name: "Ids"))
    AzureSubscriptionScope.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AzureSubscriptionScope.add_member_subclass(:all, Types::AzureSubscriptionScope::All)
    AzureSubscriptionScope.add_member_subclass(:ids, Types::AzureSubscriptionScope::Ids)
    AzureSubscriptionScope.add_member_subclass(:unknown, Types::AzureSubscriptionScope::Unknown)
    AzureSubscriptionScope.struct_class = Types::AzureSubscriptionScope

    AzureSubscriptionScopeIdsList.member = Shapes::ShapeRef.new(shape: AzureSubscriptionId)

    AzureSubscriptionSummaries.member = Shapes::ShapeRef.new(shape: AzureSubscriptionSummary)

    AzureSubscriptionSummary.add_member(:subscription_id, Shapes::ShapeRef.new(shape: AzureSubscriptionId, required: true, location_name: "SubscriptionId"))
    AzureSubscriptionSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    AzureSubscriptionSummary.add_member(:state, Shapes::ShapeRef.new(shape: String, location_name: "State"))
    AzureSubscriptionSummary.add_member(:management_group_id, Shapes::ShapeRef.new(shape: AzureManagementGroupId, location_name: "ManagementGroupId"))
    AzureSubscriptionSummary.struct_class = Types::AzureSubscriptionSummary

    AzureSubscriptionsQuery.add_member(:management_group_id, Shapes::ShapeRef.new(shape: AzureManagementGroupId, location_name: "ManagementGroupId"))
    AzureSubscriptionsQuery.struct_class = Types::AzureSubscriptionsQuery

    AzureTelemetrySourceConfigurationInput.add_member(:aws_config_connector_arn, Shapes::ShapeRef.new(shape: AwsConfigConnectorArn, required: true, location_name: "AwsConfigConnectorArn"))
    AzureTelemetrySourceConfigurationInput.struct_class = Types::AzureTelemetrySourceConfigurationInput

    AzureTelemetrySourceConfigurationOutput.add_member(:aws_config_connector_arn, Shapes::ShapeRef.new(shape: AwsConfigConnectorArn, location_name: "AwsConfigConnectorArn"))
    AzureTelemetrySourceConfigurationOutput.add_member(:service_linked_recorder_arn, Shapes::ShapeRef.new(shape: ServiceLinkedRecorderArn, location_name: "ServiceLinkedRecorderArn"))
    AzureTelemetrySourceConfigurationOutput.struct_class = Types::AzureTelemetrySourceConfigurationOutput

    CentralizationRule.add_member(:source, Shapes::ShapeRef.new(shape: CentralizationRuleSource, required: true, location_name: "Source"))
    CentralizationRule.add_member(:destination, Shapes::ShapeRef.new(shape: CentralizationRuleDestination, required: true, location_name: "Destination"))
    CentralizationRule.struct_class = Types::CentralizationRule

    CentralizationRuleDestination.add_member(:region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "Region"))
    CentralizationRuleDestination.add_member(:account, Shapes::ShapeRef.new(shape: AccountIdentifier, location_name: "Account"))
    CentralizationRuleDestination.add_member(:destination_logs_configuration, Shapes::ShapeRef.new(shape: DestinationLogsConfiguration, location_name: "DestinationLogsConfiguration"))
    CentralizationRuleDestination.add_member(:destination_metrics_configuration, Shapes::ShapeRef.new(shape: DestinationMetricsConfiguration, location_name: "DestinationMetricsConfiguration"))
    CentralizationRuleDestination.add_member(:destination_profiles_configuration, Shapes::ShapeRef.new(shape: DestinationProfilesConfiguration, location_name: "DestinationProfilesConfiguration"))
    CentralizationRuleDestination.struct_class = Types::CentralizationRuleDestination

    CentralizationRuleSource.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, required: true, location_name: "Regions"))
    CentralizationRuleSource.add_member(:scope, Shapes::ShapeRef.new(shape: SourceFilterString, location_name: "Scope"))
    CentralizationRuleSource.add_member(:source_logs_configuration, Shapes::ShapeRef.new(shape: SourceLogsConfiguration, location_name: "SourceLogsConfiguration"))
    CentralizationRuleSource.add_member(:source_metrics_configuration, Shapes::ShapeRef.new(shape: SourceMetricsConfiguration, location_name: "SourceMetricsConfiguration"))
    CentralizationRuleSource.add_member(:source_profiles_configuration, Shapes::ShapeRef.new(shape: SourceProfilesConfiguration, location_name: "SourceProfilesConfiguration"))
    CentralizationRuleSource.add_member(:source_context_graph_configuration, Shapes::ShapeRef.new(shape: SourceContextGraphConfiguration, location_name: "SourceContextGraphConfiguration"))
    CentralizationRuleSource.struct_class = Types::CentralizationRuleSource

    CentralizationRuleSummaries.member = Shapes::ShapeRef.new(shape: CentralizationRuleSummary)

    CentralizationRuleSummary.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, location_name: "RuleName"))
    CentralizationRuleSummary.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    CentralizationRuleSummary.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: String, location_name: "CreatorAccountId"))
    CentralizationRuleSummary.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreatedTimeStamp"))
    CentralizationRuleSummary.add_member(:created_region, Shapes::ShapeRef.new(shape: Region, location_name: "CreatedRegion"))
    CentralizationRuleSummary.add_member(:last_update_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdateTimeStamp"))
    CentralizationRuleSummary.add_member(:rule_health, Shapes::ShapeRef.new(shape: RuleHealth, location_name: "RuleHealth"))
    CentralizationRuleSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: CentralizationFailureReason, location_name: "FailureReason"))
    CentralizationRuleSummary.add_member(:tag_propagation_status, Shapes::ShapeRef.new(shape: TagPropagationStatus, location_name: "TagPropagationStatus"))
    CentralizationRuleSummary.add_member(:tag_propagation_failure_reason, Shapes::ShapeRef.new(shape: TagPropagationFailureReason, location_name: "TagPropagationFailureReason"))
    CentralizationRuleSummary.add_member(:context_graph_status, Shapes::ShapeRef.new(shape: ContextGraphStatus, location_name: "ContextGraphStatus"))
    CentralizationRuleSummary.add_member(:destination_account_id, Shapes::ShapeRef.new(shape: String, location_name: "DestinationAccountId"))
    CentralizationRuleSummary.add_member(:destination_region, Shapes::ShapeRef.new(shape: Region, location_name: "DestinationRegion"))
    CentralizationRuleSummary.struct_class = Types::CentralizationRuleSummary

    CloudtrailParameters.add_member(:advanced_event_selectors, Shapes::ShapeRef.new(shape: AdvancedEventSelectors, required: true, location_name: "AdvancedEventSelectors"))
    CloudtrailParameters.struct_class = Types::CloudtrailParameters

    Condition.add_member(:action_condition, Shapes::ShapeRef.new(shape: ActionCondition, location_name: "ActionCondition"))
    Condition.add_member(:label_name_condition, Shapes::ShapeRef.new(shape: LabelNameCondition, location_name: "LabelNameCondition"))
    Condition.struct_class = Types::Condition

    Conditions.member = Shapes::ShapeRef.new(shape: Condition)

    ConfigurationSummary.add_member(:sources, Shapes::ShapeRef.new(shape: Sources, location_name: "Sources"))
    ConfigurationSummary.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSources, location_name: "DataSources"))
    ConfigurationSummary.add_member(:processors, Shapes::ShapeRef.new(shape: Processors, location_name: "Processors"))
    ConfigurationSummary.add_member(:processor_count, Shapes::ShapeRef.new(shape: Integer, location_name: "ProcessorCount"))
    ConfigurationSummary.add_member(:sinks, Shapes::ShapeRef.new(shape: Sinks, location_name: "Sinks"))
    ConfigurationSummary.struct_class = Types::ConfigurationSummary

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

    Connector.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "Arn"))
    Connector.add_member(:provider, Shapes::ShapeRef.new(shape: ConnectorProvider, required: true, location_name: "Provider"))
    Connector.add_member(:connector_configuration, Shapes::ShapeRef.new(shape: ConnectorConfiguration, required: true, location_name: "ConnectorConfiguration"))
    Connector.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    Connector.add_member(:name, Shapes::ShapeRef.new(shape: ConnectorName, location_name: "Name"))
    Connector.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreatedTimeStamp"))
    Connector.struct_class = Types::Connector

    ConnectorConfiguration.add_member(:azure, Shapes::ShapeRef.new(shape: AzureConnectorConfiguration, location_name: "Azure"))
    ConnectorConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ConnectorConfiguration.add_member_subclass(:azure, Types::ConnectorConfiguration::Azure)
    ConnectorConfiguration.add_member_subclass(:unknown, Types::ConnectorConfiguration::Unknown)
    ConnectorConfiguration.struct_class = Types::ConnectorConfiguration

    ConnectorQuery.add_member(:azure, Shapes::ShapeRef.new(shape: AzureConnectorQuery, location_name: "Azure"))
    ConnectorQuery.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ConnectorQuery.add_member_subclass(:azure, Types::ConnectorQuery::Azure)
    ConnectorQuery.add_member_subclass(:unknown, Types::ConnectorQuery::Unknown)
    ConnectorQuery.struct_class = Types::ConnectorQuery

    ConnectorQueryResults.add_member(:azure, Shapes::ShapeRef.new(shape: AzureConnectorQueryResults, location_name: "Azure"))
    ConnectorQueryResults.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ConnectorQueryResults.add_member_subclass(:azure, Types::ConnectorQueryResults::Azure)
    ConnectorQueryResults.add_member_subclass(:unknown, Types::ConnectorQueryResults::Unknown)
    ConnectorQueryResults.struct_class = Types::ConnectorQueryResults

    ConnectorSummaries.member = Shapes::ShapeRef.new(shape: ConnectorSummary)

    ConnectorSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "Arn"))
    ConnectorSummary.add_member(:provider, Shapes::ShapeRef.new(shape: ConnectorProvider, required: true, location_name: "Provider"))
    ConnectorSummary.add_member(:name, Shapes::ShapeRef.new(shape: ConnectorName, location_name: "Name"))
    ConnectorSummary.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreatedTimeStamp"))
    ConnectorSummary.struct_class = Types::ConnectorSummary

    CreateCentralizationRuleForOrganizationInput.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "RuleName"))
    CreateCentralizationRuleForOrganizationInput.add_member(:rule, Shapes::ShapeRef.new(shape: CentralizationRule, required: true, location_name: "Rule"))
    CreateCentralizationRuleForOrganizationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "Tags"))
    CreateCentralizationRuleForOrganizationInput.struct_class = Types::CreateCentralizationRuleForOrganizationInput

    CreateCentralizationRuleForOrganizationOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    CreateCentralizationRuleForOrganizationOutput.struct_class = Types::CreateCentralizationRuleForOrganizationOutput

    CreateConnectorInput.add_member(:connector_configuration, Shapes::ShapeRef.new(shape: ConnectorConfiguration, required: true, location_name: "ConnectorConfiguration"))
    CreateConnectorInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateConnectorInput.add_member(:name, Shapes::ShapeRef.new(shape: ConnectorName, required: true, location_name: "Name"))
    CreateConnectorInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "Tags"))
    CreateConnectorInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    CreateConnectorInput.struct_class = Types::CreateConnectorInput

    CreateConnectorOutput.add_member(:connector, Shapes::ShapeRef.new(shape: Connector, required: true, location_name: "Connector"))
    CreateConnectorOutput.struct_class = Types::CreateConnectorOutput

    CreateDatasetIntegrationInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "RoleArn"))
    CreateDatasetIntegrationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "Tags"))
    CreateDatasetIntegrationInput.struct_class = Types::CreateDatasetIntegrationInput

    CreateDatasetIntegrationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "Arn"))
    CreateDatasetIntegrationOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "RoleArn"))
    CreateDatasetIntegrationOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    CreateDatasetIntegrationOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdatedAt"))
    CreateDatasetIntegrationOutput.struct_class = Types::CreateDatasetIntegrationOutput

    CreateS3TableIntegrationInput.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, required: true, location_name: "Encryption"))
    CreateS3TableIntegrationInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "RoleArn"))
    CreateS3TableIntegrationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "Tags"))
    CreateS3TableIntegrationInput.struct_class = Types::CreateS3TableIntegrationInput

    CreateS3TableIntegrationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    CreateS3TableIntegrationOutput.struct_class = Types::CreateS3TableIntegrationOutput

    CreateTelemetryPipelineInput.add_member(:name, Shapes::ShapeRef.new(shape: TelemetryPipelineName, required: true, location_name: "Name"))
    CreateTelemetryPipelineInput.add_member(:configuration, Shapes::ShapeRef.new(shape: TelemetryPipelineConfiguration, required: true, location_name: "Configuration"))
    CreateTelemetryPipelineInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "Tags"))
    CreateTelemetryPipelineInput.struct_class = Types::CreateTelemetryPipelineInput

    CreateTelemetryPipelineOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    CreateTelemetryPipelineOutput.struct_class = Types::CreateTelemetryPipelineOutput

    CreateTelemetryRuleForOrganizationInput.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "RuleName"))
    CreateTelemetryRuleForOrganizationInput.add_member(:rule, Shapes::ShapeRef.new(shape: TelemetryRule, required: true, location_name: "Rule"))
    CreateTelemetryRuleForOrganizationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "Tags"))
    CreateTelemetryRuleForOrganizationInput.struct_class = Types::CreateTelemetryRuleForOrganizationInput

    CreateTelemetryRuleForOrganizationOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    CreateTelemetryRuleForOrganizationOutput.struct_class = Types::CreateTelemetryRuleForOrganizationOutput

    CreateTelemetryRuleInput.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "RuleName"))
    CreateTelemetryRuleInput.add_member(:rule, Shapes::ShapeRef.new(shape: TelemetryRule, required: true, location_name: "Rule"))
    CreateTelemetryRuleInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "Tags"))
    CreateTelemetryRuleInput.struct_class = Types::CreateTelemetryRuleInput

    CreateTelemetryRuleOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    CreateTelemetryRuleOutput.struct_class = Types::CreateTelemetryRuleOutput

    DataSource.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    DataSource.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    DataSource.struct_class = Types::DataSource

    DataSources.member = Shapes::ShapeRef.new(shape: DataSource)

    DatasetIntegrationSummaries.member = Shapes::ShapeRef.new(shape: DatasetIntegrationSummary)

    DatasetIntegrationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "Arn"))
    DatasetIntegrationSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RoleArn"))
    DatasetIntegrationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DatasetIntegrationSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    DatasetIntegrationSummary.struct_class = Types::DatasetIntegrationSummary

    DeleteCentralizationRuleForOrganizationInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "RuleIdentifier"))
    DeleteCentralizationRuleForOrganizationInput.struct_class = Types::DeleteCentralizationRuleForOrganizationInput

    DeleteConnectorInput.add_member(:connector_identifier, Shapes::ShapeRef.new(shape: ConnectorIdentifier, required: true, location_name: "ConnectorIdentifier"))
    DeleteConnectorInput.struct_class = Types::DeleteConnectorInput

    DeleteConnectorOutput.struct_class = Types::DeleteConnectorOutput

    DeleteDatasetIntegrationInput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "Arn"))
    DeleteDatasetIntegrationInput.struct_class = Types::DeleteDatasetIntegrationInput

    DeleteS3TableIntegrationInput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "Arn"))
    DeleteS3TableIntegrationInput.struct_class = Types::DeleteS3TableIntegrationInput

    DeleteTelemetryPipelineInput.add_member(:pipeline_identifier, Shapes::ShapeRef.new(shape: TelemetryPipelineIdentifier, required: true, location_name: "PipelineIdentifier"))
    DeleteTelemetryPipelineInput.struct_class = Types::DeleteTelemetryPipelineInput

    DeleteTelemetryPipelineOutput.struct_class = Types::DeleteTelemetryPipelineOutput

    DeleteTelemetryRuleForOrganizationInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "RuleIdentifier"))
    DeleteTelemetryRuleForOrganizationInput.struct_class = Types::DeleteTelemetryRuleForOrganizationInput

    DeleteTelemetryRuleInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "RuleIdentifier"))
    DeleteTelemetryRuleInput.struct_class = Types::DeleteTelemetryRuleInput

    DestinationLogsConfiguration.add_member(:logs_encryption_configuration, Shapes::ShapeRef.new(shape: LogsEncryptionConfiguration, location_name: "LogsEncryptionConfiguration"))
    DestinationLogsConfiguration.add_member(:backup_configuration, Shapes::ShapeRef.new(shape: LogsBackupConfiguration, location_name: "BackupConfiguration"))
    DestinationLogsConfiguration.add_member(:log_group_name_configuration, Shapes::ShapeRef.new(shape: LogGroupNameConfiguration, location_name: "LogGroupNameConfiguration"))
    DestinationLogsConfiguration.add_member(:tag_propagation_configuration, Shapes::ShapeRef.new(shape: TagPropagationConfiguration, location_name: "TagPropagationConfiguration"))
    DestinationLogsConfiguration.add_member(:log_group_deletion_protection, Shapes::ShapeRef.new(shape: DeletionProtection, location_name: "LogGroupDeletionProtection"))
    DestinationLogsConfiguration.struct_class = Types::DestinationLogsConfiguration

    DestinationMetricsConfiguration.add_member(:backup_configuration, Shapes::ShapeRef.new(shape: MetricsBackupConfiguration, location_name: "BackupConfiguration"))
    DestinationMetricsConfiguration.struct_class = Types::DestinationMetricsConfiguration

    DestinationProfilesConfiguration.add_member(:backup_configuration, Shapes::ShapeRef.new(shape: ProfilesBackupConfiguration, location_name: "BackupConfiguration"))
    DestinationProfilesConfiguration.struct_class = Types::DestinationProfilesConfiguration

    ELBLoadBalancerLoggingParameters.add_member(:output_format, Shapes::ShapeRef.new(shape: OutputFormat, location_name: "OutputFormat"))
    ELBLoadBalancerLoggingParameters.add_member(:field_delimiter, Shapes::ShapeRef.new(shape: String, location_name: "FieldDelimiter"))
    ELBLoadBalancerLoggingParameters.struct_class = Types::ELBLoadBalancerLoggingParameters

    Encryption.add_member(:sse_algorithm, Shapes::ShapeRef.new(shape: SSEAlgorithm, required: true, location_name: "SseAlgorithm"))
    Encryption.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "KmsKeyArn"))
    Encryption.struct_class = Types::Encryption

    FieldMap.key = Shapes::ShapeRef.new(shape: String)
    FieldMap.value = Shapes::ShapeRef.new(shape: String)

    FieldSelectors.member = Shapes::ShapeRef.new(shape: AdvancedFieldSelector)

    FieldToMatch.add_member(:single_header, Shapes::ShapeRef.new(shape: SingleHeader, location_name: "SingleHeader"))
    FieldToMatch.add_member(:uri_path, Shapes::ShapeRef.new(shape: String, location_name: "UriPath"))
    FieldToMatch.add_member(:query_string, Shapes::ShapeRef.new(shape: String, location_name: "QueryString"))
    FieldToMatch.add_member(:method, Shapes::ShapeRef.new(shape: String, location_name: "Method"))
    FieldToMatch.struct_class = Types::FieldToMatch

    Filter.add_member(:behavior, Shapes::ShapeRef.new(shape: FilterBehavior, location_name: "Behavior"))
    Filter.add_member(:requirement, Shapes::ShapeRef.new(shape: FilterRequirement, location_name: "Requirement"))
    Filter.add_member(:conditions, Shapes::ShapeRef.new(shape: Conditions, location_name: "Conditions"))
    Filter.struct_class = Types::Filter

    Filters.member = Shapes::ShapeRef.new(shape: Filter)

    GetCentralizationRuleForOrganizationInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "RuleIdentifier"))
    GetCentralizationRuleForOrganizationInput.struct_class = Types::GetCentralizationRuleForOrganizationInput

    GetCentralizationRuleForOrganizationOutput.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, location_name: "RuleName"))
    GetCentralizationRuleForOrganizationOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    GetCentralizationRuleForOrganizationOutput.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: String, location_name: "CreatorAccountId"))
    GetCentralizationRuleForOrganizationOutput.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreatedTimeStamp"))
    GetCentralizationRuleForOrganizationOutput.add_member(:created_region, Shapes::ShapeRef.new(shape: Region, location_name: "CreatedRegion"))
    GetCentralizationRuleForOrganizationOutput.add_member(:last_update_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdateTimeStamp"))
    GetCentralizationRuleForOrganizationOutput.add_member(:rule_health, Shapes::ShapeRef.new(shape: RuleHealth, location_name: "RuleHealth"))
    GetCentralizationRuleForOrganizationOutput.add_member(:failure_reason, Shapes::ShapeRef.new(shape: CentralizationFailureReason, location_name: "FailureReason"))
    GetCentralizationRuleForOrganizationOutput.add_member(:tag_propagation_status, Shapes::ShapeRef.new(shape: TagPropagationStatus, location_name: "TagPropagationStatus"))
    GetCentralizationRuleForOrganizationOutput.add_member(:tag_propagation_failure_reason, Shapes::ShapeRef.new(shape: TagPropagationFailureReason, location_name: "TagPropagationFailureReason"))
    GetCentralizationRuleForOrganizationOutput.add_member(:context_graph_status, Shapes::ShapeRef.new(shape: ContextGraphStatus, location_name: "ContextGraphStatus"))
    GetCentralizationRuleForOrganizationOutput.add_member(:centralization_rule, Shapes::ShapeRef.new(shape: CentralizationRule, location_name: "CentralizationRule"))
    GetCentralizationRuleForOrganizationOutput.struct_class = Types::GetCentralizationRuleForOrganizationOutput

    GetConnectorInput.add_member(:connector_identifier, Shapes::ShapeRef.new(shape: ConnectorIdentifier, required: true, location_name: "ConnectorIdentifier"))
    GetConnectorInput.struct_class = Types::GetConnectorInput

    GetConnectorOutput.add_member(:connector, Shapes::ShapeRef.new(shape: Connector, required: true, location_name: "Connector"))
    GetConnectorOutput.struct_class = Types::GetConnectorOutput

    GetConnectorTelemetryManifestInput.add_member(:connector_identifier, Shapes::ShapeRef.new(shape: ConnectorIdentifier, required: true, location_name: "ConnectorIdentifier"))
    GetConnectorTelemetryManifestInput.struct_class = Types::GetConnectorTelemetryManifestInput

    GetConnectorTelemetryManifestOutput.add_member(:manifest, Shapes::ShapeRef.new(shape: TelemetryManifest, required: true, location_name: "Manifest"))
    GetConnectorTelemetryManifestOutput.add_member(:version, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "Version"))
    GetConnectorTelemetryManifestOutput.add_member(:last_update_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdateTimeStamp"))
    GetConnectorTelemetryManifestOutput.struct_class = Types::GetConnectorTelemetryManifestOutput

    GetConnectorTelemetrySetupInput.add_member(:connector_identifier, Shapes::ShapeRef.new(shape: ConnectorIdentifier, required: true, location_name: "ConnectorIdentifier"))
    GetConnectorTelemetrySetupInput.add_member(:format, Shapes::ShapeRef.new(shape: SetupFormat, location_name: "Format"))
    GetConnectorTelemetrySetupInput.struct_class = Types::GetConnectorTelemetrySetupInput

    GetConnectorTelemetrySetupOutput.add_member(:artifacts, Shapes::ShapeRef.new(shape: SetupArtifactList, required: true, location_name: "Artifacts"))
    GetConnectorTelemetrySetupOutput.add_member(:required_permissions_to_apply, Shapes::ShapeRef.new(shape: PermissionList, location_name: "RequiredPermissionsToApply"))
    GetConnectorTelemetrySetupOutput.add_member(:format, Shapes::ShapeRef.new(shape: SetupFormat, required: true, location_name: "Format"))
    GetConnectorTelemetrySetupOutput.add_member(:provider, Shapes::ShapeRef.new(shape: ConnectorProvider, location_name: "Provider"))
    GetConnectorTelemetrySetupOutput.add_member(:manifest_version, Shapes::ShapeRef.new(shape: Long, location_name: "ManifestVersion"))
    GetConnectorTelemetrySetupOutput.struct_class = Types::GetConnectorTelemetrySetupOutput

    GetDatasetIntegrationInput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "Arn"))
    GetDatasetIntegrationInput.struct_class = Types::GetDatasetIntegrationInput

    GetDatasetIntegrationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    GetDatasetIntegrationOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RoleArn"))
    GetDatasetIntegrationOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    GetDatasetIntegrationOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    GetDatasetIntegrationOutput.struct_class = Types::GetDatasetIntegrationOutput

    GetS3TableIntegrationInput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "Arn"))
    GetS3TableIntegrationInput.struct_class = Types::GetS3TableIntegrationInput

    GetS3TableIntegrationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    GetS3TableIntegrationOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RoleArn"))
    GetS3TableIntegrationOutput.add_member(:status, Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: "Status"))
    GetS3TableIntegrationOutput.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "Encryption"))
    GetS3TableIntegrationOutput.add_member(:destination_table_bucket_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "DestinationTableBucketArn"))
    GetS3TableIntegrationOutput.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreatedTimeStamp"))
    GetS3TableIntegrationOutput.struct_class = Types::GetS3TableIntegrationOutput

    GetTelemetryEnrichmentStatusOutput.add_member(:status, Shapes::ShapeRef.new(shape: TelemetryEnrichmentStatus, location_name: "Status"))
    GetTelemetryEnrichmentStatusOutput.add_member(:aws_resource_explorer_managed_view_arn, Shapes::ShapeRef.new(shape: AwsResourceExplorerManagedViewArn, location_name: "AwsResourceExplorerManagedViewArn"))
    GetTelemetryEnrichmentStatusOutput.struct_class = Types::GetTelemetryEnrichmentStatusOutput

    GetTelemetryEvaluationStatusForOrganizationOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    GetTelemetryEvaluationStatusForOrganizationOutput.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    GetTelemetryEvaluationStatusForOrganizationOutput.add_member(:home_region, Shapes::ShapeRef.new(shape: Region, location_name: "HomeRegion"))
    GetTelemetryEvaluationStatusForOrganizationOutput.add_member(:region_statuses, Shapes::ShapeRef.new(shape: RegionStatuses, location_name: "RegionStatuses"))
    GetTelemetryEvaluationStatusForOrganizationOutput.struct_class = Types::GetTelemetryEvaluationStatusForOrganizationOutput

    GetTelemetryEvaluationStatusOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    GetTelemetryEvaluationStatusOutput.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    GetTelemetryEvaluationStatusOutput.add_member(:home_region, Shapes::ShapeRef.new(shape: Region, location_name: "HomeRegion"))
    GetTelemetryEvaluationStatusOutput.add_member(:region_statuses, Shapes::ShapeRef.new(shape: RegionStatuses, location_name: "RegionStatuses"))
    GetTelemetryEvaluationStatusOutput.struct_class = Types::GetTelemetryEvaluationStatusOutput

    GetTelemetryPipelineInput.add_member(:pipeline_identifier, Shapes::ShapeRef.new(shape: TelemetryPipelineIdentifier, required: true, location_name: "PipelineIdentifier"))
    GetTelemetryPipelineInput.struct_class = Types::GetTelemetryPipelineInput

    GetTelemetryPipelineOutput.add_member(:pipeline, Shapes::ShapeRef.new(shape: TelemetryPipeline, location_name: "Pipeline"))
    GetTelemetryPipelineOutput.struct_class = Types::GetTelemetryPipelineOutput

    GetTelemetryRuleForOrganizationInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "RuleIdentifier"))
    GetTelemetryRuleForOrganizationInput.struct_class = Types::GetTelemetryRuleForOrganizationInput

    GetTelemetryRuleForOrganizationOutput.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, location_name: "RuleName"))
    GetTelemetryRuleForOrganizationOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    GetTelemetryRuleForOrganizationOutput.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreatedTimeStamp"))
    GetTelemetryRuleForOrganizationOutput.add_member(:last_update_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdateTimeStamp"))
    GetTelemetryRuleForOrganizationOutput.add_member(:telemetry_rule, Shapes::ShapeRef.new(shape: TelemetryRule, location_name: "TelemetryRule"))
    GetTelemetryRuleForOrganizationOutput.add_member(:home_region, Shapes::ShapeRef.new(shape: Region, location_name: "HomeRegion"))
    GetTelemetryRuleForOrganizationOutput.add_member(:is_replicated, Shapes::ShapeRef.new(shape: IsReplicated, location_name: "IsReplicated"))
    GetTelemetryRuleForOrganizationOutput.add_member(:region_statuses, Shapes::ShapeRef.new(shape: RegionStatuses, location_name: "RegionStatuses"))
    GetTelemetryRuleForOrganizationOutput.struct_class = Types::GetTelemetryRuleForOrganizationOutput

    GetTelemetryRuleInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "RuleIdentifier"))
    GetTelemetryRuleInput.struct_class = Types::GetTelemetryRuleInput

    GetTelemetryRuleOutput.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, location_name: "RuleName"))
    GetTelemetryRuleOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    GetTelemetryRuleOutput.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreatedTimeStamp"))
    GetTelemetryRuleOutput.add_member(:last_update_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdateTimeStamp"))
    GetTelemetryRuleOutput.add_member(:telemetry_rule, Shapes::ShapeRef.new(shape: TelemetryRule, location_name: "TelemetryRule"))
    GetTelemetryRuleOutput.add_member(:home_region, Shapes::ShapeRef.new(shape: Region, location_name: "HomeRegion"))
    GetTelemetryRuleOutput.add_member(:is_replicated, Shapes::ShapeRef.new(shape: IsReplicated, location_name: "IsReplicated"))
    GetTelemetryRuleOutput.add_member(:region_statuses, Shapes::ShapeRef.new(shape: RegionStatuses, location_name: "RegionStatuses"))
    GetTelemetryRuleOutput.struct_class = Types::GetTelemetryRuleOutput

    GetThirdPartyTelemetryEnrichmentInput.add_member(:telemetry_enrichment_identifier, Shapes::ShapeRef.new(shape: ThirdPartyTelemetryEnrichmentIdentifier, required: true, location_name: "TelemetryEnrichmentIdentifier"))
    GetThirdPartyTelemetryEnrichmentInput.struct_class = Types::GetThirdPartyTelemetryEnrichmentInput

    GetThirdPartyTelemetryEnrichmentOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ThirdPartyTelemetryEnrichmentArn, location_name: "Arn"))
    GetThirdPartyTelemetryEnrichmentOutput.add_member(:name, Shapes::ShapeRef.new(shape: ThirdPartyTelemetryEnrichmentName, required: true, location_name: "Name"))
    GetThirdPartyTelemetryEnrichmentOutput.add_member(:status, Shapes::ShapeRef.new(shape: ThirdPartyTelemetryEnrichmentStatus, required: true, location_name: "Status"))
    GetThirdPartyTelemetryEnrichmentOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "StatusReason"))
    GetThirdPartyTelemetryEnrichmentOutput.add_member(:telemetry_source_configuration, Shapes::ShapeRef.new(shape: TelemetrySourceConfigurationOutput, required: true, location_name: "TelemetrySourceConfiguration"))
    GetThirdPartyTelemetryEnrichmentOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapOutput, location_name: "Tags"))
    GetThirdPartyTelemetryEnrichmentOutput.struct_class = Types::GetThirdPartyTelemetryEnrichmentOutput

    IntegrationSummaries.member = Shapes::ShapeRef.new(shape: IntegrationSummary)

    IntegrationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    IntegrationSummary.add_member(:status, Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: "Status"))
    IntegrationSummary.struct_class = Types::IntegrationSummary

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.add_member(:amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidStateException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidStateException.struct_class = Types::InvalidStateException

    LabelNameCondition.add_member(:label_name, Shapes::ShapeRef.new(shape: LabelNameConditionLabelNameString, location_name: "LabelName"))
    LabelNameCondition.struct_class = Types::LabelNameCondition

    ListCentralizationRulesForOrganizationInput.add_member(:rule_name_prefix, Shapes::ShapeRef.new(shape: ListCentralizationRulesForOrganizationInputRuleNamePrefixString, location_name: "RuleNamePrefix"))
    ListCentralizationRulesForOrganizationInput.add_member(:all_regions, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllRegions"))
    ListCentralizationRulesForOrganizationInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListCentralizationRulesForOrganizationMaxResults, location_name: "MaxResults"))
    ListCentralizationRulesForOrganizationInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCentralizationRulesForOrganizationInput.struct_class = Types::ListCentralizationRulesForOrganizationInput

    ListCentralizationRulesForOrganizationOutput.add_member(:centralization_rule_summaries, Shapes::ShapeRef.new(shape: CentralizationRuleSummaries, location_name: "CentralizationRuleSummaries"))
    ListCentralizationRulesForOrganizationOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCentralizationRulesForOrganizationOutput.struct_class = Types::ListCentralizationRulesForOrganizationOutput

    ListConnectorsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListConnectorsMaxResults, location_name: "MaxResults"))
    ListConnectorsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ConnectorNextToken, location_name: "NextToken"))
    ListConnectorsInput.struct_class = Types::ListConnectorsInput

    ListConnectorsOutput.add_member(:connector_summaries, Shapes::ShapeRef.new(shape: ConnectorSummaries, required: true, location_name: "ConnectorSummaries"))
    ListConnectorsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: ConnectorNextToken, location_name: "NextToken"))
    ListConnectorsOutput.struct_class = Types::ListConnectorsOutput

    ListDatasetIntegrationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDatasetIntegrationsMaxResults, location_name: "MaxResults"))
    ListDatasetIntegrationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDatasetIntegrationsInput.struct_class = Types::ListDatasetIntegrationsInput

    ListDatasetIntegrationsOutput.add_member(:dataset_integration_summaries, Shapes::ShapeRef.new(shape: DatasetIntegrationSummaries, required: true, location_name: "DatasetIntegrationSummaries"))
    ListDatasetIntegrationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDatasetIntegrationsOutput.struct_class = Types::ListDatasetIntegrationsOutput

    ListResourceTelemetryForOrganizationInput.add_member(:account_identifiers, Shapes::ShapeRef.new(shape: AccountIdentifiers, location_name: "AccountIdentifiers"))
    ListResourceTelemetryForOrganizationInput.add_member(:resource_identifier_prefix, Shapes::ShapeRef.new(shape: ResourceIdentifierPrefix, location_name: "ResourceIdentifierPrefix"))
    ListResourceTelemetryForOrganizationInput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "ResourceTypes"))
    ListResourceTelemetryForOrganizationInput.add_member(:telemetry_configuration_state, Shapes::ShapeRef.new(shape: TelemetryConfigurationState, location_name: "TelemetryConfigurationState"))
    ListResourceTelemetryForOrganizationInput.add_member(:resource_tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "ResourceTags"))
    ListResourceTelemetryForOrganizationInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListResourceTelemetryForOrganizationMaxResults, location_name: "MaxResults"))
    ListResourceTelemetryForOrganizationInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceTelemetryForOrganizationInput.struct_class = Types::ListResourceTelemetryForOrganizationInput

    ListResourceTelemetryForOrganizationOutput.add_member(:telemetry_configurations, Shapes::ShapeRef.new(shape: TelemetryConfigurations, location_name: "TelemetryConfigurations"))
    ListResourceTelemetryForOrganizationOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceTelemetryForOrganizationOutput.struct_class = Types::ListResourceTelemetryForOrganizationOutput

    ListResourceTelemetryInput.add_member(:resource_identifier_prefix, Shapes::ShapeRef.new(shape: ResourceIdentifierPrefix, location_name: "ResourceIdentifierPrefix"))
    ListResourceTelemetryInput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "ResourceTypes"))
    ListResourceTelemetryInput.add_member(:telemetry_configuration_state, Shapes::ShapeRef.new(shape: TelemetryConfigurationState, location_name: "TelemetryConfigurationState"))
    ListResourceTelemetryInput.add_member(:resource_tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "ResourceTags"))
    ListResourceTelemetryInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListResourceTelemetryMaxResults, location_name: "MaxResults"))
    ListResourceTelemetryInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceTelemetryInput.struct_class = Types::ListResourceTelemetryInput

    ListResourceTelemetryOutput.add_member(:telemetry_configurations, Shapes::ShapeRef.new(shape: TelemetryConfigurations, location_name: "TelemetryConfigurations"))
    ListResourceTelemetryOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceTelemetryOutput.struct_class = Types::ListResourceTelemetryOutput

    ListResourcesByConnectorInput.add_member(:connector_identifier, Shapes::ShapeRef.new(shape: ConnectorIdentifier, required: true, location_name: "ConnectorIdentifier"))
    ListResourcesByConnectorInput.add_member(:selector, Shapes::ShapeRef.new(shape: ConnectorQuery, required: true, location_name: "Selector"))
    ListResourcesByConnectorInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListResourcesByConnectorMaxResults, location_name: "MaxResults"))
    ListResourcesByConnectorInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ConnectorNextToken, location_name: "NextToken"))
    ListResourcesByConnectorInput.struct_class = Types::ListResourcesByConnectorInput

    ListResourcesByConnectorOutput.add_member(:results, Shapes::ShapeRef.new(shape: ConnectorQueryResults, required: true, location_name: "Results"))
    ListResourcesByConnectorOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: ConnectorNextToken, location_name: "NextToken"))
    ListResourcesByConnectorOutput.struct_class = Types::ListResourcesByConnectorOutput

    ListS3TableIntegrationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListS3TableIntegrationsMaxResults, location_name: "MaxResults"))
    ListS3TableIntegrationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListS3TableIntegrationsInput.struct_class = Types::ListS3TableIntegrationsInput

    ListS3TableIntegrationsOutput.add_member(:integration_summaries, Shapes::ShapeRef.new(shape: IntegrationSummaries, location_name: "IntegrationSummaries"))
    ListS3TableIntegrationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListS3TableIntegrationsOutput.struct_class = Types::ListS3TableIntegrationsOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceARN"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapOutput, required: true, location_name: "Tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ListTelemetryPipelinesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTelemetryPipelinesMaxResults, location_name: "MaxResults"))
    ListTelemetryPipelinesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTelemetryPipelinesInput.struct_class = Types::ListTelemetryPipelinesInput

    ListTelemetryPipelinesOutput.add_member(:pipeline_summaries, Shapes::ShapeRef.new(shape: TelemetryPipelineSummaries, location_name: "PipelineSummaries"))
    ListTelemetryPipelinesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTelemetryPipelinesOutput.struct_class = Types::ListTelemetryPipelinesOutput

    ListTelemetryRulesForOrganizationInput.add_member(:rule_name_prefix, Shapes::ShapeRef.new(shape: String, location_name: "RuleNamePrefix"))
    ListTelemetryRulesForOrganizationInput.add_member(:source_account_ids, Shapes::ShapeRef.new(shape: AccountIdentifiers, location_name: "SourceAccountIds"))
    ListTelemetryRulesForOrganizationInput.add_member(:source_organization_unit_ids, Shapes::ShapeRef.new(shape: OrganizationUnitIdentifiers, location_name: "SourceOrganizationUnitIds"))
    ListTelemetryRulesForOrganizationInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTelemetryRulesForOrganizationMaxResults, location_name: "MaxResults"))
    ListTelemetryRulesForOrganizationInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTelemetryRulesForOrganizationInput.struct_class = Types::ListTelemetryRulesForOrganizationInput

    ListTelemetryRulesForOrganizationOutput.add_member(:telemetry_rule_summaries, Shapes::ShapeRef.new(shape: TelemetryRuleSummaries, location_name: "TelemetryRuleSummaries"))
    ListTelemetryRulesForOrganizationOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTelemetryRulesForOrganizationOutput.struct_class = Types::ListTelemetryRulesForOrganizationOutput

    ListTelemetryRulesInput.add_member(:rule_name_prefix, Shapes::ShapeRef.new(shape: String, location_name: "RuleNamePrefix"))
    ListTelemetryRulesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTelemetryRulesMaxResults, location_name: "MaxResults"))
    ListTelemetryRulesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTelemetryRulesInput.struct_class = Types::ListTelemetryRulesInput

    ListTelemetryRulesOutput.add_member(:telemetry_rule_summaries, Shapes::ShapeRef.new(shape: TelemetryRuleSummaries, location_name: "TelemetryRuleSummaries"))
    ListTelemetryRulesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTelemetryRulesOutput.struct_class = Types::ListTelemetryRulesOutput

    ListThirdPartyTelemetryEnrichmentsInput.add_member(:status, Shapes::ShapeRef.new(shape: ThirdPartyTelemetryEnrichmentStatus, location_name: "Status"))
    ListThirdPartyTelemetryEnrichmentsInput.add_member(:telemetry_source, Shapes::ShapeRef.new(shape: ThirdPartyTelemetrySource, location_name: "TelemetrySource"))
    ListThirdPartyTelemetryEnrichmentsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListThirdPartyTelemetryEnrichmentsMaxResults, location_name: "MaxResults"))
    ListThirdPartyTelemetryEnrichmentsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListThirdPartyTelemetryEnrichmentsInput.struct_class = Types::ListThirdPartyTelemetryEnrichmentsInput

    ListThirdPartyTelemetryEnrichmentsOutput.add_member(:telemetry_enrichments, Shapes::ShapeRef.new(shape: ThirdPartyTelemetryEnrichmentSummaries, location_name: "TelemetryEnrichments"))
    ListThirdPartyTelemetryEnrichmentsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListThirdPartyTelemetryEnrichmentsOutput.struct_class = Types::ListThirdPartyTelemetryEnrichmentsOutput

    LogDeliveryParameters.add_member(:log_types, Shapes::ShapeRef.new(shape: LogTypes, location_name: "LogTypes"))
    LogDeliveryParameters.struct_class = Types::LogDeliveryParameters

    LogGroupNameConfiguration.add_member(:log_group_name_pattern, Shapes::ShapeRef.new(shape: LogGroupNamePattern, required: true, location_name: "LogGroupNamePattern"))
    LogGroupNameConfiguration.struct_class = Types::LogGroupNameConfiguration

    LogTypes.member = Shapes::ShapeRef.new(shape: LogType)

    LoggingFilter.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    LoggingFilter.add_member(:default_behavior, Shapes::ShapeRef.new(shape: FilterBehavior, location_name: "DefaultBehavior"))
    LoggingFilter.struct_class = Types::LoggingFilter

    LogsBackupConfiguration.add_member(:region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "Region"))
    LogsBackupConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "KmsKeyArn"))
    LogsBackupConfiguration.struct_class = Types::LogsBackupConfiguration

    LogsEncryptionConfiguration.add_member(:encryption_strategy, Shapes::ShapeRef.new(shape: EncryptionStrategy, required: true, location_name: "EncryptionStrategy"))
    LogsEncryptionConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "KmsKeyArn"))
    LogsEncryptionConfiguration.add_member(:encryption_conflict_resolution_strategy, Shapes::ShapeRef.new(shape: EncryptionConflictResolutionStrategy, location_name: "EncryptionConflictResolutionStrategy"))
    LogsEncryptionConfiguration.add_member(:encryption_scope, Shapes::ShapeRef.new(shape: EncryptionScope, location_name: "EncryptionScope"))
    LogsEncryptionConfiguration.struct_class = Types::LogsEncryptionConfiguration

    MetricsBackupConfiguration.add_member(:region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "Region"))
    MetricsBackupConfiguration.struct_class = Types::MetricsBackupConfiguration

    MskMonitoringParameters.add_member(:enhanced_monitoring, Shapes::ShapeRef.new(shape: MskEnhancedMonitoringLevel, location_name: "EnhancedMonitoring"))
    MskMonitoringParameters.struct_class = Types::MskMonitoringParameters

    OrganizationUnitIdentifiers.member = Shapes::ShapeRef.new(shape: OrganizationUnitIdentifier)

    PermissionList.member = Shapes::ShapeRef.new(shape: Permission)

    PipelineOutput.add_member(:record, Shapes::ShapeRef.new(shape: Record, location_name: "Record"))
    PipelineOutput.add_member(:error, Shapes::ShapeRef.new(shape: PipelineOutputError, location_name: "Error"))
    PipelineOutput.struct_class = Types::PipelineOutput

    PipelineOutputError.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    PipelineOutputError.struct_class = Types::PipelineOutputError

    PipelineOutputs.member = Shapes::ShapeRef.new(shape: PipelineOutput)

    Processors.member = Shapes::ShapeRef.new(shape: String)

    ProfilesBackupConfiguration.add_member(:region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "Region"))
    ProfilesBackupConfiguration.struct_class = Types::ProfilesBackupConfiguration

    PutConnectorTelemetryManifestInput.add_member(:connector_identifier, Shapes::ShapeRef.new(shape: ConnectorIdentifier, required: true, location_name: "ConnectorIdentifier"))
    PutConnectorTelemetryManifestInput.add_member(:manifest, Shapes::ShapeRef.new(shape: TelemetryManifest, required: true, location_name: "Manifest"))
    PutConnectorTelemetryManifestInput.add_member(:expected_version, Shapes::ShapeRef.new(shape: Long, location_name: "ExpectedVersion"))
    PutConnectorTelemetryManifestInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    PutConnectorTelemetryManifestInput.struct_class = Types::PutConnectorTelemetryManifestInput

    PutConnectorTelemetryManifestOutput.add_member(:version, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "Version"))
    PutConnectorTelemetryManifestOutput.struct_class = Types::PutConnectorTelemetryManifestOutput

    Record.add_member(:data, Shapes::ShapeRef.new(shape: String, location_name: "Data"))
    Record.add_member(:type, Shapes::ShapeRef.new(shape: RecordFormat, location_name: "Type"))
    Record.struct_class = Types::Record

    Records.member = Shapes::ShapeRef.new(shape: Record)

    RedactedFields.member = Shapes::ShapeRef.new(shape: FieldToMatch)

    RegionStatus.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "Region"))
    RegionStatus.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    RegionStatus.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "FailureReason"))
    RegionStatus.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    RegionStatus.struct_class = Types::RegionStatus

    RegionStatuses.member = Shapes::ShapeRef.new(shape: RegionStatus)

    Regions.member = Shapes::ShapeRef.new(shape: Region)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTypes.member = Shapes::ShapeRef.new(shape: ResourceType)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "QuotaCode"))
    ServiceQuotaExceededException.add_member(:amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SetupArtifact.add_member(:file_name, Shapes::ShapeRef.new(shape: SetupArtifactFileName, required: true, location_name: "FileName"))
    SetupArtifact.add_member(:content, Shapes::ShapeRef.new(shape: SetupArtifactContent, required: true, location_name: "Content"))
    SetupArtifact.add_member(:format, Shapes::ShapeRef.new(shape: SetupFormat, required: true, location_name: "Format"))
    SetupArtifact.add_member(:content_type, Shapes::ShapeRef.new(shape: SetupArtifactContentType, location_name: "ContentType"))
    SetupArtifact.struct_class = Types::SetupArtifact

    SetupArtifactList.member = Shapes::ShapeRef.new(shape: SetupArtifact)

    SingleHeader.add_member(:name, Shapes::ShapeRef.new(shape: SingleHeaderNameString, location_name: "Name"))
    SingleHeader.struct_class = Types::SingleHeader

    Sinks.member = Shapes::ShapeRef.new(shape: String)

    Source.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    Source.struct_class = Types::Source

    SourceContextGraphConfiguration.struct_class = Types::SourceContextGraphConfiguration

    SourceLogsConfiguration.add_member(:log_group_selection_criteria, Shapes::ShapeRef.new(shape: LogsFilterString, location_name: "LogGroupSelectionCriteria"))
    SourceLogsConfiguration.add_member(:data_source_selection_criteria, Shapes::ShapeRef.new(shape: DataSourceFilterString, location_name: "DataSourceSelectionCriteria"))
    SourceLogsConfiguration.add_member(:encrypted_log_group_strategy, Shapes::ShapeRef.new(shape: EncryptedLogGroupStrategy, required: true, location_name: "EncryptedLogGroupStrategy"))
    SourceLogsConfiguration.struct_class = Types::SourceLogsConfiguration

    SourceMetricsConfiguration.add_member(:metrics_selection_criteria, Shapes::ShapeRef.new(shape: MetricsFilterString, location_name: "MetricsSelectionCriteria"))
    SourceMetricsConfiguration.struct_class = Types::SourceMetricsConfiguration

    SourceProfilesConfiguration.add_member(:profiles_selection_criteria, Shapes::ShapeRef.new(shape: ProfilesFilterString, location_name: "ProfilesSelectionCriteria"))
    SourceProfilesConfiguration.struct_class = Types::SourceProfilesConfiguration

    SourceProgress.add_member(:active, Shapes::ShapeRef.new(shape: SourceProgressActiveInteger, location_name: "Active"))
    SourceProgress.add_member(:total, Shapes::ShapeRef.new(shape: SourceProgressTotalInteger, location_name: "Total"))
    SourceProgress.struct_class = Types::SourceProgress

    Sources.member = Shapes::ShapeRef.new(shape: Source)

    StartTelemetryEnrichmentOutput.add_member(:status, Shapes::ShapeRef.new(shape: TelemetryEnrichmentStatus, location_name: "Status"))
    StartTelemetryEnrichmentOutput.add_member(:aws_resource_explorer_managed_view_arn, Shapes::ShapeRef.new(shape: AwsResourceExplorerManagedViewArn, location_name: "AwsResourceExplorerManagedViewArn"))
    StartTelemetryEnrichmentOutput.struct_class = Types::StartTelemetryEnrichmentOutput

    StartTelemetryEvaluationForOrganizationInput.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, location_name: "Regions"))
    StartTelemetryEvaluationForOrganizationInput.add_member(:all_regions, Shapes::ShapeRef.new(shape: AllRegions, location_name: "AllRegions"))
    StartTelemetryEvaluationForOrganizationInput.struct_class = Types::StartTelemetryEvaluationForOrganizationInput

    StartTelemetryEvaluationInput.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, location_name: "Regions"))
    StartTelemetryEvaluationInput.add_member(:all_regions, Shapes::ShapeRef.new(shape: AllRegions, location_name: "AllRegions"))
    StartTelemetryEvaluationInput.struct_class = Types::StartTelemetryEvaluationInput

    StartTelemetryPipelineRefreshInput.add_member(:pipeline_identifier, Shapes::ShapeRef.new(shape: TelemetryPipelineIdentifier, required: true, location_name: "PipelineIdentifier"))
    StartTelemetryPipelineRefreshInput.struct_class = Types::StartTelemetryPipelineRefreshInput

    StartTelemetryPipelineRefreshOutput.struct_class = Types::StartTelemetryPipelineRefreshOutput

    StartThirdPartyTelemetryEnrichmentInput.add_member(:name, Shapes::ShapeRef.new(shape: ThirdPartyTelemetryEnrichmentName, required: true, location_name: "Name"))
    StartThirdPartyTelemetryEnrichmentInput.add_member(:telemetry_source_configuration, Shapes::ShapeRef.new(shape: TelemetrySourceConfigurationInput, required: true, location_name: "TelemetrySourceConfiguration"))
    StartThirdPartyTelemetryEnrichmentInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "Tags"))
    StartThirdPartyTelemetryEnrichmentInput.struct_class = Types::StartThirdPartyTelemetryEnrichmentInput

    StartThirdPartyTelemetryEnrichmentOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ThirdPartyTelemetryEnrichmentArn, required: true, location_name: "Arn"))
    StartThirdPartyTelemetryEnrichmentOutput.add_member(:name, Shapes::ShapeRef.new(shape: ThirdPartyTelemetryEnrichmentName, required: true, location_name: "Name"))
    StartThirdPartyTelemetryEnrichmentOutput.add_member(:status, Shapes::ShapeRef.new(shape: ThirdPartyTelemetryEnrichmentStatus, required: true, location_name: "Status"))
    StartThirdPartyTelemetryEnrichmentOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "StatusReason"))
    StartThirdPartyTelemetryEnrichmentOutput.add_member(:telemetry_source_configuration, Shapes::ShapeRef.new(shape: TelemetrySourceConfigurationOutput, required: true, location_name: "TelemetrySourceConfiguration"))
    StartThirdPartyTelemetryEnrichmentOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapOutput, location_name: "Tags"))
    StartThirdPartyTelemetryEnrichmentOutput.struct_class = Types::StartThirdPartyTelemetryEnrichmentOutput

    StopTelemetryEnrichmentOutput.add_member(:status, Shapes::ShapeRef.new(shape: TelemetryEnrichmentStatus, location_name: "Status"))
    StopTelemetryEnrichmentOutput.struct_class = Types::StopTelemetryEnrichmentOutput

    StopThirdPartyTelemetryEnrichmentInput.add_member(:telemetry_enrichment_identifier, Shapes::ShapeRef.new(shape: ThirdPartyTelemetryEnrichmentIdentifier, required: true, location_name: "TelemetryEnrichmentIdentifier"))
    StopThirdPartyTelemetryEnrichmentInput.struct_class = Types::StopThirdPartyTelemetryEnrichmentInput

    StopThirdPartyTelemetryEnrichmentOutput.add_member(:name, Shapes::ShapeRef.new(shape: ThirdPartyTelemetryEnrichmentName, required: true, location_name: "Name"))
    StopThirdPartyTelemetryEnrichmentOutput.add_member(:telemetry_source, Shapes::ShapeRef.new(shape: ThirdPartyTelemetrySource, required: true, location_name: "TelemetrySource"))
    StopThirdPartyTelemetryEnrichmentOutput.add_member(:status, Shapes::ShapeRef.new(shape: ThirdPartyTelemetryEnrichmentStatus, required: true, location_name: "Status"))
    StopThirdPartyTelemetryEnrichmentOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "StatusReason"))
    StopThirdPartyTelemetryEnrichmentOutput.struct_class = Types::StopThirdPartyTelemetryEnrichmentOutput

    StringList.member = Shapes::ShapeRef.new(shape: String)

    TagFilter.add_member(:key, Shapes::ShapeRef.new(shape: TagFilterKey, required: true, location_name: "Key"))
    TagFilter.add_member(:values, Shapes::ShapeRef.new(shape: TagFilterValuesList, required: true, location_name: "Values"))
    TagFilter.struct_class = Types::TagFilter

    TagFilterValuesList.member = Shapes::ShapeRef.new(shape: TagFilterValue)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMapInput.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMapInput.value = Shapes::ShapeRef.new(shape: TagValue)

    TagMapOutput.key = Shapes::ShapeRef.new(shape: String)
    TagMapOutput.value = Shapes::ShapeRef.new(shape: String)

    TagPropagationConfiguration.add_member(:destination_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DestinationRoleArn"))
    TagPropagationConfiguration.add_member(:tag_conflict_resolution_strategy, Shapes::ShapeRef.new(shape: TagConflictResolutionStrategy, location_name: "TagConflictResolutionStrategy"))
    TagPropagationConfiguration.struct_class = Types::TagPropagationConfiguration

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceARN"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapInput, required: true, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TelemetryConfiguration.add_member(:account_identifier, Shapes::ShapeRef.new(shape: AccountIdentifier, location_name: "AccountIdentifier"))
    TelemetryConfiguration.add_member(:telemetry_configuration_state, Shapes::ShapeRef.new(shape: TelemetryConfigurationState, location_name: "TelemetryConfigurationState"))
    TelemetryConfiguration.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    TelemetryConfiguration.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "ResourceIdentifier"))
    TelemetryConfiguration.add_member(:resource_tags, Shapes::ShapeRef.new(shape: TagMapOutput, location_name: "ResourceTags"))
    TelemetryConfiguration.add_member(:last_update_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdateTimeStamp"))
    TelemetryConfiguration.add_member(:telemetry_source_type, Shapes::ShapeRef.new(shape: TelemetrySourceType, location_name: "TelemetrySourceType"))
    TelemetryConfiguration.struct_class = Types::TelemetryConfiguration

    TelemetryConfigurationState.key = Shapes::ShapeRef.new(shape: TelemetryType)
    TelemetryConfigurationState.value = Shapes::ShapeRef.new(shape: TelemetryState)

    TelemetryConfigurations.member = Shapes::ShapeRef.new(shape: TelemetryConfiguration)

    TelemetryDestinationConfiguration.add_member(:destination_type, Shapes::ShapeRef.new(shape: DestinationType, location_name: "DestinationType"))
    TelemetryDestinationConfiguration.add_member(:destination_pattern, Shapes::ShapeRef.new(shape: String, location_name: "DestinationPattern"))
    TelemetryDestinationConfiguration.add_member(:retention_in_days, Shapes::ShapeRef.new(shape: RetentionPeriodInDays, location_name: "RetentionInDays"))
    TelemetryDestinationConfiguration.add_member(:vpc_flow_log_parameters, Shapes::ShapeRef.new(shape: VPCFlowLogParameters, location_name: "VPCFlowLogParameters"))
    TelemetryDestinationConfiguration.add_member(:cloudtrail_parameters, Shapes::ShapeRef.new(shape: CloudtrailParameters, location_name: "CloudtrailParameters"))
    TelemetryDestinationConfiguration.add_member(:elb_load_balancer_logging_parameters, Shapes::ShapeRef.new(shape: ELBLoadBalancerLoggingParameters, location_name: "ELBLoadBalancerLoggingParameters"))
    TelemetryDestinationConfiguration.add_member(:waf_logging_parameters, Shapes::ShapeRef.new(shape: WAFLoggingParameters, location_name: "WAFLoggingParameters"))
    TelemetryDestinationConfiguration.add_member(:log_delivery_parameters, Shapes::ShapeRef.new(shape: LogDeliveryParameters, location_name: "LogDeliveryParameters"))
    TelemetryDestinationConfiguration.add_member(:msk_monitoring_parameters, Shapes::ShapeRef.new(shape: MskMonitoringParameters, location_name: "MskMonitoringParameters"))
    TelemetryDestinationConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    TelemetryDestinationConfiguration.struct_class = Types::TelemetryDestinationConfiguration

    TelemetryManifest.add_member(:source, Shapes::ShapeRef.new(shape: TelemetryManifestSource, required: true, location_name: "Source"))
    TelemetryManifest.add_member(:infrastructure, Shapes::ShapeRef.new(shape: TelemetryManifestInfrastructure, location_name: "Infrastructure"))
    TelemetryManifest.struct_class = Types::TelemetryManifest

    TelemetryManifestInfrastructure.add_member(:azure, Shapes::ShapeRef.new(shape: AzureInfrastructure, location_name: "Azure"))
    TelemetryManifestInfrastructure.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TelemetryManifestInfrastructure.add_member_subclass(:azure, Types::TelemetryManifestInfrastructure::Azure)
    TelemetryManifestInfrastructure.add_member_subclass(:unknown, Types::TelemetryManifestInfrastructure::Unknown)
    TelemetryManifestInfrastructure.struct_class = Types::TelemetryManifestInfrastructure

    TelemetryManifestSource.add_member(:azure, Shapes::ShapeRef.new(shape: TelemetryManifestSourceAzureList, location_name: "Azure"))
    TelemetryManifestSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TelemetryManifestSource.add_member_subclass(:azure, Types::TelemetryManifestSource::Azure)
    TelemetryManifestSource.add_member_subclass(:unknown, Types::TelemetryManifestSource::Unknown)
    TelemetryManifestSource.struct_class = Types::TelemetryManifestSource

    TelemetryManifestSourceAzureList.member = Shapes::ShapeRef.new(shape: AzureScopeItem)

    TelemetryPipeline.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreatedTimeStamp"))
    TelemetryPipeline.add_member(:last_update_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdateTimeStamp"))
    TelemetryPipeline.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    TelemetryPipeline.add_member(:name, Shapes::ShapeRef.new(shape: TelemetryPipelineName, location_name: "Name"))
    TelemetryPipeline.add_member(:configuration, Shapes::ShapeRef.new(shape: TelemetryPipelineConfiguration, location_name: "Configuration"))
    TelemetryPipeline.add_member(:status, Shapes::ShapeRef.new(shape: TelemetryPipelineStatus, location_name: "Status"))
    TelemetryPipeline.add_member(:status_reason, Shapes::ShapeRef.new(shape: TelemetryPipelineStatusReason, location_name: "StatusReason"))
    TelemetryPipeline.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapOutput, location_name: "Tags"))
    TelemetryPipeline.add_member(:last_refresh_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastRefreshTimeStamp"))
    TelemetryPipeline.add_member(:source_progress, Shapes::ShapeRef.new(shape: SourceProgress, location_name: "SourceProgress"))
    TelemetryPipeline.add_member(:configuration_summary, Shapes::ShapeRef.new(shape: ConfigurationSummary, location_name: "ConfigurationSummary"))
    TelemetryPipeline.struct_class = Types::TelemetryPipeline

    TelemetryPipelineConfiguration.add_member(:body, Shapes::ShapeRef.new(shape: TelemetryPipelineConfigurationBody, required: true, location_name: "Body"))
    TelemetryPipelineConfiguration.struct_class = Types::TelemetryPipelineConfiguration

    TelemetryPipelineStatusReason.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    TelemetryPipelineStatusReason.struct_class = Types::TelemetryPipelineStatusReason

    TelemetryPipelineSummaries.member = Shapes::ShapeRef.new(shape: TelemetryPipelineSummary)

    TelemetryPipelineSummary.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreatedTimeStamp"))
    TelemetryPipelineSummary.add_member(:last_update_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdateTimeStamp"))
    TelemetryPipelineSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    TelemetryPipelineSummary.add_member(:name, Shapes::ShapeRef.new(shape: TelemetryPipelineName, location_name: "Name"))
    TelemetryPipelineSummary.add_member(:status, Shapes::ShapeRef.new(shape: TelemetryPipelineStatus, location_name: "Status"))
    TelemetryPipelineSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapOutput, location_name: "Tags"))
    TelemetryPipelineSummary.add_member(:configuration_summary, Shapes::ShapeRef.new(shape: ConfigurationSummary, location_name: "ConfigurationSummary"))
    TelemetryPipelineSummary.struct_class = Types::TelemetryPipelineSummary

    TelemetryRule.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    TelemetryRule.add_member(:telemetry_type, Shapes::ShapeRef.new(shape: TelemetryType, required: true, location_name: "TelemetryType"))
    TelemetryRule.add_member(:telemetry_source_types, Shapes::ShapeRef.new(shape: TelemetrySourceTypes, location_name: "TelemetrySourceTypes"))
    TelemetryRule.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: TelemetryDestinationConfiguration, location_name: "DestinationConfiguration"))
    TelemetryRule.add_member(:scope, Shapes::ShapeRef.new(shape: String, location_name: "Scope"))
    TelemetryRule.add_member(:selection_criteria, Shapes::ShapeRef.new(shape: String, location_name: "SelectionCriteria"))
    TelemetryRule.add_member(:allow_field_updates, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowFieldUpdates"))
    TelemetryRule.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, location_name: "Regions"))
    TelemetryRule.add_member(:all_regions, Shapes::ShapeRef.new(shape: AllRegions, location_name: "AllRegions"))
    TelemetryRule.struct_class = Types::TelemetryRule

    TelemetryRuleSummaries.member = Shapes::ShapeRef.new(shape: TelemetryRuleSummary)

    TelemetryRuleSummary.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, location_name: "RuleName"))
    TelemetryRuleSummary.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    TelemetryRuleSummary.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreatedTimeStamp"))
    TelemetryRuleSummary.add_member(:last_update_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdateTimeStamp"))
    TelemetryRuleSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    TelemetryRuleSummary.add_member(:telemetry_type, Shapes::ShapeRef.new(shape: TelemetryType, location_name: "TelemetryType"))
    TelemetryRuleSummary.add_member(:telemetry_source_types, Shapes::ShapeRef.new(shape: TelemetrySourceTypes, location_name: "TelemetrySourceTypes"))
    TelemetryRuleSummary.struct_class = Types::TelemetryRuleSummary

    TelemetrySourceConfigurationInput.add_member(:azure, Shapes::ShapeRef.new(shape: AzureTelemetrySourceConfigurationInput, location_name: "Azure"))
    TelemetrySourceConfigurationInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TelemetrySourceConfigurationInput.add_member_subclass(:azure, Types::TelemetrySourceConfigurationInput::Azure)
    TelemetrySourceConfigurationInput.add_member_subclass(:unknown, Types::TelemetrySourceConfigurationInput::Unknown)
    TelemetrySourceConfigurationInput.struct_class = Types::TelemetrySourceConfigurationInput

    TelemetrySourceConfigurationOutput.add_member(:azure, Shapes::ShapeRef.new(shape: AzureTelemetrySourceConfigurationOutput, location_name: "Azure"))
    TelemetrySourceConfigurationOutput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TelemetrySourceConfigurationOutput.add_member_subclass(:azure, Types::TelemetrySourceConfigurationOutput::Azure)
    TelemetrySourceConfigurationOutput.add_member_subclass(:unknown, Types::TelemetrySourceConfigurationOutput::Unknown)
    TelemetrySourceConfigurationOutput.struct_class = Types::TelemetrySourceConfigurationOutput

    TelemetrySourceTypes.member = Shapes::ShapeRef.new(shape: TelemetrySourceType)

    TestTelemetryPipelineInput.add_member(:records, Shapes::ShapeRef.new(shape: Records, required: true, location_name: "Records"))
    TestTelemetryPipelineInput.add_member(:configuration, Shapes::ShapeRef.new(shape: TelemetryPipelineConfiguration, required: true, location_name: "Configuration"))
    TestTelemetryPipelineInput.add_member(:signal_type, Shapes::ShapeRef.new(shape: SignalType, location_name: "SignalType"))
    TestTelemetryPipelineInput.struct_class = Types::TestTelemetryPipelineInput

    TestTelemetryPipelineOutput.add_member(:results, Shapes::ShapeRef.new(shape: PipelineOutputs, location_name: "Results"))
    TestTelemetryPipelineOutput.struct_class = Types::TestTelemetryPipelineOutput

    ThirdPartyTelemetryEnrichmentSummaries.member = Shapes::ShapeRef.new(shape: ThirdPartyTelemetryEnrichmentSummary)

    ThirdPartyTelemetryEnrichmentSummary.add_member(:name, Shapes::ShapeRef.new(shape: ThirdPartyTelemetryEnrichmentName, location_name: "Name"))
    ThirdPartyTelemetryEnrichmentSummary.add_member(:telemetry_source, Shapes::ShapeRef.new(shape: ThirdPartyTelemetrySource, location_name: "TelemetrySource"))
    ThirdPartyTelemetryEnrichmentSummary.add_member(:status, Shapes::ShapeRef.new(shape: ThirdPartyTelemetryEnrichmentStatus, location_name: "Status"))
    ThirdPartyTelemetryEnrichmentSummary.struct_class = Types::ThirdPartyTelemetryEnrichmentSummary

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceARN"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UpdateCentralizationRuleForOrganizationInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "RuleIdentifier"))
    UpdateCentralizationRuleForOrganizationInput.add_member(:rule, Shapes::ShapeRef.new(shape: CentralizationRule, required: true, location_name: "Rule"))
    UpdateCentralizationRuleForOrganizationInput.struct_class = Types::UpdateCentralizationRuleForOrganizationInput

    UpdateCentralizationRuleForOrganizationOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    UpdateCentralizationRuleForOrganizationOutput.struct_class = Types::UpdateCentralizationRuleForOrganizationOutput

    UpdateDatasetIntegrationInput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "Arn"))
    UpdateDatasetIntegrationInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "RoleArn"))
    UpdateDatasetIntegrationInput.struct_class = Types::UpdateDatasetIntegrationInput

    UpdateDatasetIntegrationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "Arn"))
    UpdateDatasetIntegrationOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "RoleArn"))
    UpdateDatasetIntegrationOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    UpdateDatasetIntegrationOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdatedAt"))
    UpdateDatasetIntegrationOutput.struct_class = Types::UpdateDatasetIntegrationOutput

    UpdateTelemetryPipelineInput.add_member(:pipeline_identifier, Shapes::ShapeRef.new(shape: TelemetryPipelineIdentifier, required: true, location_name: "PipelineIdentifier"))
    UpdateTelemetryPipelineInput.add_member(:configuration, Shapes::ShapeRef.new(shape: TelemetryPipelineConfiguration, required: true, location_name: "Configuration"))
    UpdateTelemetryPipelineInput.struct_class = Types::UpdateTelemetryPipelineInput

    UpdateTelemetryPipelineOutput.struct_class = Types::UpdateTelemetryPipelineOutput

    UpdateTelemetryRuleForOrganizationInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "RuleIdentifier"))
    UpdateTelemetryRuleForOrganizationInput.add_member(:rule, Shapes::ShapeRef.new(shape: TelemetryRule, required: true, location_name: "Rule"))
    UpdateTelemetryRuleForOrganizationInput.struct_class = Types::UpdateTelemetryRuleForOrganizationInput

    UpdateTelemetryRuleForOrganizationOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    UpdateTelemetryRuleForOrganizationOutput.struct_class = Types::UpdateTelemetryRuleForOrganizationOutput

    UpdateTelemetryRuleInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "RuleIdentifier"))
    UpdateTelemetryRuleInput.add_member(:rule, Shapes::ShapeRef.new(shape: TelemetryRule, required: true, location_name: "Rule"))
    UpdateTelemetryRuleInput.struct_class = Types::UpdateTelemetryRuleInput

    UpdateTelemetryRuleOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    UpdateTelemetryRuleOutput.struct_class = Types::UpdateTelemetryRuleOutput

    VPCFlowLogParameters.add_member(:log_format, Shapes::ShapeRef.new(shape: String, location_name: "LogFormat"))
    VPCFlowLogParameters.add_member(:traffic_type, Shapes::ShapeRef.new(shape: String, location_name: "TrafficType"))
    VPCFlowLogParameters.add_member(:max_aggregation_interval, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxAggregationInterval"))
    VPCFlowLogParameters.struct_class = Types::VPCFlowLogParameters

    ValidateTelemetryPipelineConfigurationInput.add_member(:configuration, Shapes::ShapeRef.new(shape: TelemetryPipelineConfiguration, required: true, location_name: "Configuration"))
    ValidateTelemetryPipelineConfigurationInput.struct_class = Types::ValidateTelemetryPipelineConfigurationInput

    ValidateTelemetryPipelineConfigurationOutput.add_member(:errors, Shapes::ShapeRef.new(shape: ValidationErrors, location_name: "Errors"))
    ValidateTelemetryPipelineConfigurationOutput.struct_class = Types::ValidateTelemetryPipelineConfigurationOutput

    ValidationError.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationError.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "Reason"))
    ValidationError.add_member(:field_map, Shapes::ShapeRef.new(shape: FieldMap, location_name: "FieldMap"))
    ValidationError.struct_class = Types::ValidationError

    ValidationErrors.member = Shapes::ShapeRef.new(shape: ValidationError)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.add_member(:errors, Shapes::ShapeRef.new(shape: ValidationErrors, location_name: "Errors"))
    ValidationException.struct_class = Types::ValidationException

    WAFLoggingParameters.add_member(:redacted_fields, Shapes::ShapeRef.new(shape: RedactedFields, location_name: "RedactedFields"))
    WAFLoggingParameters.add_member(:logging_filter, Shapes::ShapeRef.new(shape: LoggingFilter, location_name: "LoggingFilter"))
    WAFLoggingParameters.add_member(:log_type, Shapes::ShapeRef.new(shape: WAFLogType, location_name: "LogType"))
    WAFLoggingParameters.struct_class = Types::WAFLoggingParameters


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "observabilityadmin",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "CloudWatch Observability Admin Service",
        "serviceId" => "ObservabilityAdmin",
        "signatureVersion" => "v4",
        "signingName" => "observabilityadmin",
        "uid" => "observabilityadmin-2018-05-10",
      }

      api.add_operation(:create_centralization_rule_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCentralizationRuleForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/CreateCentralizationRuleForOrganization"
        o.input = Shapes::ShapeRef.new(shape: CreateCentralizationRuleForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateCentralizationRuleForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConnector"
        o.http_method = "POST"
        o.http_request_uri = "/CreateConnector"
        o.input = Shapes::ShapeRef.new(shape: CreateConnectorInput)
        o.output = Shapes::ShapeRef.new(shape: CreateConnectorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_dataset_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDatasetIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/CreateDatasetIntegration"
        o.input = Shapes::ShapeRef.new(shape: CreateDatasetIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDatasetIntegrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_s3_table_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateS3TableIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/CreateS3TableIntegration"
        o.input = Shapes::ShapeRef.new(shape: CreateS3TableIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateS3TableIntegrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_telemetry_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTelemetryPipeline"
        o.http_method = "POST"
        o.http_request_uri = "/CreateTelemetryPipeline"
        o.input = Shapes::ShapeRef.new(shape: CreateTelemetryPipelineInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTelemetryPipelineOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_telemetry_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTelemetryRule"
        o.http_method = "POST"
        o.http_request_uri = "/CreateTelemetryRule"
        o.input = Shapes::ShapeRef.new(shape: CreateTelemetryRuleInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTelemetryRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_telemetry_rule_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTelemetryRuleForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/CreateTelemetryRuleForOrganization"
        o.input = Shapes::ShapeRef.new(shape: CreateTelemetryRuleForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTelemetryRuleForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_centralization_rule_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCentralizationRuleForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteCentralizationRuleForOrganization"
        o.input = Shapes::ShapeRef.new(shape: DeleteCentralizationRuleForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnector"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteConnector"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectorInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteConnectorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_dataset_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDatasetIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteDatasetIntegration"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatasetIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_s3_table_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteS3TableIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteS3TableIntegration"
        o.input = Shapes::ShapeRef.new(shape: DeleteS3TableIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_telemetry_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTelemetryPipeline"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteTelemetryPipeline"
        o.input = Shapes::ShapeRef.new(shape: DeleteTelemetryPipelineInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteTelemetryPipelineOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_telemetry_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTelemetryRule"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteTelemetryRule"
        o.input = Shapes::ShapeRef.new(shape: DeleteTelemetryRuleInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_telemetry_rule_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTelemetryRuleForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteTelemetryRuleForOrganization"
        o.input = Shapes::ShapeRef.new(shape: DeleteTelemetryRuleForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_centralization_rule_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCentralizationRuleForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/GetCentralizationRuleForOrganization"
        o.input = Shapes::ShapeRef.new(shape: GetCentralizationRuleForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: GetCentralizationRuleForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnector"
        o.http_method = "POST"
        o.http_request_uri = "/GetConnector"
        o.input = Shapes::ShapeRef.new(shape: GetConnectorInput)
        o.output = Shapes::ShapeRef.new(shape: GetConnectorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_connector_telemetry_manifest, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnectorTelemetryManifest"
        o.http_method = "POST"
        o.http_request_uri = "/GetConnectorTelemetryManifest"
        o.input = Shapes::ShapeRef.new(shape: GetConnectorTelemetryManifestInput)
        o.output = Shapes::ShapeRef.new(shape: GetConnectorTelemetryManifestOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_connector_telemetry_setup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnectorTelemetrySetup"
        o.http_method = "POST"
        o.http_request_uri = "/GetConnectorTelemetrySetup"
        o.input = Shapes::ShapeRef.new(shape: GetConnectorTelemetrySetupInput)
        o.output = Shapes::ShapeRef.new(shape: GetConnectorTelemetrySetupOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_dataset_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDatasetIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/GetDatasetIntegration"
        o.input = Shapes::ShapeRef.new(shape: GetDatasetIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: GetDatasetIntegrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_s3_table_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetS3TableIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/GetS3TableIntegration"
        o.input = Shapes::ShapeRef.new(shape: GetS3TableIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: GetS3TableIntegrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_telemetry_enrichment_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTelemetryEnrichmentStatus"
        o.http_method = "POST"
        o.http_request_uri = "/GetTelemetryEnrichmentStatus"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetTelemetryEnrichmentStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_telemetry_evaluation_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTelemetryEvaluationStatus"
        o.http_method = "POST"
        o.http_request_uri = "/GetTelemetryEvaluationStatus"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetTelemetryEvaluationStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_telemetry_evaluation_status_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTelemetryEvaluationStatusForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/GetTelemetryEvaluationStatusForOrganization"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetTelemetryEvaluationStatusForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_telemetry_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTelemetryPipeline"
        o.http_method = "POST"
        o.http_request_uri = "/GetTelemetryPipeline"
        o.input = Shapes::ShapeRef.new(shape: GetTelemetryPipelineInput)
        o.output = Shapes::ShapeRef.new(shape: GetTelemetryPipelineOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_telemetry_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTelemetryRule"
        o.http_method = "POST"
        o.http_request_uri = "/GetTelemetryRule"
        o.input = Shapes::ShapeRef.new(shape: GetTelemetryRuleInput)
        o.output = Shapes::ShapeRef.new(shape: GetTelemetryRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_telemetry_rule_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTelemetryRuleForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/GetTelemetryRuleForOrganization"
        o.input = Shapes::ShapeRef.new(shape: GetTelemetryRuleForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: GetTelemetryRuleForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_third_party_telemetry_enrichment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetThirdPartyTelemetryEnrichment"
        o.http_method = "POST"
        o.http_request_uri = "/GetThirdPartyTelemetryEnrichment"
        o.input = Shapes::ShapeRef.new(shape: GetThirdPartyTelemetryEnrichmentInput)
        o.output = Shapes::ShapeRef.new(shape: GetThirdPartyTelemetryEnrichmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_centralization_rules_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCentralizationRulesForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/ListCentralizationRulesForOrganization"
        o.input = Shapes::ShapeRef.new(shape: ListCentralizationRulesForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: ListCentralizationRulesForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_connectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConnectors"
        o.http_method = "POST"
        o.http_request_uri = "/ListConnectors"
        o.input = Shapes::ShapeRef.new(shape: ListConnectorsInput)
        o.output = Shapes::ShapeRef.new(shape: ListConnectorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dataset_integrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasetIntegrations"
        o.http_method = "POST"
        o.http_request_uri = "/ListDatasetIntegrations"
        o.input = Shapes::ShapeRef.new(shape: ListDatasetIntegrationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetIntegrationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_telemetry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceTelemetry"
        o.http_method = "POST"
        o.http_request_uri = "/ListResourceTelemetry"
        o.input = Shapes::ShapeRef.new(shape: ListResourceTelemetryInput)
        o.output = Shapes::ShapeRef.new(shape: ListResourceTelemetryOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_telemetry_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceTelemetryForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/ListResourceTelemetryForOrganization"
        o.input = Shapes::ShapeRef.new(shape: ListResourceTelemetryForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: ListResourceTelemetryForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resources_by_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourcesByConnector"
        o.http_method = "POST"
        o.http_request_uri = "/ListResourcesByConnector"
        o.input = Shapes::ShapeRef.new(shape: ListResourcesByConnectorInput)
        o.output = Shapes::ShapeRef.new(shape: ListResourcesByConnectorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_s3_table_integrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListS3TableIntegrations"
        o.http_method = "POST"
        o.http_request_uri = "/ListS3TableIntegrations"
        o.input = Shapes::ShapeRef.new(shape: ListS3TableIntegrationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListS3TableIntegrationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/ListTagsForResource"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_telemetry_pipelines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTelemetryPipelines"
        o.http_method = "POST"
        o.http_request_uri = "/ListTelemetryPipelines"
        o.input = Shapes::ShapeRef.new(shape: ListTelemetryPipelinesInput)
        o.output = Shapes::ShapeRef.new(shape: ListTelemetryPipelinesOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_telemetry_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTelemetryRules"
        o.http_method = "POST"
        o.http_request_uri = "/ListTelemetryRules"
        o.input = Shapes::ShapeRef.new(shape: ListTelemetryRulesInput)
        o.output = Shapes::ShapeRef.new(shape: ListTelemetryRulesOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_telemetry_rules_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTelemetryRulesForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/ListTelemetryRulesForOrganization"
        o.input = Shapes::ShapeRef.new(shape: ListTelemetryRulesForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: ListTelemetryRulesForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_third_party_telemetry_enrichments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThirdPartyTelemetryEnrichments"
        o.http_method = "POST"
        o.http_request_uri = "/ListThirdPartyTelemetryEnrichments"
        o.input = Shapes::ShapeRef.new(shape: ListThirdPartyTelemetryEnrichmentsInput)
        o.output = Shapes::ShapeRef.new(shape: ListThirdPartyTelemetryEnrichmentsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_connector_telemetry_manifest, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutConnectorTelemetryManifest"
        o.http_method = "POST"
        o.http_request_uri = "/PutConnectorTelemetryManifest"
        o.input = Shapes::ShapeRef.new(shape: PutConnectorTelemetryManifestInput)
        o.output = Shapes::ShapeRef.new(shape: PutConnectorTelemetryManifestOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:start_telemetry_enrichment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTelemetryEnrichment"
        o.http_method = "POST"
        o.http_request_uri = "/StartTelemetryEnrichment"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: StartTelemetryEnrichmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:start_telemetry_evaluation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTelemetryEvaluation"
        o.http_method = "POST"
        o.http_request_uri = "/StartTelemetryEvaluation"
        o.input = Shapes::ShapeRef.new(shape: StartTelemetryEvaluationInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:start_telemetry_evaluation_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTelemetryEvaluationForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/StartTelemetryEvaluationForOrganization"
        o.input = Shapes::ShapeRef.new(shape: StartTelemetryEvaluationForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:start_telemetry_pipeline_refresh, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTelemetryPipelineRefresh"
        o.http_method = "POST"
        o.http_request_uri = "/StartTelemetryPipelineRefresh"
        o.input = Shapes::ShapeRef.new(shape: StartTelemetryPipelineRefreshInput)
        o.output = Shapes::ShapeRef.new(shape: StartTelemetryPipelineRefreshOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:start_third_party_telemetry_enrichment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartThirdPartyTelemetryEnrichment"
        o.http_method = "POST"
        o.http_request_uri = "/StartThirdPartyTelemetryEnrichment"
        o.input = Shapes::ShapeRef.new(shape: StartThirdPartyTelemetryEnrichmentInput)
        o.output = Shapes::ShapeRef.new(shape: StartThirdPartyTelemetryEnrichmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:stop_telemetry_enrichment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTelemetryEnrichment"
        o.http_method = "POST"
        o.http_request_uri = "/StopTelemetryEnrichment"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: StopTelemetryEnrichmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:stop_telemetry_evaluation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTelemetryEvaluation"
        o.http_method = "POST"
        o.http_request_uri = "/StopTelemetryEvaluation"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:stop_telemetry_evaluation_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTelemetryEvaluationForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/StopTelemetryEvaluationForOrganization"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:stop_third_party_telemetry_enrichment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopThirdPartyTelemetryEnrichment"
        o.http_method = "POST"
        o.http_request_uri = "/StopThirdPartyTelemetryEnrichment"
        o.input = Shapes::ShapeRef.new(shape: StopThirdPartyTelemetryEnrichmentInput)
        o.output = Shapes::ShapeRef.new(shape: StopThirdPartyTelemetryEnrichmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/TagResource"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:test_telemetry_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestTelemetryPipeline"
        o.http_method = "POST"
        o.http_request_uri = "/TestTelemetryPipeline"
        o.input = Shapes::ShapeRef.new(shape: TestTelemetryPipelineInput)
        o.output = Shapes::ShapeRef.new(shape: TestTelemetryPipelineOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/UntagResource"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_centralization_rule_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCentralizationRuleForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateCentralizationRuleForOrganization"
        o.input = Shapes::ShapeRef.new(shape: UpdateCentralizationRuleForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateCentralizationRuleForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_dataset_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDatasetIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateDatasetIntegration"
        o.input = Shapes::ShapeRef.new(shape: UpdateDatasetIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateDatasetIntegrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_telemetry_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTelemetryPipeline"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateTelemetryPipeline"
        o.input = Shapes::ShapeRef.new(shape: UpdateTelemetryPipelineInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateTelemetryPipelineOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_telemetry_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTelemetryRule"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateTelemetryRule"
        o.input = Shapes::ShapeRef.new(shape: UpdateTelemetryRuleInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateTelemetryRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_telemetry_rule_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTelemetryRuleForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateTelemetryRuleForOrganization"
        o.input = Shapes::ShapeRef.new(shape: UpdateTelemetryRuleForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateTelemetryRuleForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:validate_telemetry_pipeline_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ValidateTelemetryPipelineConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/ValidateTelemetryPipelineConfiguration"
        o.input = Shapes::ShapeRef.new(shape: ValidateTelemetryPipelineConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: ValidateTelemetryPipelineConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)
    end

  end
end
