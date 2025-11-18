# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Backup
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AdvancedBackupSetting = Shapes::StructureShape.new(name: 'AdvancedBackupSetting')
    AdvancedBackupSettings = Shapes::ListShape.new(name: 'AdvancedBackupSettings')
    AggregationPeriod = Shapes::StringShape.new(name: 'AggregationPeriod')
    AlreadyExistsException = Shapes::StructureShape.new(name: 'AlreadyExistsException')
    AssociateBackupVaultMpaApprovalTeamInput = Shapes::StructureShape.new(name: 'AssociateBackupVaultMpaApprovalTeamInput')
    BackupJob = Shapes::StructureShape.new(name: 'BackupJob')
    BackupJobChildJobsInState = Shapes::MapShape.new(name: 'BackupJobChildJobsInState')
    BackupJobState = Shapes::StringShape.new(name: 'BackupJobState')
    BackupJobStatus = Shapes::StringShape.new(name: 'BackupJobStatus')
    BackupJobSummary = Shapes::StructureShape.new(name: 'BackupJobSummary')
    BackupJobSummaryList = Shapes::ListShape.new(name: 'BackupJobSummaryList')
    BackupJobsList = Shapes::ListShape.new(name: 'BackupJobsList')
    BackupOptionKey = Shapes::StringShape.new(name: 'BackupOptionKey')
    BackupOptionValue = Shapes::StringShape.new(name: 'BackupOptionValue')
    BackupOptions = Shapes::MapShape.new(name: 'BackupOptions')
    BackupPlan = Shapes::StructureShape.new(name: 'BackupPlan')
    BackupPlanInput = Shapes::StructureShape.new(name: 'BackupPlanInput')
    BackupPlanName = Shapes::StringShape.new(name: 'BackupPlanName')
    BackupPlanTemplatesList = Shapes::ListShape.new(name: 'BackupPlanTemplatesList')
    BackupPlanTemplatesListMember = Shapes::StructureShape.new(name: 'BackupPlanTemplatesListMember')
    BackupPlanVersionsList = Shapes::ListShape.new(name: 'BackupPlanVersionsList')
    BackupPlansList = Shapes::ListShape.new(name: 'BackupPlansList')
    BackupPlansListMember = Shapes::StructureShape.new(name: 'BackupPlansListMember')
    BackupRule = Shapes::StructureShape.new(name: 'BackupRule')
    BackupRuleInput = Shapes::StructureShape.new(name: 'BackupRuleInput')
    BackupRuleName = Shapes::StringShape.new(name: 'BackupRuleName')
    BackupRules = Shapes::ListShape.new(name: 'BackupRules')
    BackupRulesInput = Shapes::ListShape.new(name: 'BackupRulesInput')
    BackupSelection = Shapes::StructureShape.new(name: 'BackupSelection')
    BackupSelectionName = Shapes::StringShape.new(name: 'BackupSelectionName')
    BackupSelectionsList = Shapes::ListShape.new(name: 'BackupSelectionsList')
    BackupSelectionsListMember = Shapes::StructureShape.new(name: 'BackupSelectionsListMember')
    BackupVaultEvent = Shapes::StringShape.new(name: 'BackupVaultEvent')
    BackupVaultEvents = Shapes::ListShape.new(name: 'BackupVaultEvents')
    BackupVaultList = Shapes::ListShape.new(name: 'BackupVaultList')
    BackupVaultListMember = Shapes::StructureShape.new(name: 'BackupVaultListMember')
    BackupVaultName = Shapes::StringShape.new(name: 'BackupVaultName')
    BackupVaultNameOrWildcard = Shapes::StringShape.new(name: 'BackupVaultNameOrWildcard')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CalculatedLifecycle = Shapes::StructureShape.new(name: 'CalculatedLifecycle')
    CancelLegalHoldInput = Shapes::StructureShape.new(name: 'CancelLegalHoldInput')
    CancelLegalHoldOutput = Shapes::StructureShape.new(name: 'CancelLegalHoldOutput')
    ComplianceResourceIdList = Shapes::ListShape.new(name: 'ComplianceResourceIdList')
    Condition = Shapes::StructureShape.new(name: 'Condition')
    ConditionKey = Shapes::StringShape.new(name: 'ConditionKey')
    ConditionParameter = Shapes::StructureShape.new(name: 'ConditionParameter')
    ConditionParameters = Shapes::ListShape.new(name: 'ConditionParameters')
    ConditionType = Shapes::StringShape.new(name: 'ConditionType')
    ConditionValue = Shapes::StringShape.new(name: 'ConditionValue')
    Conditions = Shapes::StructureShape.new(name: 'Conditions')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ControlInputParameter = Shapes::StructureShape.new(name: 'ControlInputParameter')
    ControlInputParameters = Shapes::ListShape.new(name: 'ControlInputParameters')
    ControlName = Shapes::StringShape.new(name: 'ControlName')
    ControlScope = Shapes::StructureShape.new(name: 'ControlScope')
    CopyAction = Shapes::StructureShape.new(name: 'CopyAction')
    CopyActions = Shapes::ListShape.new(name: 'CopyActions')
    CopyJob = Shapes::StructureShape.new(name: 'CopyJob')
    CopyJobChildJobsInState = Shapes::MapShape.new(name: 'CopyJobChildJobsInState')
    CopyJobState = Shapes::StringShape.new(name: 'CopyJobState')
    CopyJobStatus = Shapes::StringShape.new(name: 'CopyJobStatus')
    CopyJobSummary = Shapes::StructureShape.new(name: 'CopyJobSummary')
    CopyJobSummaryList = Shapes::ListShape.new(name: 'CopyJobSummaryList')
    CopyJobsList = Shapes::ListShape.new(name: 'CopyJobsList')
    CreateBackupPlanInput = Shapes::StructureShape.new(name: 'CreateBackupPlanInput')
    CreateBackupPlanOutput = Shapes::StructureShape.new(name: 'CreateBackupPlanOutput')
    CreateBackupSelectionInput = Shapes::StructureShape.new(name: 'CreateBackupSelectionInput')
    CreateBackupSelectionOutput = Shapes::StructureShape.new(name: 'CreateBackupSelectionOutput')
    CreateBackupVaultInput = Shapes::StructureShape.new(name: 'CreateBackupVaultInput')
    CreateBackupVaultOutput = Shapes::StructureShape.new(name: 'CreateBackupVaultOutput')
    CreateFrameworkInput = Shapes::StructureShape.new(name: 'CreateFrameworkInput')
    CreateFrameworkOutput = Shapes::StructureShape.new(name: 'CreateFrameworkOutput')
    CreateLegalHoldInput = Shapes::StructureShape.new(name: 'CreateLegalHoldInput')
    CreateLegalHoldOutput = Shapes::StructureShape.new(name: 'CreateLegalHoldOutput')
    CreateLogicallyAirGappedBackupVaultInput = Shapes::StructureShape.new(name: 'CreateLogicallyAirGappedBackupVaultInput')
    CreateLogicallyAirGappedBackupVaultOutput = Shapes::StructureShape.new(name: 'CreateLogicallyAirGappedBackupVaultOutput')
    CreateReportPlanInput = Shapes::StructureShape.new(name: 'CreateReportPlanInput')
    CreateReportPlanOutput = Shapes::StructureShape.new(name: 'CreateReportPlanOutput')
    CreateRestoreAccessBackupVaultInput = Shapes::StructureShape.new(name: 'CreateRestoreAccessBackupVaultInput')
    CreateRestoreAccessBackupVaultOutput = Shapes::StructureShape.new(name: 'CreateRestoreAccessBackupVaultOutput')
    CreateRestoreTestingPlanInput = Shapes::StructureShape.new(name: 'CreateRestoreTestingPlanInput')
    CreateRestoreTestingPlanOutput = Shapes::StructureShape.new(name: 'CreateRestoreTestingPlanOutput')
    CreateRestoreTestingSelectionInput = Shapes::StructureShape.new(name: 'CreateRestoreTestingSelectionInput')
    CreateRestoreTestingSelectionOutput = Shapes::StructureShape.new(name: 'CreateRestoreTestingSelectionOutput')
    CreateTieringConfigurationInput = Shapes::StructureShape.new(name: 'CreateTieringConfigurationInput')
    CreateTieringConfigurationOutput = Shapes::StructureShape.new(name: 'CreateTieringConfigurationOutput')
    CreatorRequestId = Shapes::StringShape.new(name: 'CreatorRequestId')
    CronExpression = Shapes::StringShape.new(name: 'CronExpression')
    DateRange = Shapes::StructureShape.new(name: 'DateRange')
    DeleteBackupPlanInput = Shapes::StructureShape.new(name: 'DeleteBackupPlanInput')
    DeleteBackupPlanOutput = Shapes::StructureShape.new(name: 'DeleteBackupPlanOutput')
    DeleteBackupSelectionInput = Shapes::StructureShape.new(name: 'DeleteBackupSelectionInput')
    DeleteBackupVaultAccessPolicyInput = Shapes::StructureShape.new(name: 'DeleteBackupVaultAccessPolicyInput')
    DeleteBackupVaultInput = Shapes::StructureShape.new(name: 'DeleteBackupVaultInput')
    DeleteBackupVaultLockConfigurationInput = Shapes::StructureShape.new(name: 'DeleteBackupVaultLockConfigurationInput')
    DeleteBackupVaultNotificationsInput = Shapes::StructureShape.new(name: 'DeleteBackupVaultNotificationsInput')
    DeleteFrameworkInput = Shapes::StructureShape.new(name: 'DeleteFrameworkInput')
    DeleteRecoveryPointInput = Shapes::StructureShape.new(name: 'DeleteRecoveryPointInput')
    DeleteReportPlanInput = Shapes::StructureShape.new(name: 'DeleteReportPlanInput')
    DeleteRestoreTestingPlanInput = Shapes::StructureShape.new(name: 'DeleteRestoreTestingPlanInput')
    DeleteRestoreTestingSelectionInput = Shapes::StructureShape.new(name: 'DeleteRestoreTestingSelectionInput')
    DeleteTieringConfigurationInput = Shapes::StructureShape.new(name: 'DeleteTieringConfigurationInput')
    DeleteTieringConfigurationOutput = Shapes::StructureShape.new(name: 'DeleteTieringConfigurationOutput')
    DependencyFailureException = Shapes::StructureShape.new(name: 'DependencyFailureException')
    DescribeBackupJobInput = Shapes::StructureShape.new(name: 'DescribeBackupJobInput')
    DescribeBackupJobOutput = Shapes::StructureShape.new(name: 'DescribeBackupJobOutput')
    DescribeBackupVaultInput = Shapes::StructureShape.new(name: 'DescribeBackupVaultInput')
    DescribeBackupVaultOutput = Shapes::StructureShape.new(name: 'DescribeBackupVaultOutput')
    DescribeCopyJobInput = Shapes::StructureShape.new(name: 'DescribeCopyJobInput')
    DescribeCopyJobOutput = Shapes::StructureShape.new(name: 'DescribeCopyJobOutput')
    DescribeFrameworkInput = Shapes::StructureShape.new(name: 'DescribeFrameworkInput')
    DescribeFrameworkOutput = Shapes::StructureShape.new(name: 'DescribeFrameworkOutput')
    DescribeGlobalSettingsInput = Shapes::StructureShape.new(name: 'DescribeGlobalSettingsInput')
    DescribeGlobalSettingsOutput = Shapes::StructureShape.new(name: 'DescribeGlobalSettingsOutput')
    DescribeProtectedResourceInput = Shapes::StructureShape.new(name: 'DescribeProtectedResourceInput')
    DescribeProtectedResourceOutput = Shapes::StructureShape.new(name: 'DescribeProtectedResourceOutput')
    DescribeRecoveryPointInput = Shapes::StructureShape.new(name: 'DescribeRecoveryPointInput')
    DescribeRecoveryPointOutput = Shapes::StructureShape.new(name: 'DescribeRecoveryPointOutput')
    DescribeRegionSettingsInput = Shapes::StructureShape.new(name: 'DescribeRegionSettingsInput')
    DescribeRegionSettingsOutput = Shapes::StructureShape.new(name: 'DescribeRegionSettingsOutput')
    DescribeReportJobInput = Shapes::StructureShape.new(name: 'DescribeReportJobInput')
    DescribeReportJobOutput = Shapes::StructureShape.new(name: 'DescribeReportJobOutput')
    DescribeReportPlanInput = Shapes::StructureShape.new(name: 'DescribeReportPlanInput')
    DescribeReportPlanOutput = Shapes::StructureShape.new(name: 'DescribeReportPlanOutput')
    DescribeRestoreJobInput = Shapes::StructureShape.new(name: 'DescribeRestoreJobInput')
    DescribeRestoreJobOutput = Shapes::StructureShape.new(name: 'DescribeRestoreJobOutput')
    DisassociateBackupVaultMpaApprovalTeamInput = Shapes::StructureShape.new(name: 'DisassociateBackupVaultMpaApprovalTeamInput')
    DisassociateRecoveryPointFromParentInput = Shapes::StructureShape.new(name: 'DisassociateRecoveryPointFromParentInput')
    DisassociateRecoveryPointInput = Shapes::StructureShape.new(name: 'DisassociateRecoveryPointInput')
    EncryptionKeyType = Shapes::StringShape.new(name: 'EncryptionKeyType')
    ExportBackupPlanTemplateInput = Shapes::StructureShape.new(name: 'ExportBackupPlanTemplateInput')
    ExportBackupPlanTemplateOutput = Shapes::StructureShape.new(name: 'ExportBackupPlanTemplateOutput')
    FormatList = Shapes::ListShape.new(name: 'FormatList')
    Framework = Shapes::StructureShape.new(name: 'Framework')
    FrameworkControl = Shapes::StructureShape.new(name: 'FrameworkControl')
    FrameworkControls = Shapes::ListShape.new(name: 'FrameworkControls')
    FrameworkDescription = Shapes::StringShape.new(name: 'FrameworkDescription')
    FrameworkList = Shapes::ListShape.new(name: 'FrameworkList')
    FrameworkName = Shapes::StringShape.new(name: 'FrameworkName')
    GetBackupPlanFromJSONInput = Shapes::StructureShape.new(name: 'GetBackupPlanFromJSONInput')
    GetBackupPlanFromJSONOutput = Shapes::StructureShape.new(name: 'GetBackupPlanFromJSONOutput')
    GetBackupPlanFromTemplateInput = Shapes::StructureShape.new(name: 'GetBackupPlanFromTemplateInput')
    GetBackupPlanFromTemplateOutput = Shapes::StructureShape.new(name: 'GetBackupPlanFromTemplateOutput')
    GetBackupPlanInput = Shapes::StructureShape.new(name: 'GetBackupPlanInput')
    GetBackupPlanOutput = Shapes::StructureShape.new(name: 'GetBackupPlanOutput')
    GetBackupSelectionInput = Shapes::StructureShape.new(name: 'GetBackupSelectionInput')
    GetBackupSelectionOutput = Shapes::StructureShape.new(name: 'GetBackupSelectionOutput')
    GetBackupVaultAccessPolicyInput = Shapes::StructureShape.new(name: 'GetBackupVaultAccessPolicyInput')
    GetBackupVaultAccessPolicyOutput = Shapes::StructureShape.new(name: 'GetBackupVaultAccessPolicyOutput')
    GetBackupVaultNotificationsInput = Shapes::StructureShape.new(name: 'GetBackupVaultNotificationsInput')
    GetBackupVaultNotificationsOutput = Shapes::StructureShape.new(name: 'GetBackupVaultNotificationsOutput')
    GetLegalHoldInput = Shapes::StructureShape.new(name: 'GetLegalHoldInput')
    GetLegalHoldOutput = Shapes::StructureShape.new(name: 'GetLegalHoldOutput')
    GetRecoveryPointIndexDetailsInput = Shapes::StructureShape.new(name: 'GetRecoveryPointIndexDetailsInput')
    GetRecoveryPointIndexDetailsOutput = Shapes::StructureShape.new(name: 'GetRecoveryPointIndexDetailsOutput')
    GetRecoveryPointRestoreMetadataInput = Shapes::StructureShape.new(name: 'GetRecoveryPointRestoreMetadataInput')
    GetRecoveryPointRestoreMetadataOutput = Shapes::StructureShape.new(name: 'GetRecoveryPointRestoreMetadataOutput')
    GetRestoreJobMetadataInput = Shapes::StructureShape.new(name: 'GetRestoreJobMetadataInput')
    GetRestoreJobMetadataOutput = Shapes::StructureShape.new(name: 'GetRestoreJobMetadataOutput')
    GetRestoreTestingInferredMetadataInput = Shapes::StructureShape.new(name: 'GetRestoreTestingInferredMetadataInput')
    GetRestoreTestingInferredMetadataOutput = Shapes::StructureShape.new(name: 'GetRestoreTestingInferredMetadataOutput')
    GetRestoreTestingPlanInput = Shapes::StructureShape.new(name: 'GetRestoreTestingPlanInput')
    GetRestoreTestingPlanOutput = Shapes::StructureShape.new(name: 'GetRestoreTestingPlanOutput')
    GetRestoreTestingSelectionInput = Shapes::StructureShape.new(name: 'GetRestoreTestingSelectionInput')
    GetRestoreTestingSelectionOutput = Shapes::StructureShape.new(name: 'GetRestoreTestingSelectionOutput')
    GetSupportedResourceTypesOutput = Shapes::StructureShape.new(name: 'GetSupportedResourceTypesOutput')
    GetTieringConfigurationInput = Shapes::StructureShape.new(name: 'GetTieringConfigurationInput')
    GetTieringConfigurationOutput = Shapes::StructureShape.new(name: 'GetTieringConfigurationOutput')
    GlobalSettings = Shapes::MapShape.new(name: 'GlobalSettings')
    GlobalSettingsName = Shapes::StringShape.new(name: 'GlobalSettingsName')
    GlobalSettingsValue = Shapes::StringShape.new(name: 'GlobalSettingsValue')
    IAMPolicy = Shapes::StringShape.new(name: 'IAMPolicy')
    IAMRoleArn = Shapes::StringShape.new(name: 'IAMRoleArn')
    Index = Shapes::StringShape.new(name: 'Index')
    IndexAction = Shapes::StructureShape.new(name: 'IndexAction')
    IndexActions = Shapes::ListShape.new(name: 'IndexActions')
    IndexStatus = Shapes::StringShape.new(name: 'IndexStatus')
    IndexedRecoveryPoint = Shapes::StructureShape.new(name: 'IndexedRecoveryPoint')
    IndexedRecoveryPointList = Shapes::ListShape.new(name: 'IndexedRecoveryPointList')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    InvalidResourceStateException = Shapes::StructureShape.new(name: 'InvalidResourceStateException')
    IsEnabled = Shapes::BooleanShape.new(name: 'IsEnabled')
    KeyValue = Shapes::StructureShape.new(name: 'KeyValue')
    KeyValueList = Shapes::ListShape.new(name: 'KeyValueList')
    LatestMpaApprovalTeamUpdate = Shapes::StructureShape.new(name: 'LatestMpaApprovalTeamUpdate')
    LatestRevokeRequest = Shapes::StructureShape.new(name: 'LatestRevokeRequest')
    LegalHold = Shapes::StructureShape.new(name: 'LegalHold')
    LegalHoldStatus = Shapes::StringShape.new(name: 'LegalHoldStatus')
    LegalHoldsList = Shapes::ListShape.new(name: 'LegalHoldsList')
    Lifecycle = Shapes::StructureShape.new(name: 'Lifecycle')
    LifecycleDeleteAfterEvent = Shapes::StringShape.new(name: 'LifecycleDeleteAfterEvent')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListBackupJobSummariesInput = Shapes::StructureShape.new(name: 'ListBackupJobSummariesInput')
    ListBackupJobSummariesOutput = Shapes::StructureShape.new(name: 'ListBackupJobSummariesOutput')
    ListBackupJobsInput = Shapes::StructureShape.new(name: 'ListBackupJobsInput')
    ListBackupJobsOutput = Shapes::StructureShape.new(name: 'ListBackupJobsOutput')
    ListBackupPlanTemplatesInput = Shapes::StructureShape.new(name: 'ListBackupPlanTemplatesInput')
    ListBackupPlanTemplatesOutput = Shapes::StructureShape.new(name: 'ListBackupPlanTemplatesOutput')
    ListBackupPlanVersionsInput = Shapes::StructureShape.new(name: 'ListBackupPlanVersionsInput')
    ListBackupPlanVersionsOutput = Shapes::StructureShape.new(name: 'ListBackupPlanVersionsOutput')
    ListBackupPlansInput = Shapes::StructureShape.new(name: 'ListBackupPlansInput')
    ListBackupPlansOutput = Shapes::StructureShape.new(name: 'ListBackupPlansOutput')
    ListBackupSelectionsInput = Shapes::StructureShape.new(name: 'ListBackupSelectionsInput')
    ListBackupSelectionsOutput = Shapes::StructureShape.new(name: 'ListBackupSelectionsOutput')
    ListBackupVaultsInput = Shapes::StructureShape.new(name: 'ListBackupVaultsInput')
    ListBackupVaultsOutput = Shapes::StructureShape.new(name: 'ListBackupVaultsOutput')
    ListCopyJobSummariesInput = Shapes::StructureShape.new(name: 'ListCopyJobSummariesInput')
    ListCopyJobSummariesOutput = Shapes::StructureShape.new(name: 'ListCopyJobSummariesOutput')
    ListCopyJobsInput = Shapes::StructureShape.new(name: 'ListCopyJobsInput')
    ListCopyJobsOutput = Shapes::StructureShape.new(name: 'ListCopyJobsOutput')
    ListFrameworksInput = Shapes::StructureShape.new(name: 'ListFrameworksInput')
    ListFrameworksOutput = Shapes::StructureShape.new(name: 'ListFrameworksOutput')
    ListIndexedRecoveryPointsInput = Shapes::StructureShape.new(name: 'ListIndexedRecoveryPointsInput')
    ListIndexedRecoveryPointsOutput = Shapes::StructureShape.new(name: 'ListIndexedRecoveryPointsOutput')
    ListLegalHoldsInput = Shapes::StructureShape.new(name: 'ListLegalHoldsInput')
    ListLegalHoldsOutput = Shapes::StructureShape.new(name: 'ListLegalHoldsOutput')
    ListOfTags = Shapes::ListShape.new(name: 'ListOfTags')
    ListProtectedResourcesByBackupVaultInput = Shapes::StructureShape.new(name: 'ListProtectedResourcesByBackupVaultInput')
    ListProtectedResourcesByBackupVaultOutput = Shapes::StructureShape.new(name: 'ListProtectedResourcesByBackupVaultOutput')
    ListProtectedResourcesInput = Shapes::StructureShape.new(name: 'ListProtectedResourcesInput')
    ListProtectedResourcesOutput = Shapes::StructureShape.new(name: 'ListProtectedResourcesOutput')
    ListRecoveryPointsByBackupVaultInput = Shapes::StructureShape.new(name: 'ListRecoveryPointsByBackupVaultInput')
    ListRecoveryPointsByBackupVaultOutput = Shapes::StructureShape.new(name: 'ListRecoveryPointsByBackupVaultOutput')
    ListRecoveryPointsByLegalHoldInput = Shapes::StructureShape.new(name: 'ListRecoveryPointsByLegalHoldInput')
    ListRecoveryPointsByLegalHoldOutput = Shapes::StructureShape.new(name: 'ListRecoveryPointsByLegalHoldOutput')
    ListRecoveryPointsByResourceInput = Shapes::StructureShape.new(name: 'ListRecoveryPointsByResourceInput')
    ListRecoveryPointsByResourceOutput = Shapes::StructureShape.new(name: 'ListRecoveryPointsByResourceOutput')
    ListReportJobsInput = Shapes::StructureShape.new(name: 'ListReportJobsInput')
    ListReportJobsOutput = Shapes::StructureShape.new(name: 'ListReportJobsOutput')
    ListReportPlansInput = Shapes::StructureShape.new(name: 'ListReportPlansInput')
    ListReportPlansOutput = Shapes::StructureShape.new(name: 'ListReportPlansOutput')
    ListRestoreAccessBackupVaultsInput = Shapes::StructureShape.new(name: 'ListRestoreAccessBackupVaultsInput')
    ListRestoreAccessBackupVaultsOutput = Shapes::StructureShape.new(name: 'ListRestoreAccessBackupVaultsOutput')
    ListRestoreJobSummariesInput = Shapes::StructureShape.new(name: 'ListRestoreJobSummariesInput')
    ListRestoreJobSummariesOutput = Shapes::StructureShape.new(name: 'ListRestoreJobSummariesOutput')
    ListRestoreJobsByProtectedResourceInput = Shapes::StructureShape.new(name: 'ListRestoreJobsByProtectedResourceInput')
    ListRestoreJobsByProtectedResourceOutput = Shapes::StructureShape.new(name: 'ListRestoreJobsByProtectedResourceOutput')
    ListRestoreJobsInput = Shapes::StructureShape.new(name: 'ListRestoreJobsInput')
    ListRestoreJobsOutput = Shapes::StructureShape.new(name: 'ListRestoreJobsOutput')
    ListRestoreTestingPlansInput = Shapes::StructureShape.new(name: 'ListRestoreTestingPlansInput')
    ListRestoreTestingPlansInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRestoreTestingPlansInputMaxResultsInteger')
    ListRestoreTestingPlansOutput = Shapes::StructureShape.new(name: 'ListRestoreTestingPlansOutput')
    ListRestoreTestingSelectionsInput = Shapes::StructureShape.new(name: 'ListRestoreTestingSelectionsInput')
    ListRestoreTestingSelectionsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRestoreTestingSelectionsInputMaxResultsInteger')
    ListRestoreTestingSelectionsOutput = Shapes::StructureShape.new(name: 'ListRestoreTestingSelectionsOutput')
    ListTagsInput = Shapes::StructureShape.new(name: 'ListTagsInput')
    ListTagsOutput = Shapes::StructureShape.new(name: 'ListTagsOutput')
    ListTieringConfigurationsInput = Shapes::StructureShape.new(name: 'ListTieringConfigurationsInput')
    ListTieringConfigurationsOutput = Shapes::StructureShape.new(name: 'ListTieringConfigurationsOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxFrameworkInputs = Shapes::IntegerShape.new(name: 'MaxFrameworkInputs')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxScheduledRunsPreview = Shapes::IntegerShape.new(name: 'MaxScheduledRunsPreview')
    MessageCategory = Shapes::StringShape.new(name: 'MessageCategory')
    Metadata = Shapes::MapShape.new(name: 'Metadata')
    MetadataKey = Shapes::StringShape.new(name: 'MetadataKey')
    MetadataValue = Shapes::StringShape.new(name: 'MetadataValue')
    MissingParameterValueException = Shapes::StructureShape.new(name: 'MissingParameterValueException')
    MpaRevokeSessionStatus = Shapes::StringShape.new(name: 'MpaRevokeSessionStatus')
    MpaSessionStatus = Shapes::StringShape.new(name: 'MpaSessionStatus')
    ParameterName = Shapes::StringShape.new(name: 'ParameterName')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    ProtectedResource = Shapes::StructureShape.new(name: 'ProtectedResource')
    ProtectedResourceConditions = Shapes::StructureShape.new(name: 'ProtectedResourceConditions')
    ProtectedResourcesList = Shapes::ListShape.new(name: 'ProtectedResourcesList')
    PutBackupVaultAccessPolicyInput = Shapes::StructureShape.new(name: 'PutBackupVaultAccessPolicyInput')
    PutBackupVaultLockConfigurationInput = Shapes::StructureShape.new(name: 'PutBackupVaultLockConfigurationInput')
    PutBackupVaultNotificationsInput = Shapes::StructureShape.new(name: 'PutBackupVaultNotificationsInput')
    PutRestoreValidationResultInput = Shapes::StructureShape.new(name: 'PutRestoreValidationResultInput')
    RecoveryPointByBackupVault = Shapes::StructureShape.new(name: 'RecoveryPointByBackupVault')
    RecoveryPointByBackupVaultList = Shapes::ListShape.new(name: 'RecoveryPointByBackupVaultList')
    RecoveryPointByResource = Shapes::StructureShape.new(name: 'RecoveryPointByResource')
    RecoveryPointByResourceList = Shapes::ListShape.new(name: 'RecoveryPointByResourceList')
    RecoveryPointCreator = Shapes::StructureShape.new(name: 'RecoveryPointCreator')
    RecoveryPointMember = Shapes::StructureShape.new(name: 'RecoveryPointMember')
    RecoveryPointSelection = Shapes::StructureShape.new(name: 'RecoveryPointSelection')
    RecoveryPointStatus = Shapes::StringShape.new(name: 'RecoveryPointStatus')
    RecoveryPointsList = Shapes::ListShape.new(name: 'RecoveryPointsList')
    Region = Shapes::StringShape.new(name: 'Region')
    ReportDeliveryChannel = Shapes::StructureShape.new(name: 'ReportDeliveryChannel')
    ReportDestination = Shapes::StructureShape.new(name: 'ReportDestination')
    ReportJob = Shapes::StructureShape.new(name: 'ReportJob')
    ReportJobId = Shapes::StringShape.new(name: 'ReportJobId')
    ReportJobList = Shapes::ListShape.new(name: 'ReportJobList')
    ReportPlan = Shapes::StructureShape.new(name: 'ReportPlan')
    ReportPlanDescription = Shapes::StringShape.new(name: 'ReportPlanDescription')
    ReportPlanList = Shapes::ListShape.new(name: 'ReportPlanList')
    ReportPlanName = Shapes::StringShape.new(name: 'ReportPlanName')
    ReportSetting = Shapes::StructureShape.new(name: 'ReportSetting')
    RequesterComment = Shapes::StringShape.new(name: 'RequesterComment')
    ResourceArns = Shapes::ListShape.new(name: 'ResourceArns')
    ResourceIdentifiers = Shapes::ListShape.new(name: 'ResourceIdentifiers')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceSelection = Shapes::StructureShape.new(name: 'ResourceSelection')
    ResourceSelections = Shapes::ListShape.new(name: 'ResourceSelections')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypeList = Shapes::ListShape.new(name: 'ResourceTypeList')
    ResourceTypeManagementPreference = Shapes::MapShape.new(name: 'ResourceTypeManagementPreference')
    ResourceTypeOptInPreference = Shapes::MapShape.new(name: 'ResourceTypeOptInPreference')
    ResourceTypes = Shapes::ListShape.new(name: 'ResourceTypes')
    RestoreAccessBackupVaultList = Shapes::ListShape.new(name: 'RestoreAccessBackupVaultList')
    RestoreAccessBackupVaultListMember = Shapes::StructureShape.new(name: 'RestoreAccessBackupVaultListMember')
    RestoreDeletionStatus = Shapes::StringShape.new(name: 'RestoreDeletionStatus')
    RestoreJobCreator = Shapes::StructureShape.new(name: 'RestoreJobCreator')
    RestoreJobId = Shapes::StringShape.new(name: 'RestoreJobId')
    RestoreJobState = Shapes::StringShape.new(name: 'RestoreJobState')
    RestoreJobStatus = Shapes::StringShape.new(name: 'RestoreJobStatus')
    RestoreJobSummary = Shapes::StructureShape.new(name: 'RestoreJobSummary')
    RestoreJobSummaryList = Shapes::ListShape.new(name: 'RestoreJobSummaryList')
    RestoreJobsList = Shapes::ListShape.new(name: 'RestoreJobsList')
    RestoreJobsListMember = Shapes::StructureShape.new(name: 'RestoreJobsListMember')
    RestoreTestingPlanForCreate = Shapes::StructureShape.new(name: 'RestoreTestingPlanForCreate')
    RestoreTestingPlanForGet = Shapes::StructureShape.new(name: 'RestoreTestingPlanForGet')
    RestoreTestingPlanForList = Shapes::StructureShape.new(name: 'RestoreTestingPlanForList')
    RestoreTestingPlanForUpdate = Shapes::StructureShape.new(name: 'RestoreTestingPlanForUpdate')
    RestoreTestingPlans = Shapes::ListShape.new(name: 'RestoreTestingPlans')
    RestoreTestingRecoveryPointSelection = Shapes::StructureShape.new(name: 'RestoreTestingRecoveryPointSelection')
    RestoreTestingRecoveryPointSelectionAlgorithm = Shapes::StringShape.new(name: 'RestoreTestingRecoveryPointSelectionAlgorithm')
    RestoreTestingRecoveryPointType = Shapes::StringShape.new(name: 'RestoreTestingRecoveryPointType')
    RestoreTestingRecoveryPointTypeList = Shapes::ListShape.new(name: 'RestoreTestingRecoveryPointTypeList')
    RestoreTestingSelectionForCreate = Shapes::StructureShape.new(name: 'RestoreTestingSelectionForCreate')
    RestoreTestingSelectionForGet = Shapes::StructureShape.new(name: 'RestoreTestingSelectionForGet')
    RestoreTestingSelectionForList = Shapes::StructureShape.new(name: 'RestoreTestingSelectionForList')
    RestoreTestingSelectionForUpdate = Shapes::StructureShape.new(name: 'RestoreTestingSelectionForUpdate')
    RestoreTestingSelections = Shapes::ListShape.new(name: 'RestoreTestingSelections')
    RestoreValidationStatus = Shapes::StringShape.new(name: 'RestoreValidationStatus')
    RevokeRestoreAccessBackupVaultInput = Shapes::StructureShape.new(name: 'RevokeRestoreAccessBackupVaultInput')
    RuleExecutionType = Shapes::StringShape.new(name: 'RuleExecutionType')
    ScheduledPlanExecutionMember = Shapes::StructureShape.new(name: 'ScheduledPlanExecutionMember')
    ScheduledRunsPreview = Shapes::ListShape.new(name: 'ScheduledRunsPreview')
    SensitiveStringMap = Shapes::MapShape.new(name: 'SensitiveStringMap')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    StartBackupJobInput = Shapes::StructureShape.new(name: 'StartBackupJobInput')
    StartBackupJobOutput = Shapes::StructureShape.new(name: 'StartBackupJobOutput')
    StartCopyJobInput = Shapes::StructureShape.new(name: 'StartCopyJobInput')
    StartCopyJobOutput = Shapes::StructureShape.new(name: 'StartCopyJobOutput')
    StartReportJobInput = Shapes::StructureShape.new(name: 'StartReportJobInput')
    StartReportJobOutput = Shapes::StructureShape.new(name: 'StartReportJobOutput')
    StartRestoreJobInput = Shapes::StructureShape.new(name: 'StartRestoreJobInput')
    StartRestoreJobOutput = Shapes::StructureShape.new(name: 'StartRestoreJobOutput')
    StopBackupJobInput = Shapes::StructureShape.new(name: 'StopBackupJobInput')
    StorageClass = Shapes::StringShape.new(name: 'StorageClass')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TieringConfiguration = Shapes::StructureShape.new(name: 'TieringConfiguration')
    TieringConfigurationInputForCreate = Shapes::StructureShape.new(name: 'TieringConfigurationInputForCreate')
    TieringConfigurationInputForUpdate = Shapes::StructureShape.new(name: 'TieringConfigurationInputForUpdate')
    TieringConfigurationName = Shapes::StringShape.new(name: 'TieringConfigurationName')
    TieringConfigurationsList = Shapes::ListShape.new(name: 'TieringConfigurationsList')
    TieringConfigurationsListMember = Shapes::StructureShape.new(name: 'TieringConfigurationsListMember')
    TieringDownSettingsInDays = Shapes::IntegerShape.new(name: 'TieringDownSettingsInDays')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Timezone = Shapes::StringShape.new(name: 'Timezone')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UpdateBackupPlanInput = Shapes::StructureShape.new(name: 'UpdateBackupPlanInput')
    UpdateBackupPlanOutput = Shapes::StructureShape.new(name: 'UpdateBackupPlanOutput')
    UpdateFrameworkInput = Shapes::StructureShape.new(name: 'UpdateFrameworkInput')
    UpdateFrameworkOutput = Shapes::StructureShape.new(name: 'UpdateFrameworkOutput')
    UpdateGlobalSettingsInput = Shapes::StructureShape.new(name: 'UpdateGlobalSettingsInput')
    UpdateRecoveryPointIndexSettingsInput = Shapes::StructureShape.new(name: 'UpdateRecoveryPointIndexSettingsInput')
    UpdateRecoveryPointIndexSettingsOutput = Shapes::StructureShape.new(name: 'UpdateRecoveryPointIndexSettingsOutput')
    UpdateRecoveryPointLifecycleInput = Shapes::StructureShape.new(name: 'UpdateRecoveryPointLifecycleInput')
    UpdateRecoveryPointLifecycleOutput = Shapes::StructureShape.new(name: 'UpdateRecoveryPointLifecycleOutput')
    UpdateRegionSettingsInput = Shapes::StructureShape.new(name: 'UpdateRegionSettingsInput')
    UpdateReportPlanInput = Shapes::StructureShape.new(name: 'UpdateReportPlanInput')
    UpdateReportPlanOutput = Shapes::StructureShape.new(name: 'UpdateReportPlanOutput')
    UpdateRestoreTestingPlanInput = Shapes::StructureShape.new(name: 'UpdateRestoreTestingPlanInput')
    UpdateRestoreTestingPlanOutput = Shapes::StructureShape.new(name: 'UpdateRestoreTestingPlanOutput')
    UpdateRestoreTestingSelectionInput = Shapes::StructureShape.new(name: 'UpdateRestoreTestingSelectionInput')
    UpdateRestoreTestingSelectionOutput = Shapes::StructureShape.new(name: 'UpdateRestoreTestingSelectionOutput')
    UpdateTieringConfigurationInput = Shapes::StructureShape.new(name: 'UpdateTieringConfigurationInput')
    UpdateTieringConfigurationOutput = Shapes::StructureShape.new(name: 'UpdateTieringConfigurationOutput')
    VaultNames = Shapes::ListShape.new(name: 'VaultNames')
    VaultState = Shapes::StringShape.new(name: 'VaultState')
    VaultType = Shapes::StringShape.new(name: 'VaultType')
    WindowMinutes = Shapes::IntegerShape.new(name: 'WindowMinutes')
    boolean = Shapes::BooleanShape.new(name: 'boolean')
    integer = Shapes::IntegerShape.new(name: 'integer')
    long = Shapes::IntegerShape.new(name: 'long')
    string = Shapes::StringShape.new(name: 'string')
    stringList = Shapes::ListShape.new(name: 'stringList')
    stringMap = Shapes::MapShape.new(name: 'stringMap')
    timestamp = Shapes::TimestampShape.new(name: 'timestamp')

    AdvancedBackupSetting.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    AdvancedBackupSetting.add_member(:backup_options, Shapes::ShapeRef.new(shape: BackupOptions, location_name: "BackupOptions"))
    AdvancedBackupSetting.struct_class = Types::AdvancedBackupSetting

    AdvancedBackupSettings.member = Shapes::ShapeRef.new(shape: AdvancedBackupSetting)

    AlreadyExistsException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "Code"))
    AlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    AlreadyExistsException.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: string, location_name: "CreatorRequestId"))
    AlreadyExistsException.add_member(:arn, Shapes::ShapeRef.new(shape: string, location_name: "Arn"))
    AlreadyExistsException.add_member(:type, Shapes::ShapeRef.new(shape: string, location_name: "Type"))
    AlreadyExistsException.add_member(:context, Shapes::ShapeRef.new(shape: string, location_name: "Context"))
    AlreadyExistsException.struct_class = Types::AlreadyExistsException

    AssociateBackupVaultMpaApprovalTeamInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    AssociateBackupVaultMpaApprovalTeamInput.add_member(:mpa_approval_team_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "MpaApprovalTeamArn"))
    AssociateBackupVaultMpaApprovalTeamInput.add_member(:requester_comment, Shapes::ShapeRef.new(shape: RequesterComment, location_name: "RequesterComment"))
    AssociateBackupVaultMpaApprovalTeamInput.struct_class = Types::AssociateBackupVaultMpaApprovalTeamInput

    BackupJob.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    BackupJob.add_member(:backup_job_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupJobId"))
    BackupJob.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location_name: "BackupVaultName"))
    BackupJob.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    BackupJob.add_member(:vault_type, Shapes::ShapeRef.new(shape: string, location_name: "VaultType"))
    BackupJob.add_member(:vault_lock_state, Shapes::ShapeRef.new(shape: string, location_name: "VaultLockState"))
    BackupJob.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    BackupJob.add_member(:recovery_point_lifecycle, Shapes::ShapeRef.new(shape: Lifecycle, location_name: "RecoveryPointLifecycle"))
    BackupJob.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "EncryptionKeyArn"))
    BackupJob.add_member(:is_encrypted, Shapes::ShapeRef.new(shape: boolean, location_name: "IsEncrypted"))
    BackupJob.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ResourceArn"))
    BackupJob.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    BackupJob.add_member(:completion_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CompletionDate"))
    BackupJob.add_member(:state, Shapes::ShapeRef.new(shape: BackupJobState, location_name: "State"))
    BackupJob.add_member(:status_message, Shapes::ShapeRef.new(shape: string, location_name: "StatusMessage"))
    BackupJob.add_member(:percent_done, Shapes::ShapeRef.new(shape: string, location_name: "PercentDone"))
    BackupJob.add_member(:backup_size_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "BackupSizeInBytes"))
    BackupJob.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "IamRoleArn"))
    BackupJob.add_member(:created_by, Shapes::ShapeRef.new(shape: RecoveryPointCreator, location_name: "CreatedBy"))
    BackupJob.add_member(:expected_completion_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "ExpectedCompletionDate"))
    BackupJob.add_member(:start_by, Shapes::ShapeRef.new(shape: timestamp, location_name: "StartBy"))
    BackupJob.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    BackupJob.add_member(:bytes_transferred, Shapes::ShapeRef.new(shape: Long, location_name: "BytesTransferred"))
    BackupJob.add_member(:backup_options, Shapes::ShapeRef.new(shape: BackupOptions, location_name: "BackupOptions"))
    BackupJob.add_member(:backup_type, Shapes::ShapeRef.new(shape: string, location_name: "BackupType"))
    BackupJob.add_member(:parent_job_id, Shapes::ShapeRef.new(shape: string, location_name: "ParentJobId"))
    BackupJob.add_member(:is_parent, Shapes::ShapeRef.new(shape: boolean, location_name: "IsParent"))
    BackupJob.add_member(:resource_name, Shapes::ShapeRef.new(shape: string, location_name: "ResourceName"))
    BackupJob.add_member(:initiation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "InitiationDate"))
    BackupJob.add_member(:message_category, Shapes::ShapeRef.new(shape: string, location_name: "MessageCategory"))
    BackupJob.struct_class = Types::BackupJob

    BackupJobChildJobsInState.key = Shapes::ShapeRef.new(shape: BackupJobState)
    BackupJobChildJobsInState.value = Shapes::ShapeRef.new(shape: Long)

    BackupJobSummary.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "Region"))
    BackupJobSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    BackupJobSummary.add_member(:state, Shapes::ShapeRef.new(shape: BackupJobStatus, location_name: "State"))
    BackupJobSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    BackupJobSummary.add_member(:message_category, Shapes::ShapeRef.new(shape: MessageCategory, location_name: "MessageCategory"))
    BackupJobSummary.add_member(:count, Shapes::ShapeRef.new(shape: integer, location_name: "Count"))
    BackupJobSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "StartTime"))
    BackupJobSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "EndTime"))
    BackupJobSummary.struct_class = Types::BackupJobSummary

    BackupJobSummaryList.member = Shapes::ShapeRef.new(shape: BackupJobSummary)

    BackupJobsList.member = Shapes::ShapeRef.new(shape: BackupJob)

    BackupOptions.key = Shapes::ShapeRef.new(shape: BackupOptionKey)
    BackupOptions.value = Shapes::ShapeRef.new(shape: BackupOptionValue)

    BackupPlan.add_member(:backup_plan_name, Shapes::ShapeRef.new(shape: BackupPlanName, required: true, location_name: "BackupPlanName"))
    BackupPlan.add_member(:rules, Shapes::ShapeRef.new(shape: BackupRules, required: true, location_name: "Rules"))
    BackupPlan.add_member(:advanced_backup_settings, Shapes::ShapeRef.new(shape: AdvancedBackupSettings, location_name: "AdvancedBackupSettings"))
    BackupPlan.struct_class = Types::BackupPlan

    BackupPlanInput.add_member(:backup_plan_name, Shapes::ShapeRef.new(shape: BackupPlanName, required: true, location_name: "BackupPlanName"))
    BackupPlanInput.add_member(:rules, Shapes::ShapeRef.new(shape: BackupRulesInput, required: true, location_name: "Rules"))
    BackupPlanInput.add_member(:advanced_backup_settings, Shapes::ShapeRef.new(shape: AdvancedBackupSettings, location_name: "AdvancedBackupSettings"))
    BackupPlanInput.struct_class = Types::BackupPlanInput

    BackupPlanTemplatesList.member = Shapes::ShapeRef.new(shape: BackupPlanTemplatesListMember)

    BackupPlanTemplatesListMember.add_member(:backup_plan_template_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupPlanTemplateId"))
    BackupPlanTemplatesListMember.add_member(:backup_plan_template_name, Shapes::ShapeRef.new(shape: string, location_name: "BackupPlanTemplateName"))
    BackupPlanTemplatesListMember.struct_class = Types::BackupPlanTemplatesListMember

    BackupPlanVersionsList.member = Shapes::ShapeRef.new(shape: BackupPlansListMember)

    BackupPlansList.member = Shapes::ShapeRef.new(shape: BackupPlansListMember)

    BackupPlansListMember.add_member(:backup_plan_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupPlanArn"))
    BackupPlansListMember.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupPlanId"))
    BackupPlansListMember.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    BackupPlansListMember.add_member(:deletion_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "DeletionDate"))
    BackupPlansListMember.add_member(:version_id, Shapes::ShapeRef.new(shape: string, location_name: "VersionId"))
    BackupPlansListMember.add_member(:backup_plan_name, Shapes::ShapeRef.new(shape: BackupPlanName, location_name: "BackupPlanName"))
    BackupPlansListMember.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: string, location_name: "CreatorRequestId"))
    BackupPlansListMember.add_member(:last_execution_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastExecutionDate"))
    BackupPlansListMember.add_member(:advanced_backup_settings, Shapes::ShapeRef.new(shape: AdvancedBackupSettings, location_name: "AdvancedBackupSettings"))
    BackupPlansListMember.struct_class = Types::BackupPlansListMember

    BackupRule.add_member(:rule_name, Shapes::ShapeRef.new(shape: BackupRuleName, required: true, location_name: "RuleName"))
    BackupRule.add_member(:target_backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location_name: "TargetBackupVaultName"))
    BackupRule.add_member(:target_logically_air_gapped_backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "TargetLogicallyAirGappedBackupVaultArn"))
    BackupRule.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: CronExpression, location_name: "ScheduleExpression"))
    BackupRule.add_member(:start_window_minutes, Shapes::ShapeRef.new(shape: WindowMinutes, location_name: "StartWindowMinutes"))
    BackupRule.add_member(:completion_window_minutes, Shapes::ShapeRef.new(shape: WindowMinutes, location_name: "CompletionWindowMinutes"))
    BackupRule.add_member(:lifecycle, Shapes::ShapeRef.new(shape: Lifecycle, location_name: "Lifecycle"))
    BackupRule.add_member(:recovery_point_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "RecoveryPointTags"))
    BackupRule.add_member(:rule_id, Shapes::ShapeRef.new(shape: string, location_name: "RuleId"))
    BackupRule.add_member(:copy_actions, Shapes::ShapeRef.new(shape: CopyActions, location_name: "CopyActions"))
    BackupRule.add_member(:enable_continuous_backup, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableContinuousBackup"))
    BackupRule.add_member(:schedule_expression_timezone, Shapes::ShapeRef.new(shape: Timezone, location_name: "ScheduleExpressionTimezone"))
    BackupRule.add_member(:index_actions, Shapes::ShapeRef.new(shape: IndexActions, location_name: "IndexActions"))
    BackupRule.struct_class = Types::BackupRule

    BackupRuleInput.add_member(:rule_name, Shapes::ShapeRef.new(shape: BackupRuleName, required: true, location_name: "RuleName"))
    BackupRuleInput.add_member(:target_backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location_name: "TargetBackupVaultName"))
    BackupRuleInput.add_member(:target_logically_air_gapped_backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "TargetLogicallyAirGappedBackupVaultArn"))
    BackupRuleInput.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: CronExpression, location_name: "ScheduleExpression"))
    BackupRuleInput.add_member(:start_window_minutes, Shapes::ShapeRef.new(shape: WindowMinutes, location_name: "StartWindowMinutes"))
    BackupRuleInput.add_member(:completion_window_minutes, Shapes::ShapeRef.new(shape: WindowMinutes, location_name: "CompletionWindowMinutes"))
    BackupRuleInput.add_member(:lifecycle, Shapes::ShapeRef.new(shape: Lifecycle, location_name: "Lifecycle"))
    BackupRuleInput.add_member(:recovery_point_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "RecoveryPointTags"))
    BackupRuleInput.add_member(:copy_actions, Shapes::ShapeRef.new(shape: CopyActions, location_name: "CopyActions"))
    BackupRuleInput.add_member(:enable_continuous_backup, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableContinuousBackup"))
    BackupRuleInput.add_member(:schedule_expression_timezone, Shapes::ShapeRef.new(shape: Timezone, location_name: "ScheduleExpressionTimezone"))
    BackupRuleInput.add_member(:index_actions, Shapes::ShapeRef.new(shape: IndexActions, location_name: "IndexActions"))
    BackupRuleInput.struct_class = Types::BackupRuleInput

    BackupRules.member = Shapes::ShapeRef.new(shape: BackupRule)

    BackupRulesInput.member = Shapes::ShapeRef.new(shape: BackupRuleInput)

    BackupSelection.add_member(:selection_name, Shapes::ShapeRef.new(shape: BackupSelectionName, required: true, location_name: "SelectionName"))
    BackupSelection.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, required: true, location_name: "IamRoleArn"))
    BackupSelection.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceArns, location_name: "Resources"))
    BackupSelection.add_member(:list_of_tags, Shapes::ShapeRef.new(shape: ListOfTags, location_name: "ListOfTags"))
    BackupSelection.add_member(:not_resources, Shapes::ShapeRef.new(shape: ResourceArns, location_name: "NotResources"))
    BackupSelection.add_member(:conditions, Shapes::ShapeRef.new(shape: Conditions, location_name: "Conditions"))
    BackupSelection.struct_class = Types::BackupSelection

    BackupSelectionsList.member = Shapes::ShapeRef.new(shape: BackupSelectionsListMember)

    BackupSelectionsListMember.add_member(:selection_id, Shapes::ShapeRef.new(shape: string, location_name: "SelectionId"))
    BackupSelectionsListMember.add_member(:selection_name, Shapes::ShapeRef.new(shape: BackupSelectionName, location_name: "SelectionName"))
    BackupSelectionsListMember.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupPlanId"))
    BackupSelectionsListMember.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    BackupSelectionsListMember.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: string, location_name: "CreatorRequestId"))
    BackupSelectionsListMember.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "IamRoleArn"))
    BackupSelectionsListMember.struct_class = Types::BackupSelectionsListMember

    BackupVaultEvents.member = Shapes::ShapeRef.new(shape: BackupVaultEvent)

    BackupVaultList.member = Shapes::ShapeRef.new(shape: BackupVaultListMember)

    BackupVaultListMember.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location_name: "BackupVaultName"))
    BackupVaultListMember.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    BackupVaultListMember.add_member(:vault_type, Shapes::ShapeRef.new(shape: VaultType, location_name: "VaultType"))
    BackupVaultListMember.add_member(:vault_state, Shapes::ShapeRef.new(shape: VaultState, location_name: "VaultState"))
    BackupVaultListMember.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    BackupVaultListMember.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "EncryptionKeyArn"))
    BackupVaultListMember.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: string, location_name: "CreatorRequestId"))
    BackupVaultListMember.add_member(:number_of_recovery_points, Shapes::ShapeRef.new(shape: long, location_name: "NumberOfRecoveryPoints"))
    BackupVaultListMember.add_member(:locked, Shapes::ShapeRef.new(shape: Boolean, location_name: "Locked"))
    BackupVaultListMember.add_member(:min_retention_days, Shapes::ShapeRef.new(shape: Long, location_name: "MinRetentionDays"))
    BackupVaultListMember.add_member(:max_retention_days, Shapes::ShapeRef.new(shape: Long, location_name: "MaxRetentionDays"))
    BackupVaultListMember.add_member(:lock_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "LockDate"))
    BackupVaultListMember.add_member(:encryption_key_type, Shapes::ShapeRef.new(shape: EncryptionKeyType, location_name: "EncryptionKeyType"))
    BackupVaultListMember.struct_class = Types::BackupVaultListMember

    CalculatedLifecycle.add_member(:move_to_cold_storage_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "MoveToColdStorageAt"))
    CalculatedLifecycle.add_member(:delete_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "DeleteAt"))
    CalculatedLifecycle.struct_class = Types::CalculatedLifecycle

    CancelLegalHoldInput.add_member(:legal_hold_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "legalHoldId"))
    CancelLegalHoldInput.add_member(:cancel_description, Shapes::ShapeRef.new(shape: string, required: true, location: "querystring", location_name: "cancelDescription"))
    CancelLegalHoldInput.add_member(:retain_record_in_days, Shapes::ShapeRef.new(shape: Long, location: "querystring", location_name: "retainRecordInDays"))
    CancelLegalHoldInput.struct_class = Types::CancelLegalHoldInput

    CancelLegalHoldOutput.struct_class = Types::CancelLegalHoldOutput

    ComplianceResourceIdList.member = Shapes::ShapeRef.new(shape: string)

    Condition.add_member(:condition_type, Shapes::ShapeRef.new(shape: ConditionType, required: true, location_name: "ConditionType"))
    Condition.add_member(:condition_key, Shapes::ShapeRef.new(shape: ConditionKey, required: true, location_name: "ConditionKey"))
    Condition.add_member(:condition_value, Shapes::ShapeRef.new(shape: ConditionValue, required: true, location_name: "ConditionValue"))
    Condition.struct_class = Types::Condition

    ConditionParameter.add_member(:condition_key, Shapes::ShapeRef.new(shape: ConditionKey, location_name: "ConditionKey"))
    ConditionParameter.add_member(:condition_value, Shapes::ShapeRef.new(shape: ConditionValue, location_name: "ConditionValue"))
    ConditionParameter.struct_class = Types::ConditionParameter

    ConditionParameters.member = Shapes::ShapeRef.new(shape: ConditionParameter)

    Conditions.add_member(:string_equals, Shapes::ShapeRef.new(shape: ConditionParameters, location_name: "StringEquals"))
    Conditions.add_member(:string_not_equals, Shapes::ShapeRef.new(shape: ConditionParameters, location_name: "StringNotEquals"))
    Conditions.add_member(:string_like, Shapes::ShapeRef.new(shape: ConditionParameters, location_name: "StringLike"))
    Conditions.add_member(:string_not_like, Shapes::ShapeRef.new(shape: ConditionParameters, location_name: "StringNotLike"))
    Conditions.struct_class = Types::Conditions

    ConflictException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "Code"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    ConflictException.add_member(:type, Shapes::ShapeRef.new(shape: string, location_name: "Type"))
    ConflictException.add_member(:context, Shapes::ShapeRef.new(shape: string, location_name: "Context"))
    ConflictException.struct_class = Types::ConflictException

    ControlInputParameter.add_member(:parameter_name, Shapes::ShapeRef.new(shape: ParameterName, location_name: "ParameterName"))
    ControlInputParameter.add_member(:parameter_value, Shapes::ShapeRef.new(shape: ParameterValue, location_name: "ParameterValue"))
    ControlInputParameter.struct_class = Types::ControlInputParameter

    ControlInputParameters.member = Shapes::ShapeRef.new(shape: ControlInputParameter)

    ControlScope.add_member(:compliance_resource_ids, Shapes::ShapeRef.new(shape: ComplianceResourceIdList, location_name: "ComplianceResourceIds"))
    ControlScope.add_member(:compliance_resource_types, Shapes::ShapeRef.new(shape: ResourceTypeList, location_name: "ComplianceResourceTypes"))
    ControlScope.add_member(:tags, Shapes::ShapeRef.new(shape: stringMap, location_name: "Tags"))
    ControlScope.struct_class = Types::ControlScope

    CopyAction.add_member(:lifecycle, Shapes::ShapeRef.new(shape: Lifecycle, location_name: "Lifecycle"))
    CopyAction.add_member(:destination_backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "DestinationBackupVaultArn"))
    CopyAction.struct_class = Types::CopyAction

    CopyActions.member = Shapes::ShapeRef.new(shape: CopyAction)

    CopyJob.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    CopyJob.add_member(:copy_job_id, Shapes::ShapeRef.new(shape: string, location_name: "CopyJobId"))
    CopyJob.add_member(:source_backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "SourceBackupVaultArn"))
    CopyJob.add_member(:source_recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "SourceRecoveryPointArn"))
    CopyJob.add_member(:destination_backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "DestinationBackupVaultArn"))
    CopyJob.add_member(:destination_vault_type, Shapes::ShapeRef.new(shape: string, location_name: "DestinationVaultType"))
    CopyJob.add_member(:destination_vault_lock_state, Shapes::ShapeRef.new(shape: string, location_name: "DestinationVaultLockState"))
    CopyJob.add_member(:destination_recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "DestinationRecoveryPointArn"))
    CopyJob.add_member(:destination_encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "DestinationEncryptionKeyArn"))
    CopyJob.add_member(:destination_recovery_point_lifecycle, Shapes::ShapeRef.new(shape: Lifecycle, location_name: "DestinationRecoveryPointLifecycle"))
    CopyJob.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ResourceArn"))
    CopyJob.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    CopyJob.add_member(:completion_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CompletionDate"))
    CopyJob.add_member(:state, Shapes::ShapeRef.new(shape: CopyJobState, location_name: "State"))
    CopyJob.add_member(:status_message, Shapes::ShapeRef.new(shape: string, location_name: "StatusMessage"))
    CopyJob.add_member(:backup_size_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "BackupSizeInBytes"))
    CopyJob.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "IamRoleArn"))
    CopyJob.add_member(:created_by, Shapes::ShapeRef.new(shape: RecoveryPointCreator, location_name: "CreatedBy"))
    CopyJob.add_member(:created_by_backup_job_id, Shapes::ShapeRef.new(shape: string, location_name: "CreatedByBackupJobId"))
    CopyJob.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    CopyJob.add_member(:parent_job_id, Shapes::ShapeRef.new(shape: string, location_name: "ParentJobId"))
    CopyJob.add_member(:is_parent, Shapes::ShapeRef.new(shape: boolean, location_name: "IsParent"))
    CopyJob.add_member(:composite_member_identifier, Shapes::ShapeRef.new(shape: string, location_name: "CompositeMemberIdentifier"))
    CopyJob.add_member(:number_of_child_jobs, Shapes::ShapeRef.new(shape: Long, location_name: "NumberOfChildJobs"))
    CopyJob.add_member(:child_jobs_in_state, Shapes::ShapeRef.new(shape: CopyJobChildJobsInState, location_name: "ChildJobsInState"))
    CopyJob.add_member(:resource_name, Shapes::ShapeRef.new(shape: string, location_name: "ResourceName"))
    CopyJob.add_member(:message_category, Shapes::ShapeRef.new(shape: string, location_name: "MessageCategory"))
    CopyJob.struct_class = Types::CopyJob

    CopyJobChildJobsInState.key = Shapes::ShapeRef.new(shape: CopyJobState)
    CopyJobChildJobsInState.value = Shapes::ShapeRef.new(shape: Long)

    CopyJobSummary.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "Region"))
    CopyJobSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    CopyJobSummary.add_member(:state, Shapes::ShapeRef.new(shape: CopyJobStatus, location_name: "State"))
    CopyJobSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    CopyJobSummary.add_member(:message_category, Shapes::ShapeRef.new(shape: MessageCategory, location_name: "MessageCategory"))
    CopyJobSummary.add_member(:count, Shapes::ShapeRef.new(shape: integer, location_name: "Count"))
    CopyJobSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "StartTime"))
    CopyJobSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "EndTime"))
    CopyJobSummary.struct_class = Types::CopyJobSummary

    CopyJobSummaryList.member = Shapes::ShapeRef.new(shape: CopyJobSummary)

    CopyJobsList.member = Shapes::ShapeRef.new(shape: CopyJob)

    CreateBackupPlanInput.add_member(:backup_plan, Shapes::ShapeRef.new(shape: BackupPlanInput, required: true, location_name: "BackupPlan"))
    CreateBackupPlanInput.add_member(:backup_plan_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "BackupPlanTags"))
    CreateBackupPlanInput.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: string, location_name: "CreatorRequestId", metadata: {"idempotencyToken" => true}))
    CreateBackupPlanInput.struct_class = Types::CreateBackupPlanInput

    CreateBackupPlanOutput.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupPlanId"))
    CreateBackupPlanOutput.add_member(:backup_plan_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupPlanArn"))
    CreateBackupPlanOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    CreateBackupPlanOutput.add_member(:version_id, Shapes::ShapeRef.new(shape: string, location_name: "VersionId"))
    CreateBackupPlanOutput.add_member(:advanced_backup_settings, Shapes::ShapeRef.new(shape: AdvancedBackupSettings, location_name: "AdvancedBackupSettings"))
    CreateBackupPlanOutput.struct_class = Types::CreateBackupPlanOutput

    CreateBackupSelectionInput.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "backupPlanId"))
    CreateBackupSelectionInput.add_member(:backup_selection, Shapes::ShapeRef.new(shape: BackupSelection, required: true, location_name: "BackupSelection"))
    CreateBackupSelectionInput.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: string, location_name: "CreatorRequestId", metadata: {"idempotencyToken" => true}))
    CreateBackupSelectionInput.struct_class = Types::CreateBackupSelectionInput

    CreateBackupSelectionOutput.add_member(:selection_id, Shapes::ShapeRef.new(shape: string, location_name: "SelectionId"))
    CreateBackupSelectionOutput.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupPlanId"))
    CreateBackupSelectionOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    CreateBackupSelectionOutput.struct_class = Types::CreateBackupSelectionOutput

    CreateBackupVaultInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    CreateBackupVaultInput.add_member(:backup_vault_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "BackupVaultTags"))
    CreateBackupVaultInput.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "EncryptionKeyArn"))
    CreateBackupVaultInput.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: string, location_name: "CreatorRequestId", metadata: {"idempotencyToken" => true}))
    CreateBackupVaultInput.struct_class = Types::CreateBackupVaultInput

    CreateBackupVaultOutput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location_name: "BackupVaultName"))
    CreateBackupVaultOutput.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    CreateBackupVaultOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    CreateBackupVaultOutput.struct_class = Types::CreateBackupVaultOutput

    CreateFrameworkInput.add_member(:framework_name, Shapes::ShapeRef.new(shape: FrameworkName, required: true, location_name: "FrameworkName"))
    CreateFrameworkInput.add_member(:framework_description, Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: "FrameworkDescription"))
    CreateFrameworkInput.add_member(:framework_controls, Shapes::ShapeRef.new(shape: FrameworkControls, required: true, location_name: "FrameworkControls"))
    CreateFrameworkInput.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: string, location_name: "IdempotencyToken", metadata: {"idempotencyToken" => true}))
    CreateFrameworkInput.add_member(:framework_tags, Shapes::ShapeRef.new(shape: stringMap, location_name: "FrameworkTags"))
    CreateFrameworkInput.struct_class = Types::CreateFrameworkInput

    CreateFrameworkOutput.add_member(:framework_name, Shapes::ShapeRef.new(shape: FrameworkName, location_name: "FrameworkName"))
    CreateFrameworkOutput.add_member(:framework_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "FrameworkArn"))
    CreateFrameworkOutput.struct_class = Types::CreateFrameworkOutput

    CreateLegalHoldInput.add_member(:title, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Title"))
    CreateLegalHoldInput.add_member(:description, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Description"))
    CreateLegalHoldInput.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: string, location_name: "IdempotencyToken", metadata: {"idempotencyToken" => true}))
    CreateLegalHoldInput.add_member(:recovery_point_selection, Shapes::ShapeRef.new(shape: RecoveryPointSelection, location_name: "RecoveryPointSelection"))
    CreateLegalHoldInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateLegalHoldInput.struct_class = Types::CreateLegalHoldInput

    CreateLegalHoldOutput.add_member(:title, Shapes::ShapeRef.new(shape: string, location_name: "Title"))
    CreateLegalHoldOutput.add_member(:status, Shapes::ShapeRef.new(shape: LegalHoldStatus, location_name: "Status"))
    CreateLegalHoldOutput.add_member(:description, Shapes::ShapeRef.new(shape: string, location_name: "Description"))
    CreateLegalHoldOutput.add_member(:legal_hold_id, Shapes::ShapeRef.new(shape: string, location_name: "LegalHoldId"))
    CreateLegalHoldOutput.add_member(:legal_hold_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "LegalHoldArn"))
    CreateLegalHoldOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    CreateLegalHoldOutput.add_member(:recovery_point_selection, Shapes::ShapeRef.new(shape: RecoveryPointSelection, location_name: "RecoveryPointSelection"))
    CreateLegalHoldOutput.struct_class = Types::CreateLegalHoldOutput

    CreateLogicallyAirGappedBackupVaultInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    CreateLogicallyAirGappedBackupVaultInput.add_member(:backup_vault_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "BackupVaultTags"))
    CreateLogicallyAirGappedBackupVaultInput.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: string, location_name: "CreatorRequestId", metadata: {"idempotencyToken" => true}))
    CreateLogicallyAirGappedBackupVaultInput.add_member(:min_retention_days, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "MinRetentionDays"))
    CreateLogicallyAirGappedBackupVaultInput.add_member(:max_retention_days, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "MaxRetentionDays"))
    CreateLogicallyAirGappedBackupVaultInput.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "EncryptionKeyArn"))
    CreateLogicallyAirGappedBackupVaultInput.struct_class = Types::CreateLogicallyAirGappedBackupVaultInput

    CreateLogicallyAirGappedBackupVaultOutput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location_name: "BackupVaultName"))
    CreateLogicallyAirGappedBackupVaultOutput.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    CreateLogicallyAirGappedBackupVaultOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    CreateLogicallyAirGappedBackupVaultOutput.add_member(:vault_state, Shapes::ShapeRef.new(shape: VaultState, location_name: "VaultState"))
    CreateLogicallyAirGappedBackupVaultOutput.struct_class = Types::CreateLogicallyAirGappedBackupVaultOutput

    CreateReportPlanInput.add_member(:report_plan_name, Shapes::ShapeRef.new(shape: ReportPlanName, required: true, location_name: "ReportPlanName"))
    CreateReportPlanInput.add_member(:report_plan_description, Shapes::ShapeRef.new(shape: ReportPlanDescription, location_name: "ReportPlanDescription"))
    CreateReportPlanInput.add_member(:report_delivery_channel, Shapes::ShapeRef.new(shape: ReportDeliveryChannel, required: true, location_name: "ReportDeliveryChannel"))
    CreateReportPlanInput.add_member(:report_setting, Shapes::ShapeRef.new(shape: ReportSetting, required: true, location_name: "ReportSetting"))
    CreateReportPlanInput.add_member(:report_plan_tags, Shapes::ShapeRef.new(shape: stringMap, location_name: "ReportPlanTags"))
    CreateReportPlanInput.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: string, location_name: "IdempotencyToken", metadata: {"idempotencyToken" => true}))
    CreateReportPlanInput.struct_class = Types::CreateReportPlanInput

    CreateReportPlanOutput.add_member(:report_plan_name, Shapes::ShapeRef.new(shape: ReportPlanName, location_name: "ReportPlanName"))
    CreateReportPlanOutput.add_member(:report_plan_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ReportPlanArn"))
    CreateReportPlanOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationTime"))
    CreateReportPlanOutput.struct_class = Types::CreateReportPlanOutput

    CreateRestoreAccessBackupVaultInput.add_member(:source_backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "SourceBackupVaultArn"))
    CreateRestoreAccessBackupVaultInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location_name: "BackupVaultName"))
    CreateRestoreAccessBackupVaultInput.add_member(:backup_vault_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "BackupVaultTags"))
    CreateRestoreAccessBackupVaultInput.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: string, location_name: "CreatorRequestId", metadata: {"idempotencyToken" => true}))
    CreateRestoreAccessBackupVaultInput.add_member(:requester_comment, Shapes::ShapeRef.new(shape: RequesterComment, location_name: "RequesterComment"))
    CreateRestoreAccessBackupVaultInput.struct_class = Types::CreateRestoreAccessBackupVaultInput

    CreateRestoreAccessBackupVaultOutput.add_member(:restore_access_backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RestoreAccessBackupVaultArn"))
    CreateRestoreAccessBackupVaultOutput.add_member(:vault_state, Shapes::ShapeRef.new(shape: VaultState, location_name: "VaultState"))
    CreateRestoreAccessBackupVaultOutput.add_member(:restore_access_backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location_name: "RestoreAccessBackupVaultName"))
    CreateRestoreAccessBackupVaultOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    CreateRestoreAccessBackupVaultOutput.struct_class = Types::CreateRestoreAccessBackupVaultOutput

    CreateRestoreTestingPlanInput.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: String, location_name: "CreatorRequestId"))
    CreateRestoreTestingPlanInput.add_member(:restore_testing_plan, Shapes::ShapeRef.new(shape: RestoreTestingPlanForCreate, required: true, location_name: "RestoreTestingPlan"))
    CreateRestoreTestingPlanInput.add_member(:tags, Shapes::ShapeRef.new(shape: SensitiveStringMap, location_name: "Tags"))
    CreateRestoreTestingPlanInput.struct_class = Types::CreateRestoreTestingPlanInput

    CreateRestoreTestingPlanOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    CreateRestoreTestingPlanOutput.add_member(:restore_testing_plan_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RestoreTestingPlanArn"))
    CreateRestoreTestingPlanOutput.add_member(:restore_testing_plan_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RestoreTestingPlanName"))
    CreateRestoreTestingPlanOutput.struct_class = Types::CreateRestoreTestingPlanOutput

    CreateRestoreTestingSelectionInput.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: String, location_name: "CreatorRequestId"))
    CreateRestoreTestingSelectionInput.add_member(:restore_testing_plan_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "RestoreTestingPlanName"))
    CreateRestoreTestingSelectionInput.add_member(:restore_testing_selection, Shapes::ShapeRef.new(shape: RestoreTestingSelectionForCreate, required: true, location_name: "RestoreTestingSelection"))
    CreateRestoreTestingSelectionInput.struct_class = Types::CreateRestoreTestingSelectionInput

    CreateRestoreTestingSelectionOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    CreateRestoreTestingSelectionOutput.add_member(:restore_testing_plan_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RestoreTestingPlanArn"))
    CreateRestoreTestingSelectionOutput.add_member(:restore_testing_plan_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RestoreTestingPlanName"))
    CreateRestoreTestingSelectionOutput.add_member(:restore_testing_selection_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RestoreTestingSelectionName"))
    CreateRestoreTestingSelectionOutput.struct_class = Types::CreateRestoreTestingSelectionOutput

    CreateTieringConfigurationInput.add_member(:tiering_configuration, Shapes::ShapeRef.new(shape: TieringConfigurationInputForCreate, required: true, location_name: "TieringConfiguration"))
    CreateTieringConfigurationInput.add_member(:tiering_configuration_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "TieringConfigurationTags"))
    CreateTieringConfigurationInput.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId", metadata: {"idempotencyToken" => true}))
    CreateTieringConfigurationInput.struct_class = Types::CreateTieringConfigurationInput

    CreateTieringConfigurationOutput.add_member(:tiering_configuration_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "TieringConfigurationArn"))
    CreateTieringConfigurationOutput.add_member(:tiering_configuration_name, Shapes::ShapeRef.new(shape: string, location_name: "TieringConfigurationName"))
    CreateTieringConfigurationOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationTime"))
    CreateTieringConfigurationOutput.struct_class = Types::CreateTieringConfigurationOutput

    DateRange.add_member(:from_date, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "FromDate"))
    DateRange.add_member(:to_date, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "ToDate"))
    DateRange.struct_class = Types::DateRange

    DeleteBackupPlanInput.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "backupPlanId"))
    DeleteBackupPlanInput.struct_class = Types::DeleteBackupPlanInput

    DeleteBackupPlanOutput.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupPlanId"))
    DeleteBackupPlanOutput.add_member(:backup_plan_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupPlanArn"))
    DeleteBackupPlanOutput.add_member(:deletion_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "DeletionDate"))
    DeleteBackupPlanOutput.add_member(:version_id, Shapes::ShapeRef.new(shape: string, location_name: "VersionId"))
    DeleteBackupPlanOutput.struct_class = Types::DeleteBackupPlanOutput

    DeleteBackupSelectionInput.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "backupPlanId"))
    DeleteBackupSelectionInput.add_member(:selection_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "selectionId"))
    DeleteBackupSelectionInput.struct_class = Types::DeleteBackupSelectionInput

    DeleteBackupVaultAccessPolicyInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    DeleteBackupVaultAccessPolicyInput.struct_class = Types::DeleteBackupVaultAccessPolicyInput

    DeleteBackupVaultInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "backupVaultName"))
    DeleteBackupVaultInput.struct_class = Types::DeleteBackupVaultInput

    DeleteBackupVaultLockConfigurationInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    DeleteBackupVaultLockConfigurationInput.struct_class = Types::DeleteBackupVaultLockConfigurationInput

    DeleteBackupVaultNotificationsInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    DeleteBackupVaultNotificationsInput.struct_class = Types::DeleteBackupVaultNotificationsInput

    DeleteFrameworkInput.add_member(:framework_name, Shapes::ShapeRef.new(shape: FrameworkName, required: true, location: "uri", location_name: "frameworkName"))
    DeleteFrameworkInput.struct_class = Types::DeleteFrameworkInput

    DeleteRecoveryPointInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    DeleteRecoveryPointInput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "recoveryPointArn"))
    DeleteRecoveryPointInput.struct_class = Types::DeleteRecoveryPointInput

    DeleteReportPlanInput.add_member(:report_plan_name, Shapes::ShapeRef.new(shape: ReportPlanName, required: true, location: "uri", location_name: "reportPlanName"))
    DeleteReportPlanInput.struct_class = Types::DeleteReportPlanInput

    DeleteRestoreTestingPlanInput.add_member(:restore_testing_plan_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "RestoreTestingPlanName"))
    DeleteRestoreTestingPlanInput.struct_class = Types::DeleteRestoreTestingPlanInput

    DeleteRestoreTestingSelectionInput.add_member(:restore_testing_plan_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "RestoreTestingPlanName"))
    DeleteRestoreTestingSelectionInput.add_member(:restore_testing_selection_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "RestoreTestingSelectionName"))
    DeleteRestoreTestingSelectionInput.struct_class = Types::DeleteRestoreTestingSelectionInput

    DeleteTieringConfigurationInput.add_member(:tiering_configuration_name, Shapes::ShapeRef.new(shape: TieringConfigurationName, required: true, location: "uri", location_name: "tieringConfigurationName"))
    DeleteTieringConfigurationInput.struct_class = Types::DeleteTieringConfigurationInput

    DeleteTieringConfigurationOutput.struct_class = Types::DeleteTieringConfigurationOutput

    DependencyFailureException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "Code"))
    DependencyFailureException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    DependencyFailureException.add_member(:type, Shapes::ShapeRef.new(shape: string, location_name: "Type"))
    DependencyFailureException.add_member(:context, Shapes::ShapeRef.new(shape: string, location_name: "Context"))
    DependencyFailureException.struct_class = Types::DependencyFailureException

    DescribeBackupJobInput.add_member(:backup_job_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "backupJobId"))
    DescribeBackupJobInput.struct_class = Types::DescribeBackupJobInput

    DescribeBackupJobOutput.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    DescribeBackupJobOutput.add_member(:backup_job_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupJobId"))
    DescribeBackupJobOutput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location_name: "BackupVaultName"))
    DescribeBackupJobOutput.add_member(:recovery_point_lifecycle, Shapes::ShapeRef.new(shape: Lifecycle, location_name: "RecoveryPointLifecycle"))
    DescribeBackupJobOutput.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    DescribeBackupJobOutput.add_member(:vault_type, Shapes::ShapeRef.new(shape: string, location_name: "VaultType"))
    DescribeBackupJobOutput.add_member(:vault_lock_state, Shapes::ShapeRef.new(shape: string, location_name: "VaultLockState"))
    DescribeBackupJobOutput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    DescribeBackupJobOutput.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "EncryptionKeyArn"))
    DescribeBackupJobOutput.add_member(:is_encrypted, Shapes::ShapeRef.new(shape: boolean, location_name: "IsEncrypted"))
    DescribeBackupJobOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ResourceArn"))
    DescribeBackupJobOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    DescribeBackupJobOutput.add_member(:completion_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CompletionDate"))
    DescribeBackupJobOutput.add_member(:state, Shapes::ShapeRef.new(shape: BackupJobState, location_name: "State"))
    DescribeBackupJobOutput.add_member(:status_message, Shapes::ShapeRef.new(shape: string, location_name: "StatusMessage"))
    DescribeBackupJobOutput.add_member(:percent_done, Shapes::ShapeRef.new(shape: string, location_name: "PercentDone"))
    DescribeBackupJobOutput.add_member(:backup_size_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "BackupSizeInBytes"))
    DescribeBackupJobOutput.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "IamRoleArn"))
    DescribeBackupJobOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: RecoveryPointCreator, location_name: "CreatedBy"))
    DescribeBackupJobOutput.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    DescribeBackupJobOutput.add_member(:bytes_transferred, Shapes::ShapeRef.new(shape: Long, location_name: "BytesTransferred"))
    DescribeBackupJobOutput.add_member(:expected_completion_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "ExpectedCompletionDate"))
    DescribeBackupJobOutput.add_member(:start_by, Shapes::ShapeRef.new(shape: timestamp, location_name: "StartBy"))
    DescribeBackupJobOutput.add_member(:backup_options, Shapes::ShapeRef.new(shape: BackupOptions, location_name: "BackupOptions"))
    DescribeBackupJobOutput.add_member(:backup_type, Shapes::ShapeRef.new(shape: string, location_name: "BackupType"))
    DescribeBackupJobOutput.add_member(:parent_job_id, Shapes::ShapeRef.new(shape: string, location_name: "ParentJobId"))
    DescribeBackupJobOutput.add_member(:is_parent, Shapes::ShapeRef.new(shape: boolean, location_name: "IsParent"))
    DescribeBackupJobOutput.add_member(:number_of_child_jobs, Shapes::ShapeRef.new(shape: Long, location_name: "NumberOfChildJobs"))
    DescribeBackupJobOutput.add_member(:child_jobs_in_state, Shapes::ShapeRef.new(shape: BackupJobChildJobsInState, location_name: "ChildJobsInState"))
    DescribeBackupJobOutput.add_member(:resource_name, Shapes::ShapeRef.new(shape: string, location_name: "ResourceName"))
    DescribeBackupJobOutput.add_member(:initiation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "InitiationDate"))
    DescribeBackupJobOutput.add_member(:message_category, Shapes::ShapeRef.new(shape: string, location_name: "MessageCategory"))
    DescribeBackupJobOutput.struct_class = Types::DescribeBackupJobOutput

    DescribeBackupVaultInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "backupVaultName"))
    DescribeBackupVaultInput.add_member(:backup_vault_account_id, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "backupVaultAccountId"))
    DescribeBackupVaultInput.struct_class = Types::DescribeBackupVaultInput

    DescribeBackupVaultOutput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: string, location_name: "BackupVaultName"))
    DescribeBackupVaultOutput.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    DescribeBackupVaultOutput.add_member(:vault_type, Shapes::ShapeRef.new(shape: VaultType, location_name: "VaultType"))
    DescribeBackupVaultOutput.add_member(:vault_state, Shapes::ShapeRef.new(shape: VaultState, location_name: "VaultState"))
    DescribeBackupVaultOutput.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "EncryptionKeyArn"))
    DescribeBackupVaultOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    DescribeBackupVaultOutput.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: string, location_name: "CreatorRequestId"))
    DescribeBackupVaultOutput.add_member(:number_of_recovery_points, Shapes::ShapeRef.new(shape: long, location_name: "NumberOfRecoveryPoints"))
    DescribeBackupVaultOutput.add_member(:locked, Shapes::ShapeRef.new(shape: Boolean, location_name: "Locked"))
    DescribeBackupVaultOutput.add_member(:min_retention_days, Shapes::ShapeRef.new(shape: Long, location_name: "MinRetentionDays"))
    DescribeBackupVaultOutput.add_member(:max_retention_days, Shapes::ShapeRef.new(shape: Long, location_name: "MaxRetentionDays"))
    DescribeBackupVaultOutput.add_member(:lock_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "LockDate"))
    DescribeBackupVaultOutput.add_member(:source_backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "SourceBackupVaultArn"))
    DescribeBackupVaultOutput.add_member(:mpa_approval_team_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "MpaApprovalTeamArn"))
    DescribeBackupVaultOutput.add_member(:mpa_session_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "MpaSessionArn"))
    DescribeBackupVaultOutput.add_member(:latest_mpa_approval_team_update, Shapes::ShapeRef.new(shape: LatestMpaApprovalTeamUpdate, location_name: "LatestMpaApprovalTeamUpdate"))
    DescribeBackupVaultOutput.add_member(:encryption_key_type, Shapes::ShapeRef.new(shape: EncryptionKeyType, location_name: "EncryptionKeyType"))
    DescribeBackupVaultOutput.struct_class = Types::DescribeBackupVaultOutput

    DescribeCopyJobInput.add_member(:copy_job_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "copyJobId"))
    DescribeCopyJobInput.struct_class = Types::DescribeCopyJobInput

    DescribeCopyJobOutput.add_member(:copy_job, Shapes::ShapeRef.new(shape: CopyJob, location_name: "CopyJob"))
    DescribeCopyJobOutput.struct_class = Types::DescribeCopyJobOutput

    DescribeFrameworkInput.add_member(:framework_name, Shapes::ShapeRef.new(shape: FrameworkName, required: true, location: "uri", location_name: "frameworkName"))
    DescribeFrameworkInput.struct_class = Types::DescribeFrameworkInput

    DescribeFrameworkOutput.add_member(:framework_name, Shapes::ShapeRef.new(shape: FrameworkName, location_name: "FrameworkName"))
    DescribeFrameworkOutput.add_member(:framework_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "FrameworkArn"))
    DescribeFrameworkOutput.add_member(:framework_description, Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: "FrameworkDescription"))
    DescribeFrameworkOutput.add_member(:framework_controls, Shapes::ShapeRef.new(shape: FrameworkControls, location_name: "FrameworkControls"))
    DescribeFrameworkOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationTime"))
    DescribeFrameworkOutput.add_member(:deployment_status, Shapes::ShapeRef.new(shape: string, location_name: "DeploymentStatus"))
    DescribeFrameworkOutput.add_member(:framework_status, Shapes::ShapeRef.new(shape: string, location_name: "FrameworkStatus"))
    DescribeFrameworkOutput.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: string, location_name: "IdempotencyToken"))
    DescribeFrameworkOutput.struct_class = Types::DescribeFrameworkOutput

    DescribeGlobalSettingsInput.struct_class = Types::DescribeGlobalSettingsInput

    DescribeGlobalSettingsOutput.add_member(:global_settings, Shapes::ShapeRef.new(shape: GlobalSettings, location_name: "GlobalSettings"))
    DescribeGlobalSettingsOutput.add_member(:last_update_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdateTime"))
    DescribeGlobalSettingsOutput.struct_class = Types::DescribeGlobalSettingsOutput

    DescribeProtectedResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    DescribeProtectedResourceInput.struct_class = Types::DescribeProtectedResourceInput

    DescribeProtectedResourceOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ResourceArn"))
    DescribeProtectedResourceOutput.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    DescribeProtectedResourceOutput.add_member(:last_backup_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastBackupTime"))
    DescribeProtectedResourceOutput.add_member(:resource_name, Shapes::ShapeRef.new(shape: string, location_name: "ResourceName"))
    DescribeProtectedResourceOutput.add_member(:last_backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "LastBackupVaultArn"))
    DescribeProtectedResourceOutput.add_member(:last_recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "LastRecoveryPointArn"))
    DescribeProtectedResourceOutput.add_member(:latest_restore_execution_time_minutes, Shapes::ShapeRef.new(shape: Long, location_name: "LatestRestoreExecutionTimeMinutes"))
    DescribeProtectedResourceOutput.add_member(:latest_restore_job_creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "LatestRestoreJobCreationDate"))
    DescribeProtectedResourceOutput.add_member(:latest_restore_recovery_point_creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "LatestRestoreRecoveryPointCreationDate"))
    DescribeProtectedResourceOutput.struct_class = Types::DescribeProtectedResourceOutput

    DescribeRecoveryPointInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    DescribeRecoveryPointInput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "recoveryPointArn"))
    DescribeRecoveryPointInput.add_member(:backup_vault_account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "backupVaultAccountId"))
    DescribeRecoveryPointInput.struct_class = Types::DescribeRecoveryPointInput

    DescribeRecoveryPointOutput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    DescribeRecoveryPointOutput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location_name: "BackupVaultName"))
    DescribeRecoveryPointOutput.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    DescribeRecoveryPointOutput.add_member(:source_backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "SourceBackupVaultArn"))
    DescribeRecoveryPointOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ResourceArn"))
    DescribeRecoveryPointOutput.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    DescribeRecoveryPointOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: RecoveryPointCreator, location_name: "CreatedBy"))
    DescribeRecoveryPointOutput.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "IamRoleArn"))
    DescribeRecoveryPointOutput.add_member(:status, Shapes::ShapeRef.new(shape: RecoveryPointStatus, location_name: "Status"))
    DescribeRecoveryPointOutput.add_member(:status_message, Shapes::ShapeRef.new(shape: string, location_name: "StatusMessage"))
    DescribeRecoveryPointOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    DescribeRecoveryPointOutput.add_member(:initiation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "InitiationDate"))
    DescribeRecoveryPointOutput.add_member(:completion_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CompletionDate"))
    DescribeRecoveryPointOutput.add_member(:backup_size_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "BackupSizeInBytes"))
    DescribeRecoveryPointOutput.add_member(:calculated_lifecycle, Shapes::ShapeRef.new(shape: CalculatedLifecycle, location_name: "CalculatedLifecycle"))
    DescribeRecoveryPointOutput.add_member(:lifecycle, Shapes::ShapeRef.new(shape: Lifecycle, location_name: "Lifecycle"))
    DescribeRecoveryPointOutput.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "EncryptionKeyArn"))
    DescribeRecoveryPointOutput.add_member(:is_encrypted, Shapes::ShapeRef.new(shape: boolean, location_name: "IsEncrypted"))
    DescribeRecoveryPointOutput.add_member(:storage_class, Shapes::ShapeRef.new(shape: StorageClass, location_name: "StorageClass"))
    DescribeRecoveryPointOutput.add_member(:last_restore_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastRestoreTime"))
    DescribeRecoveryPointOutput.add_member(:parent_recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ParentRecoveryPointArn"))
    DescribeRecoveryPointOutput.add_member(:composite_member_identifier, Shapes::ShapeRef.new(shape: string, location_name: "CompositeMemberIdentifier"))
    DescribeRecoveryPointOutput.add_member(:is_parent, Shapes::ShapeRef.new(shape: boolean, location_name: "IsParent"))
    DescribeRecoveryPointOutput.add_member(:resource_name, Shapes::ShapeRef.new(shape: string, location_name: "ResourceName"))
    DescribeRecoveryPointOutput.add_member(:vault_type, Shapes::ShapeRef.new(shape: VaultType, location_name: "VaultType"))
    DescribeRecoveryPointOutput.add_member(:index_status, Shapes::ShapeRef.new(shape: IndexStatus, location_name: "IndexStatus"))
    DescribeRecoveryPointOutput.add_member(:index_status_message, Shapes::ShapeRef.new(shape: string, location_name: "IndexStatusMessage"))
    DescribeRecoveryPointOutput.add_member(:encryption_key_type, Shapes::ShapeRef.new(shape: EncryptionKeyType, location_name: "EncryptionKeyType"))
    DescribeRecoveryPointOutput.struct_class = Types::DescribeRecoveryPointOutput

    DescribeRegionSettingsInput.struct_class = Types::DescribeRegionSettingsInput

    DescribeRegionSettingsOutput.add_member(:resource_type_opt_in_preference, Shapes::ShapeRef.new(shape: ResourceTypeOptInPreference, location_name: "ResourceTypeOptInPreference"))
    DescribeRegionSettingsOutput.add_member(:resource_type_management_preference, Shapes::ShapeRef.new(shape: ResourceTypeManagementPreference, location_name: "ResourceTypeManagementPreference"))
    DescribeRegionSettingsOutput.struct_class = Types::DescribeRegionSettingsOutput

    DescribeReportJobInput.add_member(:report_job_id, Shapes::ShapeRef.new(shape: ReportJobId, required: true, location: "uri", location_name: "reportJobId"))
    DescribeReportJobInput.struct_class = Types::DescribeReportJobInput

    DescribeReportJobOutput.add_member(:report_job, Shapes::ShapeRef.new(shape: ReportJob, location_name: "ReportJob"))
    DescribeReportJobOutput.struct_class = Types::DescribeReportJobOutput

    DescribeReportPlanInput.add_member(:report_plan_name, Shapes::ShapeRef.new(shape: ReportPlanName, required: true, location: "uri", location_name: "reportPlanName"))
    DescribeReportPlanInput.struct_class = Types::DescribeReportPlanInput

    DescribeReportPlanOutput.add_member(:report_plan, Shapes::ShapeRef.new(shape: ReportPlan, location_name: "ReportPlan"))
    DescribeReportPlanOutput.struct_class = Types::DescribeReportPlanOutput

    DescribeRestoreJobInput.add_member(:restore_job_id, Shapes::ShapeRef.new(shape: RestoreJobId, required: true, location: "uri", location_name: "restoreJobId"))
    DescribeRestoreJobInput.struct_class = Types::DescribeRestoreJobInput

    DescribeRestoreJobOutput.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    DescribeRestoreJobOutput.add_member(:restore_job_id, Shapes::ShapeRef.new(shape: string, location_name: "RestoreJobId"))
    DescribeRestoreJobOutput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    DescribeRestoreJobOutput.add_member(:source_resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "SourceResourceArn"))
    DescribeRestoreJobOutput.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    DescribeRestoreJobOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    DescribeRestoreJobOutput.add_member(:completion_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CompletionDate"))
    DescribeRestoreJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: RestoreJobStatus, location_name: "Status"))
    DescribeRestoreJobOutput.add_member(:status_message, Shapes::ShapeRef.new(shape: string, location_name: "StatusMessage"))
    DescribeRestoreJobOutput.add_member(:percent_done, Shapes::ShapeRef.new(shape: string, location_name: "PercentDone"))
    DescribeRestoreJobOutput.add_member(:backup_size_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "BackupSizeInBytes"))
    DescribeRestoreJobOutput.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "IamRoleArn"))
    DescribeRestoreJobOutput.add_member(:expected_completion_time_minutes, Shapes::ShapeRef.new(shape: Long, location_name: "ExpectedCompletionTimeMinutes"))
    DescribeRestoreJobOutput.add_member(:created_resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "CreatedResourceArn"))
    DescribeRestoreJobOutput.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    DescribeRestoreJobOutput.add_member(:recovery_point_creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "RecoveryPointCreationDate"))
    DescribeRestoreJobOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: RestoreJobCreator, location_name: "CreatedBy"))
    DescribeRestoreJobOutput.add_member(:validation_status, Shapes::ShapeRef.new(shape: RestoreValidationStatus, location_name: "ValidationStatus"))
    DescribeRestoreJobOutput.add_member(:validation_status_message, Shapes::ShapeRef.new(shape: string, location_name: "ValidationStatusMessage"))
    DescribeRestoreJobOutput.add_member(:deletion_status, Shapes::ShapeRef.new(shape: RestoreDeletionStatus, location_name: "DeletionStatus"))
    DescribeRestoreJobOutput.add_member(:deletion_status_message, Shapes::ShapeRef.new(shape: string, location_name: "DeletionStatusMessage"))
    DescribeRestoreJobOutput.add_member(:is_parent, Shapes::ShapeRef.new(shape: boolean, location_name: "IsParent"))
    DescribeRestoreJobOutput.add_member(:parent_job_id, Shapes::ShapeRef.new(shape: string, location_name: "ParentJobId"))
    DescribeRestoreJobOutput.struct_class = Types::DescribeRestoreJobOutput

    DisassociateBackupVaultMpaApprovalTeamInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    DisassociateBackupVaultMpaApprovalTeamInput.add_member(:requester_comment, Shapes::ShapeRef.new(shape: RequesterComment, location_name: "RequesterComment"))
    DisassociateBackupVaultMpaApprovalTeamInput.struct_class = Types::DisassociateBackupVaultMpaApprovalTeamInput

    DisassociateRecoveryPointFromParentInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    DisassociateRecoveryPointFromParentInput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "recoveryPointArn"))
    DisassociateRecoveryPointFromParentInput.struct_class = Types::DisassociateRecoveryPointFromParentInput

    DisassociateRecoveryPointInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    DisassociateRecoveryPointInput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "recoveryPointArn"))
    DisassociateRecoveryPointInput.struct_class = Types::DisassociateRecoveryPointInput

    ExportBackupPlanTemplateInput.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "backupPlanId"))
    ExportBackupPlanTemplateInput.struct_class = Types::ExportBackupPlanTemplateInput

    ExportBackupPlanTemplateOutput.add_member(:backup_plan_template_json, Shapes::ShapeRef.new(shape: string, location_name: "BackupPlanTemplateJson"))
    ExportBackupPlanTemplateOutput.struct_class = Types::ExportBackupPlanTemplateOutput

    FormatList.member = Shapes::ShapeRef.new(shape: string)

    Framework.add_member(:framework_name, Shapes::ShapeRef.new(shape: FrameworkName, location_name: "FrameworkName"))
    Framework.add_member(:framework_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "FrameworkArn"))
    Framework.add_member(:framework_description, Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: "FrameworkDescription"))
    Framework.add_member(:number_of_controls, Shapes::ShapeRef.new(shape: integer, location_name: "NumberOfControls"))
    Framework.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationTime"))
    Framework.add_member(:deployment_status, Shapes::ShapeRef.new(shape: string, location_name: "DeploymentStatus"))
    Framework.struct_class = Types::Framework

    FrameworkControl.add_member(:control_name, Shapes::ShapeRef.new(shape: ControlName, required: true, location_name: "ControlName"))
    FrameworkControl.add_member(:control_input_parameters, Shapes::ShapeRef.new(shape: ControlInputParameters, location_name: "ControlInputParameters"))
    FrameworkControl.add_member(:control_scope, Shapes::ShapeRef.new(shape: ControlScope, location_name: "ControlScope"))
    FrameworkControl.struct_class = Types::FrameworkControl

    FrameworkControls.member = Shapes::ShapeRef.new(shape: FrameworkControl)

    FrameworkList.member = Shapes::ShapeRef.new(shape: Framework)

    GetBackupPlanFromJSONInput.add_member(:backup_plan_template_json, Shapes::ShapeRef.new(shape: string, required: true, location_name: "BackupPlanTemplateJson"))
    GetBackupPlanFromJSONInput.struct_class = Types::GetBackupPlanFromJSONInput

    GetBackupPlanFromJSONOutput.add_member(:backup_plan, Shapes::ShapeRef.new(shape: BackupPlan, location_name: "BackupPlan"))
    GetBackupPlanFromJSONOutput.struct_class = Types::GetBackupPlanFromJSONOutput

    GetBackupPlanFromTemplateInput.add_member(:backup_plan_template_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "templateId"))
    GetBackupPlanFromTemplateInput.struct_class = Types::GetBackupPlanFromTemplateInput

    GetBackupPlanFromTemplateOutput.add_member(:backup_plan_document, Shapes::ShapeRef.new(shape: BackupPlan, location_name: "BackupPlanDocument"))
    GetBackupPlanFromTemplateOutput.struct_class = Types::GetBackupPlanFromTemplateOutput

    GetBackupPlanInput.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "backupPlanId"))
    GetBackupPlanInput.add_member(:version_id, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "versionId"))
    GetBackupPlanInput.add_member(:max_scheduled_runs_preview, Shapes::ShapeRef.new(shape: MaxScheduledRunsPreview, location: "querystring", location_name: "MaxScheduledRunsPreview"))
    GetBackupPlanInput.struct_class = Types::GetBackupPlanInput

    GetBackupPlanOutput.add_member(:backup_plan, Shapes::ShapeRef.new(shape: BackupPlan, location_name: "BackupPlan"))
    GetBackupPlanOutput.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupPlanId"))
    GetBackupPlanOutput.add_member(:backup_plan_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupPlanArn"))
    GetBackupPlanOutput.add_member(:version_id, Shapes::ShapeRef.new(shape: string, location_name: "VersionId"))
    GetBackupPlanOutput.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: string, location_name: "CreatorRequestId"))
    GetBackupPlanOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    GetBackupPlanOutput.add_member(:deletion_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "DeletionDate"))
    GetBackupPlanOutput.add_member(:last_execution_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastExecutionDate"))
    GetBackupPlanOutput.add_member(:advanced_backup_settings, Shapes::ShapeRef.new(shape: AdvancedBackupSettings, location_name: "AdvancedBackupSettings"))
    GetBackupPlanOutput.add_member(:scheduled_runs_preview, Shapes::ShapeRef.new(shape: ScheduledRunsPreview, location_name: "ScheduledRunsPreview"))
    GetBackupPlanOutput.struct_class = Types::GetBackupPlanOutput

    GetBackupSelectionInput.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "backupPlanId"))
    GetBackupSelectionInput.add_member(:selection_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "selectionId"))
    GetBackupSelectionInput.struct_class = Types::GetBackupSelectionInput

    GetBackupSelectionOutput.add_member(:backup_selection, Shapes::ShapeRef.new(shape: BackupSelection, location_name: "BackupSelection"))
    GetBackupSelectionOutput.add_member(:selection_id, Shapes::ShapeRef.new(shape: string, location_name: "SelectionId"))
    GetBackupSelectionOutput.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupPlanId"))
    GetBackupSelectionOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    GetBackupSelectionOutput.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: string, location_name: "CreatorRequestId"))
    GetBackupSelectionOutput.struct_class = Types::GetBackupSelectionOutput

    GetBackupVaultAccessPolicyInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    GetBackupVaultAccessPolicyInput.struct_class = Types::GetBackupVaultAccessPolicyInput

    GetBackupVaultAccessPolicyOutput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location_name: "BackupVaultName"))
    GetBackupVaultAccessPolicyOutput.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    GetBackupVaultAccessPolicyOutput.add_member(:policy, Shapes::ShapeRef.new(shape: IAMPolicy, location_name: "Policy"))
    GetBackupVaultAccessPolicyOutput.struct_class = Types::GetBackupVaultAccessPolicyOutput

    GetBackupVaultNotificationsInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    GetBackupVaultNotificationsInput.struct_class = Types::GetBackupVaultNotificationsInput

    GetBackupVaultNotificationsOutput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location_name: "BackupVaultName"))
    GetBackupVaultNotificationsOutput.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    GetBackupVaultNotificationsOutput.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "SNSTopicArn"))
    GetBackupVaultNotificationsOutput.add_member(:backup_vault_events, Shapes::ShapeRef.new(shape: BackupVaultEvents, location_name: "BackupVaultEvents"))
    GetBackupVaultNotificationsOutput.struct_class = Types::GetBackupVaultNotificationsOutput

    GetLegalHoldInput.add_member(:legal_hold_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "legalHoldId"))
    GetLegalHoldInput.struct_class = Types::GetLegalHoldInput

    GetLegalHoldOutput.add_member(:title, Shapes::ShapeRef.new(shape: string, location_name: "Title"))
    GetLegalHoldOutput.add_member(:status, Shapes::ShapeRef.new(shape: LegalHoldStatus, location_name: "Status"))
    GetLegalHoldOutput.add_member(:description, Shapes::ShapeRef.new(shape: string, location_name: "Description"))
    GetLegalHoldOutput.add_member(:cancel_description, Shapes::ShapeRef.new(shape: string, location_name: "CancelDescription"))
    GetLegalHoldOutput.add_member(:legal_hold_id, Shapes::ShapeRef.new(shape: string, location_name: "LegalHoldId"))
    GetLegalHoldOutput.add_member(:legal_hold_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "LegalHoldArn"))
    GetLegalHoldOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    GetLegalHoldOutput.add_member(:cancellation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CancellationDate"))
    GetLegalHoldOutput.add_member(:retain_record_until, Shapes::ShapeRef.new(shape: timestamp, location_name: "RetainRecordUntil"))
    GetLegalHoldOutput.add_member(:recovery_point_selection, Shapes::ShapeRef.new(shape: RecoveryPointSelection, location_name: "RecoveryPointSelection"))
    GetLegalHoldOutput.struct_class = Types::GetLegalHoldOutput

    GetRecoveryPointIndexDetailsInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    GetRecoveryPointIndexDetailsInput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "recoveryPointArn"))
    GetRecoveryPointIndexDetailsInput.struct_class = Types::GetRecoveryPointIndexDetailsInput

    GetRecoveryPointIndexDetailsOutput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    GetRecoveryPointIndexDetailsOutput.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    GetRecoveryPointIndexDetailsOutput.add_member(:source_resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "SourceResourceArn"))
    GetRecoveryPointIndexDetailsOutput.add_member(:index_creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "IndexCreationDate"))
    GetRecoveryPointIndexDetailsOutput.add_member(:index_deletion_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "IndexDeletionDate"))
    GetRecoveryPointIndexDetailsOutput.add_member(:index_completion_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "IndexCompletionDate"))
    GetRecoveryPointIndexDetailsOutput.add_member(:index_status, Shapes::ShapeRef.new(shape: IndexStatus, location_name: "IndexStatus"))
    GetRecoveryPointIndexDetailsOutput.add_member(:index_status_message, Shapes::ShapeRef.new(shape: string, location_name: "IndexStatusMessage"))
    GetRecoveryPointIndexDetailsOutput.add_member(:total_items_indexed, Shapes::ShapeRef.new(shape: Long, location_name: "TotalItemsIndexed"))
    GetRecoveryPointIndexDetailsOutput.struct_class = Types::GetRecoveryPointIndexDetailsOutput

    GetRecoveryPointRestoreMetadataInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    GetRecoveryPointRestoreMetadataInput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "recoveryPointArn"))
    GetRecoveryPointRestoreMetadataInput.add_member(:backup_vault_account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "backupVaultAccountId"))
    GetRecoveryPointRestoreMetadataInput.struct_class = Types::GetRecoveryPointRestoreMetadataInput

    GetRecoveryPointRestoreMetadataOutput.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    GetRecoveryPointRestoreMetadataOutput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    GetRecoveryPointRestoreMetadataOutput.add_member(:restore_metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "RestoreMetadata"))
    GetRecoveryPointRestoreMetadataOutput.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    GetRecoveryPointRestoreMetadataOutput.struct_class = Types::GetRecoveryPointRestoreMetadataOutput

    GetRestoreJobMetadataInput.add_member(:restore_job_id, Shapes::ShapeRef.new(shape: RestoreJobId, required: true, location: "uri", location_name: "restoreJobId"))
    GetRestoreJobMetadataInput.struct_class = Types::GetRestoreJobMetadataInput

    GetRestoreJobMetadataOutput.add_member(:restore_job_id, Shapes::ShapeRef.new(shape: RestoreJobId, location_name: "RestoreJobId"))
    GetRestoreJobMetadataOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    GetRestoreJobMetadataOutput.struct_class = Types::GetRestoreJobMetadataOutput

    GetRestoreTestingInferredMetadataInput.add_member(:backup_vault_account_id, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "BackupVaultAccountId"))
    GetRestoreTestingInferredMetadataInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: String, required: true, location: "querystring", location_name: "BackupVaultName"))
    GetRestoreTestingInferredMetadataInput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "querystring", location_name: "RecoveryPointArn"))
    GetRestoreTestingInferredMetadataInput.struct_class = Types::GetRestoreTestingInferredMetadataInput

    GetRestoreTestingInferredMetadataOutput.add_member(:inferred_metadata, Shapes::ShapeRef.new(shape: stringMap, required: true, location_name: "InferredMetadata"))
    GetRestoreTestingInferredMetadataOutput.struct_class = Types::GetRestoreTestingInferredMetadataOutput

    GetRestoreTestingPlanInput.add_member(:restore_testing_plan_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "RestoreTestingPlanName"))
    GetRestoreTestingPlanInput.struct_class = Types::GetRestoreTestingPlanInput

    GetRestoreTestingPlanOutput.add_member(:restore_testing_plan, Shapes::ShapeRef.new(shape: RestoreTestingPlanForGet, required: true, location_name: "RestoreTestingPlan"))
    GetRestoreTestingPlanOutput.struct_class = Types::GetRestoreTestingPlanOutput

    GetRestoreTestingSelectionInput.add_member(:restore_testing_plan_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "RestoreTestingPlanName"))
    GetRestoreTestingSelectionInput.add_member(:restore_testing_selection_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "RestoreTestingSelectionName"))
    GetRestoreTestingSelectionInput.struct_class = Types::GetRestoreTestingSelectionInput

    GetRestoreTestingSelectionOutput.add_member(:restore_testing_selection, Shapes::ShapeRef.new(shape: RestoreTestingSelectionForGet, required: true, location_name: "RestoreTestingSelection"))
    GetRestoreTestingSelectionOutput.struct_class = Types::GetRestoreTestingSelectionOutput

    GetSupportedResourceTypesOutput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "ResourceTypes"))
    GetSupportedResourceTypesOutput.struct_class = Types::GetSupportedResourceTypesOutput

    GetTieringConfigurationInput.add_member(:tiering_configuration_name, Shapes::ShapeRef.new(shape: TieringConfigurationName, required: true, location: "uri", location_name: "tieringConfigurationName"))
    GetTieringConfigurationInput.struct_class = Types::GetTieringConfigurationInput

    GetTieringConfigurationOutput.add_member(:tiering_configuration, Shapes::ShapeRef.new(shape: TieringConfiguration, location_name: "TieringConfiguration"))
    GetTieringConfigurationOutput.struct_class = Types::GetTieringConfigurationOutput

    GlobalSettings.key = Shapes::ShapeRef.new(shape: GlobalSettingsName)
    GlobalSettings.value = Shapes::ShapeRef.new(shape: GlobalSettingsValue)

    IndexAction.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "ResourceTypes"))
    IndexAction.struct_class = Types::IndexAction

    IndexActions.member = Shapes::ShapeRef.new(shape: IndexAction)

    IndexedRecoveryPoint.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    IndexedRecoveryPoint.add_member(:source_resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "SourceResourceArn"))
    IndexedRecoveryPoint.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "IamRoleArn"))
    IndexedRecoveryPoint.add_member(:backup_creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "BackupCreationDate"))
    IndexedRecoveryPoint.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    IndexedRecoveryPoint.add_member(:index_creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "IndexCreationDate"))
    IndexedRecoveryPoint.add_member(:index_status, Shapes::ShapeRef.new(shape: IndexStatus, location_name: "IndexStatus"))
    IndexedRecoveryPoint.add_member(:index_status_message, Shapes::ShapeRef.new(shape: string, location_name: "IndexStatusMessage"))
    IndexedRecoveryPoint.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    IndexedRecoveryPoint.struct_class = Types::IndexedRecoveryPoint

    IndexedRecoveryPointList.member = Shapes::ShapeRef.new(shape: IndexedRecoveryPoint)

    InvalidParameterValueException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "Code"))
    InvalidParameterValueException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidParameterValueException.add_member(:type, Shapes::ShapeRef.new(shape: string, location_name: "Type"))
    InvalidParameterValueException.add_member(:context, Shapes::ShapeRef.new(shape: string, location_name: "Context"))
    InvalidParameterValueException.struct_class = Types::InvalidParameterValueException

    InvalidRequestException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "Code"))
    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidRequestException.add_member(:type, Shapes::ShapeRef.new(shape: string, location_name: "Type"))
    InvalidRequestException.add_member(:context, Shapes::ShapeRef.new(shape: string, location_name: "Context"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    InvalidResourceStateException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "Code"))
    InvalidResourceStateException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidResourceStateException.add_member(:type, Shapes::ShapeRef.new(shape: string, location_name: "Type"))
    InvalidResourceStateException.add_member(:context, Shapes::ShapeRef.new(shape: string, location_name: "Context"))
    InvalidResourceStateException.struct_class = Types::InvalidResourceStateException

    KeyValue.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Key"))
    KeyValue.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    KeyValue.struct_class = Types::KeyValue

    KeyValueList.member = Shapes::ShapeRef.new(shape: KeyValue)

    LatestMpaApprovalTeamUpdate.add_member(:mpa_session_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "MpaSessionArn"))
    LatestMpaApprovalTeamUpdate.add_member(:status, Shapes::ShapeRef.new(shape: MpaSessionStatus, location_name: "Status"))
    LatestMpaApprovalTeamUpdate.add_member(:status_message, Shapes::ShapeRef.new(shape: string, location_name: "StatusMessage"))
    LatestMpaApprovalTeamUpdate.add_member(:initiation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "InitiationDate"))
    LatestMpaApprovalTeamUpdate.add_member(:expiry_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "ExpiryDate"))
    LatestMpaApprovalTeamUpdate.struct_class = Types::LatestMpaApprovalTeamUpdate

    LatestRevokeRequest.add_member(:mpa_session_arn, Shapes::ShapeRef.new(shape: string, location_name: "MpaSessionArn"))
    LatestRevokeRequest.add_member(:status, Shapes::ShapeRef.new(shape: MpaRevokeSessionStatus, location_name: "Status"))
    LatestRevokeRequest.add_member(:status_message, Shapes::ShapeRef.new(shape: string, location_name: "StatusMessage"))
    LatestRevokeRequest.add_member(:initiation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "InitiationDate"))
    LatestRevokeRequest.add_member(:expiry_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "ExpiryDate"))
    LatestRevokeRequest.struct_class = Types::LatestRevokeRequest

    LegalHold.add_member(:title, Shapes::ShapeRef.new(shape: string, location_name: "Title"))
    LegalHold.add_member(:status, Shapes::ShapeRef.new(shape: LegalHoldStatus, location_name: "Status"))
    LegalHold.add_member(:description, Shapes::ShapeRef.new(shape: string, location_name: "Description"))
    LegalHold.add_member(:legal_hold_id, Shapes::ShapeRef.new(shape: string, location_name: "LegalHoldId"))
    LegalHold.add_member(:legal_hold_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "LegalHoldArn"))
    LegalHold.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    LegalHold.add_member(:cancellation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CancellationDate"))
    LegalHold.struct_class = Types::LegalHold

    LegalHoldsList.member = Shapes::ShapeRef.new(shape: LegalHold)

    Lifecycle.add_member(:move_to_cold_storage_after_days, Shapes::ShapeRef.new(shape: Long, location_name: "MoveToColdStorageAfterDays"))
    Lifecycle.add_member(:delete_after_days, Shapes::ShapeRef.new(shape: Long, location_name: "DeleteAfterDays"))
    Lifecycle.add_member(:opt_in_to_archive_for_supported_resources, Shapes::ShapeRef.new(shape: Boolean, location_name: "OptInToArchiveForSupportedResources"))
    Lifecycle.add_member(:delete_after_event, Shapes::ShapeRef.new(shape: LifecycleDeleteAfterEvent, location_name: "DeleteAfterEvent"))
    Lifecycle.struct_class = Types::Lifecycle

    LimitExceededException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "Code"))
    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    LimitExceededException.add_member(:type, Shapes::ShapeRef.new(shape: string, location_name: "Type"))
    LimitExceededException.add_member(:context, Shapes::ShapeRef.new(shape: string, location_name: "Context"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListBackupJobSummariesInput.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "AccountId"))
    ListBackupJobSummariesInput.add_member(:state, Shapes::ShapeRef.new(shape: BackupJobStatus, location: "querystring", location_name: "State"))
    ListBackupJobSummariesInput.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location: "querystring", location_name: "ResourceType"))
    ListBackupJobSummariesInput.add_member(:message_category, Shapes::ShapeRef.new(shape: MessageCategory, location: "querystring", location_name: "MessageCategory"))
    ListBackupJobSummariesInput.add_member(:aggregation_period, Shapes::ShapeRef.new(shape: AggregationPeriod, location: "querystring", location_name: "AggregationPeriod"))
    ListBackupJobSummariesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListBackupJobSummariesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "NextToken"))
    ListBackupJobSummariesInput.struct_class = Types::ListBackupJobSummariesInput

    ListBackupJobSummariesOutput.add_member(:backup_job_summaries, Shapes::ShapeRef.new(shape: BackupJobSummaryList, location_name: "BackupJobSummaries"))
    ListBackupJobSummariesOutput.add_member(:aggregation_period, Shapes::ShapeRef.new(shape: string, location_name: "AggregationPeriod"))
    ListBackupJobSummariesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListBackupJobSummariesOutput.struct_class = Types::ListBackupJobSummariesOutput

    ListBackupJobsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListBackupJobsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBackupJobsInput.add_member(:by_resource_arn, Shapes::ShapeRef.new(shape: ARN, location: "querystring", location_name: "resourceArn"))
    ListBackupJobsInput.add_member(:by_state, Shapes::ShapeRef.new(shape: BackupJobState, location: "querystring", location_name: "state"))
    ListBackupJobsInput.add_member(:by_backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location: "querystring", location_name: "backupVaultName"))
    ListBackupJobsInput.add_member(:by_created_before, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "createdBefore"))
    ListBackupJobsInput.add_member(:by_created_after, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "createdAfter"))
    ListBackupJobsInput.add_member(:by_resource_type, Shapes::ShapeRef.new(shape: ResourceType, location: "querystring", location_name: "resourceType"))
    ListBackupJobsInput.add_member(:by_account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "accountId"))
    ListBackupJobsInput.add_member(:by_complete_after, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "completeAfter"))
    ListBackupJobsInput.add_member(:by_complete_before, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "completeBefore"))
    ListBackupJobsInput.add_member(:by_parent_job_id, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "parentJobId"))
    ListBackupJobsInput.add_member(:by_message_category, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "messageCategory"))
    ListBackupJobsInput.struct_class = Types::ListBackupJobsInput

    ListBackupJobsOutput.add_member(:backup_jobs, Shapes::ShapeRef.new(shape: BackupJobsList, location_name: "BackupJobs"))
    ListBackupJobsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListBackupJobsOutput.struct_class = Types::ListBackupJobsOutput

    ListBackupPlanTemplatesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListBackupPlanTemplatesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBackupPlanTemplatesInput.struct_class = Types::ListBackupPlanTemplatesInput

    ListBackupPlanTemplatesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListBackupPlanTemplatesOutput.add_member(:backup_plan_templates_list, Shapes::ShapeRef.new(shape: BackupPlanTemplatesList, location_name: "BackupPlanTemplatesList"))
    ListBackupPlanTemplatesOutput.struct_class = Types::ListBackupPlanTemplatesOutput

    ListBackupPlanVersionsInput.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "backupPlanId"))
    ListBackupPlanVersionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListBackupPlanVersionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBackupPlanVersionsInput.struct_class = Types::ListBackupPlanVersionsInput

    ListBackupPlanVersionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListBackupPlanVersionsOutput.add_member(:backup_plan_versions_list, Shapes::ShapeRef.new(shape: BackupPlanVersionsList, location_name: "BackupPlanVersionsList"))
    ListBackupPlanVersionsOutput.struct_class = Types::ListBackupPlanVersionsOutput

    ListBackupPlansInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListBackupPlansInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBackupPlansInput.add_member(:include_deleted, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "includeDeleted"))
    ListBackupPlansInput.struct_class = Types::ListBackupPlansInput

    ListBackupPlansOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListBackupPlansOutput.add_member(:backup_plans_list, Shapes::ShapeRef.new(shape: BackupPlansList, location_name: "BackupPlansList"))
    ListBackupPlansOutput.struct_class = Types::ListBackupPlansOutput

    ListBackupSelectionsInput.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "backupPlanId"))
    ListBackupSelectionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListBackupSelectionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBackupSelectionsInput.struct_class = Types::ListBackupSelectionsInput

    ListBackupSelectionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListBackupSelectionsOutput.add_member(:backup_selections_list, Shapes::ShapeRef.new(shape: BackupSelectionsList, location_name: "BackupSelectionsList"))
    ListBackupSelectionsOutput.struct_class = Types::ListBackupSelectionsOutput

    ListBackupVaultsInput.add_member(:by_vault_type, Shapes::ShapeRef.new(shape: VaultType, location: "querystring", location_name: "vaultType"))
    ListBackupVaultsInput.add_member(:by_shared, Shapes::ShapeRef.new(shape: boolean, location: "querystring", location_name: "shared"))
    ListBackupVaultsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListBackupVaultsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBackupVaultsInput.struct_class = Types::ListBackupVaultsInput

    ListBackupVaultsOutput.add_member(:backup_vault_list, Shapes::ShapeRef.new(shape: BackupVaultList, location_name: "BackupVaultList"))
    ListBackupVaultsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListBackupVaultsOutput.struct_class = Types::ListBackupVaultsOutput

    ListCopyJobSummariesInput.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "AccountId"))
    ListCopyJobSummariesInput.add_member(:state, Shapes::ShapeRef.new(shape: CopyJobStatus, location: "querystring", location_name: "State"))
    ListCopyJobSummariesInput.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location: "querystring", location_name: "ResourceType"))
    ListCopyJobSummariesInput.add_member(:message_category, Shapes::ShapeRef.new(shape: MessageCategory, location: "querystring", location_name: "MessageCategory"))
    ListCopyJobSummariesInput.add_member(:aggregation_period, Shapes::ShapeRef.new(shape: AggregationPeriod, location: "querystring", location_name: "AggregationPeriod"))
    ListCopyJobSummariesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListCopyJobSummariesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "NextToken"))
    ListCopyJobSummariesInput.struct_class = Types::ListCopyJobSummariesInput

    ListCopyJobSummariesOutput.add_member(:copy_job_summaries, Shapes::ShapeRef.new(shape: CopyJobSummaryList, location_name: "CopyJobSummaries"))
    ListCopyJobSummariesOutput.add_member(:aggregation_period, Shapes::ShapeRef.new(shape: string, location_name: "AggregationPeriod"))
    ListCopyJobSummariesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListCopyJobSummariesOutput.struct_class = Types::ListCopyJobSummariesOutput

    ListCopyJobsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListCopyJobsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCopyJobsInput.add_member(:by_resource_arn, Shapes::ShapeRef.new(shape: ARN, location: "querystring", location_name: "resourceArn"))
    ListCopyJobsInput.add_member(:by_state, Shapes::ShapeRef.new(shape: CopyJobState, location: "querystring", location_name: "state"))
    ListCopyJobsInput.add_member(:by_created_before, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "createdBefore"))
    ListCopyJobsInput.add_member(:by_created_after, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "createdAfter"))
    ListCopyJobsInput.add_member(:by_resource_type, Shapes::ShapeRef.new(shape: ResourceType, location: "querystring", location_name: "resourceType"))
    ListCopyJobsInput.add_member(:by_destination_vault_arn, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "destinationVaultArn"))
    ListCopyJobsInput.add_member(:by_account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "accountId"))
    ListCopyJobsInput.add_member(:by_complete_before, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "completeBefore"))
    ListCopyJobsInput.add_member(:by_complete_after, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "completeAfter"))
    ListCopyJobsInput.add_member(:by_parent_job_id, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "parentJobId"))
    ListCopyJobsInput.add_member(:by_message_category, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "messageCategory"))
    ListCopyJobsInput.add_member(:by_source_recovery_point_arn, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "sourceRecoveryPointArn"))
    ListCopyJobsInput.struct_class = Types::ListCopyJobsInput

    ListCopyJobsOutput.add_member(:copy_jobs, Shapes::ShapeRef.new(shape: CopyJobsList, location_name: "CopyJobs"))
    ListCopyJobsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListCopyJobsOutput.struct_class = Types::ListCopyJobsOutput

    ListFrameworksInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxFrameworkInputs, location: "querystring", location_name: "MaxResults"))
    ListFrameworksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "NextToken"))
    ListFrameworksInput.struct_class = Types::ListFrameworksInput

    ListFrameworksOutput.add_member(:frameworks, Shapes::ShapeRef.new(shape: FrameworkList, location_name: "Frameworks"))
    ListFrameworksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListFrameworksOutput.struct_class = Types::ListFrameworksOutput

    ListIndexedRecoveryPointsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListIndexedRecoveryPointsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListIndexedRecoveryPointsInput.add_member(:source_resource_arn, Shapes::ShapeRef.new(shape: ARN, location: "querystring", location_name: "sourceResourceArn"))
    ListIndexedRecoveryPointsInput.add_member(:created_before, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "createdBefore"))
    ListIndexedRecoveryPointsInput.add_member(:created_after, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "createdAfter"))
    ListIndexedRecoveryPointsInput.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location: "querystring", location_name: "resourceType"))
    ListIndexedRecoveryPointsInput.add_member(:index_status, Shapes::ShapeRef.new(shape: IndexStatus, location: "querystring", location_name: "indexStatus"))
    ListIndexedRecoveryPointsInput.struct_class = Types::ListIndexedRecoveryPointsInput

    ListIndexedRecoveryPointsOutput.add_member(:indexed_recovery_points, Shapes::ShapeRef.new(shape: IndexedRecoveryPointList, location_name: "IndexedRecoveryPoints"))
    ListIndexedRecoveryPointsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListIndexedRecoveryPointsOutput.struct_class = Types::ListIndexedRecoveryPointsOutput

    ListLegalHoldsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListLegalHoldsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListLegalHoldsInput.struct_class = Types::ListLegalHoldsInput

    ListLegalHoldsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListLegalHoldsOutput.add_member(:legal_holds, Shapes::ShapeRef.new(shape: LegalHoldsList, location_name: "LegalHolds"))
    ListLegalHoldsOutput.struct_class = Types::ListLegalHoldsOutput

    ListOfTags.member = Shapes::ShapeRef.new(shape: Condition)

    ListProtectedResourcesByBackupVaultInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    ListProtectedResourcesByBackupVaultInput.add_member(:backup_vault_account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "backupVaultAccountId"))
    ListProtectedResourcesByBackupVaultInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListProtectedResourcesByBackupVaultInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProtectedResourcesByBackupVaultInput.struct_class = Types::ListProtectedResourcesByBackupVaultInput

    ListProtectedResourcesByBackupVaultOutput.add_member(:results, Shapes::ShapeRef.new(shape: ProtectedResourcesList, location_name: "Results"))
    ListProtectedResourcesByBackupVaultOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListProtectedResourcesByBackupVaultOutput.struct_class = Types::ListProtectedResourcesByBackupVaultOutput

    ListProtectedResourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListProtectedResourcesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProtectedResourcesInput.struct_class = Types::ListProtectedResourcesInput

    ListProtectedResourcesOutput.add_member(:results, Shapes::ShapeRef.new(shape: ProtectedResourcesList, location_name: "Results"))
    ListProtectedResourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListProtectedResourcesOutput.struct_class = Types::ListProtectedResourcesOutput

    ListRecoveryPointsByBackupVaultInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    ListRecoveryPointsByBackupVaultInput.add_member(:backup_vault_account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "backupVaultAccountId"))
    ListRecoveryPointsByBackupVaultInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListRecoveryPointsByBackupVaultInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_resource_arn, Shapes::ShapeRef.new(shape: ARN, location: "querystring", location_name: "resourceArn"))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_resource_type, Shapes::ShapeRef.new(shape: ResourceType, location: "querystring", location_name: "resourceType"))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_backup_plan_id, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "backupPlanId"))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_created_before, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "createdBefore"))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_created_after, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "createdAfter"))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_parent_recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location: "querystring", location_name: "parentRecoveryPointArn"))
    ListRecoveryPointsByBackupVaultInput.struct_class = Types::ListRecoveryPointsByBackupVaultInput

    ListRecoveryPointsByBackupVaultOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListRecoveryPointsByBackupVaultOutput.add_member(:recovery_points, Shapes::ShapeRef.new(shape: RecoveryPointByBackupVaultList, location_name: "RecoveryPoints"))
    ListRecoveryPointsByBackupVaultOutput.struct_class = Types::ListRecoveryPointsByBackupVaultOutput

    ListRecoveryPointsByLegalHoldInput.add_member(:legal_hold_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "legalHoldId"))
    ListRecoveryPointsByLegalHoldInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListRecoveryPointsByLegalHoldInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRecoveryPointsByLegalHoldInput.struct_class = Types::ListRecoveryPointsByLegalHoldInput

    ListRecoveryPointsByLegalHoldOutput.add_member(:recovery_points, Shapes::ShapeRef.new(shape: RecoveryPointsList, location_name: "RecoveryPoints"))
    ListRecoveryPointsByLegalHoldOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListRecoveryPointsByLegalHoldOutput.struct_class = Types::ListRecoveryPointsByLegalHoldOutput

    ListRecoveryPointsByResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    ListRecoveryPointsByResourceInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListRecoveryPointsByResourceInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRecoveryPointsByResourceInput.add_member(:managed_by_aws_backup_only, Shapes::ShapeRef.new(shape: boolean, location: "querystring", location_name: "managedByAWSBackupOnly"))
    ListRecoveryPointsByResourceInput.struct_class = Types::ListRecoveryPointsByResourceInput

    ListRecoveryPointsByResourceOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListRecoveryPointsByResourceOutput.add_member(:recovery_points, Shapes::ShapeRef.new(shape: RecoveryPointByResourceList, location_name: "RecoveryPoints"))
    ListRecoveryPointsByResourceOutput.struct_class = Types::ListRecoveryPointsByResourceOutput

    ListReportJobsInput.add_member(:by_report_plan_name, Shapes::ShapeRef.new(shape: ReportPlanName, location: "querystring", location_name: "ReportPlanName"))
    ListReportJobsInput.add_member(:by_creation_before, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "CreationBefore"))
    ListReportJobsInput.add_member(:by_creation_after, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "CreationAfter"))
    ListReportJobsInput.add_member(:by_status, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Status"))
    ListReportJobsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListReportJobsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "NextToken"))
    ListReportJobsInput.struct_class = Types::ListReportJobsInput

    ListReportJobsOutput.add_member(:report_jobs, Shapes::ShapeRef.new(shape: ReportJobList, location_name: "ReportJobs"))
    ListReportJobsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListReportJobsOutput.struct_class = Types::ListReportJobsOutput

    ListReportPlansInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListReportPlansInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "NextToken"))
    ListReportPlansInput.struct_class = Types::ListReportPlansInput

    ListReportPlansOutput.add_member(:report_plans, Shapes::ShapeRef.new(shape: ReportPlanList, location_name: "ReportPlans"))
    ListReportPlansOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListReportPlansOutput.struct_class = Types::ListReportPlansOutput

    ListRestoreAccessBackupVaultsInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    ListRestoreAccessBackupVaultsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListRestoreAccessBackupVaultsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRestoreAccessBackupVaultsInput.struct_class = Types::ListRestoreAccessBackupVaultsInput

    ListRestoreAccessBackupVaultsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListRestoreAccessBackupVaultsOutput.add_member(:restore_access_backup_vaults, Shapes::ShapeRef.new(shape: RestoreAccessBackupVaultList, location_name: "RestoreAccessBackupVaults"))
    ListRestoreAccessBackupVaultsOutput.struct_class = Types::ListRestoreAccessBackupVaultsOutput

    ListRestoreJobSummariesInput.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "AccountId"))
    ListRestoreJobSummariesInput.add_member(:state, Shapes::ShapeRef.new(shape: RestoreJobState, location: "querystring", location_name: "State"))
    ListRestoreJobSummariesInput.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location: "querystring", location_name: "ResourceType"))
    ListRestoreJobSummariesInput.add_member(:aggregation_period, Shapes::ShapeRef.new(shape: AggregationPeriod, location: "querystring", location_name: "AggregationPeriod"))
    ListRestoreJobSummariesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListRestoreJobSummariesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "NextToken"))
    ListRestoreJobSummariesInput.struct_class = Types::ListRestoreJobSummariesInput

    ListRestoreJobSummariesOutput.add_member(:restore_job_summaries, Shapes::ShapeRef.new(shape: RestoreJobSummaryList, location_name: "RestoreJobSummaries"))
    ListRestoreJobSummariesOutput.add_member(:aggregation_period, Shapes::ShapeRef.new(shape: string, location_name: "AggregationPeriod"))
    ListRestoreJobSummariesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListRestoreJobSummariesOutput.struct_class = Types::ListRestoreJobSummariesOutput

    ListRestoreJobsByProtectedResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    ListRestoreJobsByProtectedResourceInput.add_member(:by_status, Shapes::ShapeRef.new(shape: RestoreJobStatus, location: "querystring", location_name: "status"))
    ListRestoreJobsByProtectedResourceInput.add_member(:by_recovery_point_creation_date_after, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "recoveryPointCreationDateAfter"))
    ListRestoreJobsByProtectedResourceInput.add_member(:by_recovery_point_creation_date_before, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "recoveryPointCreationDateBefore"))
    ListRestoreJobsByProtectedResourceInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListRestoreJobsByProtectedResourceInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRestoreJobsByProtectedResourceInput.struct_class = Types::ListRestoreJobsByProtectedResourceInput

    ListRestoreJobsByProtectedResourceOutput.add_member(:restore_jobs, Shapes::ShapeRef.new(shape: RestoreJobsList, location_name: "RestoreJobs"))
    ListRestoreJobsByProtectedResourceOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListRestoreJobsByProtectedResourceOutput.struct_class = Types::ListRestoreJobsByProtectedResourceOutput

    ListRestoreJobsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListRestoreJobsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRestoreJobsInput.add_member(:by_account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "accountId"))
    ListRestoreJobsInput.add_member(:by_resource_type, Shapes::ShapeRef.new(shape: ResourceType, location: "querystring", location_name: "resourceType"))
    ListRestoreJobsInput.add_member(:by_created_before, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "createdBefore"))
    ListRestoreJobsInput.add_member(:by_created_after, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "createdAfter"))
    ListRestoreJobsInput.add_member(:by_status, Shapes::ShapeRef.new(shape: RestoreJobStatus, location: "querystring", location_name: "status"))
    ListRestoreJobsInput.add_member(:by_complete_before, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "completeBefore"))
    ListRestoreJobsInput.add_member(:by_complete_after, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "completeAfter"))
    ListRestoreJobsInput.add_member(:by_restore_testing_plan_arn, Shapes::ShapeRef.new(shape: ARN, location: "querystring", location_name: "restoreTestingPlanArn"))
    ListRestoreJobsInput.add_member(:by_parent_job_id, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "parentJobId"))
    ListRestoreJobsInput.struct_class = Types::ListRestoreJobsInput

    ListRestoreJobsOutput.add_member(:restore_jobs, Shapes::ShapeRef.new(shape: RestoreJobsList, location_name: "RestoreJobs"))
    ListRestoreJobsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListRestoreJobsOutput.struct_class = Types::ListRestoreJobsOutput

    ListRestoreTestingPlansInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRestoreTestingPlansInputMaxResultsInteger, location: "querystring", location_name: "MaxResults"))
    ListRestoreTestingPlansInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "NextToken"))
    ListRestoreTestingPlansInput.struct_class = Types::ListRestoreTestingPlansInput

    ListRestoreTestingPlansOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListRestoreTestingPlansOutput.add_member(:restore_testing_plans, Shapes::ShapeRef.new(shape: RestoreTestingPlans, required: true, location_name: "RestoreTestingPlans"))
    ListRestoreTestingPlansOutput.struct_class = Types::ListRestoreTestingPlansOutput

    ListRestoreTestingSelectionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRestoreTestingSelectionsInputMaxResultsInteger, location: "querystring", location_name: "MaxResults"))
    ListRestoreTestingSelectionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "NextToken"))
    ListRestoreTestingSelectionsInput.add_member(:restore_testing_plan_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "RestoreTestingPlanName"))
    ListRestoreTestingSelectionsInput.struct_class = Types::ListRestoreTestingSelectionsInput

    ListRestoreTestingSelectionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListRestoreTestingSelectionsOutput.add_member(:restore_testing_selections, Shapes::ShapeRef.new(shape: RestoreTestingSelections, required: true, location_name: "RestoreTestingSelections"))
    ListRestoreTestingSelectionsOutput.struct_class = Types::ListRestoreTestingSelectionsOutput

    ListTagsInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListTagsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTagsInput.struct_class = Types::ListTagsInput

    ListTagsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListTagsOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsOutput.struct_class = Types::ListTagsOutput

    ListTieringConfigurationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTieringConfigurationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListTieringConfigurationsInput.struct_class = Types::ListTieringConfigurationsInput

    ListTieringConfigurationsOutput.add_member(:tiering_configurations, Shapes::ShapeRef.new(shape: TieringConfigurationsList, location_name: "TieringConfigurations"))
    ListTieringConfigurationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListTieringConfigurationsOutput.struct_class = Types::ListTieringConfigurationsOutput

    Metadata.key = Shapes::ShapeRef.new(shape: MetadataKey)
    Metadata.value = Shapes::ShapeRef.new(shape: MetadataValue)

    MissingParameterValueException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "Code"))
    MissingParameterValueException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    MissingParameterValueException.add_member(:type, Shapes::ShapeRef.new(shape: string, location_name: "Type"))
    MissingParameterValueException.add_member(:context, Shapes::ShapeRef.new(shape: string, location_name: "Context"))
    MissingParameterValueException.struct_class = Types::MissingParameterValueException

    ProtectedResource.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ResourceArn"))
    ProtectedResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ProtectedResource.add_member(:last_backup_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastBackupTime"))
    ProtectedResource.add_member(:resource_name, Shapes::ShapeRef.new(shape: string, location_name: "ResourceName"))
    ProtectedResource.add_member(:last_backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "LastBackupVaultArn"))
    ProtectedResource.add_member(:last_recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "LastRecoveryPointArn"))
    ProtectedResource.struct_class = Types::ProtectedResource

    ProtectedResourceConditions.add_member(:string_equals, Shapes::ShapeRef.new(shape: KeyValueList, location_name: "StringEquals"))
    ProtectedResourceConditions.add_member(:string_not_equals, Shapes::ShapeRef.new(shape: KeyValueList, location_name: "StringNotEquals"))
    ProtectedResourceConditions.struct_class = Types::ProtectedResourceConditions

    ProtectedResourcesList.member = Shapes::ShapeRef.new(shape: ProtectedResource)

    PutBackupVaultAccessPolicyInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    PutBackupVaultAccessPolicyInput.add_member(:policy, Shapes::ShapeRef.new(shape: IAMPolicy, location_name: "Policy"))
    PutBackupVaultAccessPolicyInput.struct_class = Types::PutBackupVaultAccessPolicyInput

    PutBackupVaultLockConfigurationInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    PutBackupVaultLockConfigurationInput.add_member(:min_retention_days, Shapes::ShapeRef.new(shape: Long, location_name: "MinRetentionDays"))
    PutBackupVaultLockConfigurationInput.add_member(:max_retention_days, Shapes::ShapeRef.new(shape: Long, location_name: "MaxRetentionDays"))
    PutBackupVaultLockConfigurationInput.add_member(:changeable_for_days, Shapes::ShapeRef.new(shape: Long, location_name: "ChangeableForDays"))
    PutBackupVaultLockConfigurationInput.struct_class = Types::PutBackupVaultLockConfigurationInput

    PutBackupVaultNotificationsInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    PutBackupVaultNotificationsInput.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "SNSTopicArn"))
    PutBackupVaultNotificationsInput.add_member(:backup_vault_events, Shapes::ShapeRef.new(shape: BackupVaultEvents, required: true, location_name: "BackupVaultEvents"))
    PutBackupVaultNotificationsInput.struct_class = Types::PutBackupVaultNotificationsInput

    PutRestoreValidationResultInput.add_member(:restore_job_id, Shapes::ShapeRef.new(shape: RestoreJobId, required: true, location: "uri", location_name: "restoreJobId"))
    PutRestoreValidationResultInput.add_member(:validation_status, Shapes::ShapeRef.new(shape: RestoreValidationStatus, required: true, location_name: "ValidationStatus"))
    PutRestoreValidationResultInput.add_member(:validation_status_message, Shapes::ShapeRef.new(shape: string, location_name: "ValidationStatusMessage"))
    PutRestoreValidationResultInput.struct_class = Types::PutRestoreValidationResultInput

    RecoveryPointByBackupVault.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    RecoveryPointByBackupVault.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location_name: "BackupVaultName"))
    RecoveryPointByBackupVault.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    RecoveryPointByBackupVault.add_member(:source_backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "SourceBackupVaultArn"))
    RecoveryPointByBackupVault.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ResourceArn"))
    RecoveryPointByBackupVault.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    RecoveryPointByBackupVault.add_member(:created_by, Shapes::ShapeRef.new(shape: RecoveryPointCreator, location_name: "CreatedBy"))
    RecoveryPointByBackupVault.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "IamRoleArn"))
    RecoveryPointByBackupVault.add_member(:status, Shapes::ShapeRef.new(shape: RecoveryPointStatus, location_name: "Status"))
    RecoveryPointByBackupVault.add_member(:status_message, Shapes::ShapeRef.new(shape: string, location_name: "StatusMessage"))
    RecoveryPointByBackupVault.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    RecoveryPointByBackupVault.add_member(:initiation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "InitiationDate"))
    RecoveryPointByBackupVault.add_member(:completion_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CompletionDate"))
    RecoveryPointByBackupVault.add_member(:backup_size_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "BackupSizeInBytes"))
    RecoveryPointByBackupVault.add_member(:calculated_lifecycle, Shapes::ShapeRef.new(shape: CalculatedLifecycle, location_name: "CalculatedLifecycle"))
    RecoveryPointByBackupVault.add_member(:lifecycle, Shapes::ShapeRef.new(shape: Lifecycle, location_name: "Lifecycle"))
    RecoveryPointByBackupVault.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "EncryptionKeyArn"))
    RecoveryPointByBackupVault.add_member(:is_encrypted, Shapes::ShapeRef.new(shape: boolean, location_name: "IsEncrypted"))
    RecoveryPointByBackupVault.add_member(:last_restore_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastRestoreTime"))
    RecoveryPointByBackupVault.add_member(:parent_recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ParentRecoveryPointArn"))
    RecoveryPointByBackupVault.add_member(:composite_member_identifier, Shapes::ShapeRef.new(shape: string, location_name: "CompositeMemberIdentifier"))
    RecoveryPointByBackupVault.add_member(:is_parent, Shapes::ShapeRef.new(shape: boolean, location_name: "IsParent"))
    RecoveryPointByBackupVault.add_member(:resource_name, Shapes::ShapeRef.new(shape: string, location_name: "ResourceName"))
    RecoveryPointByBackupVault.add_member(:vault_type, Shapes::ShapeRef.new(shape: VaultType, location_name: "VaultType"))
    RecoveryPointByBackupVault.add_member(:index_status, Shapes::ShapeRef.new(shape: IndexStatus, location_name: "IndexStatus"))
    RecoveryPointByBackupVault.add_member(:index_status_message, Shapes::ShapeRef.new(shape: string, location_name: "IndexStatusMessage"))
    RecoveryPointByBackupVault.add_member(:encryption_key_type, Shapes::ShapeRef.new(shape: EncryptionKeyType, location_name: "EncryptionKeyType"))
    RecoveryPointByBackupVault.struct_class = Types::RecoveryPointByBackupVault

    RecoveryPointByBackupVaultList.member = Shapes::ShapeRef.new(shape: RecoveryPointByBackupVault)

    RecoveryPointByResource.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    RecoveryPointByResource.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    RecoveryPointByResource.add_member(:status, Shapes::ShapeRef.new(shape: RecoveryPointStatus, location_name: "Status"))
    RecoveryPointByResource.add_member(:status_message, Shapes::ShapeRef.new(shape: string, location_name: "StatusMessage"))
    RecoveryPointByResource.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "EncryptionKeyArn"))
    RecoveryPointByResource.add_member(:backup_size_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "BackupSizeBytes"))
    RecoveryPointByResource.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location_name: "BackupVaultName"))
    RecoveryPointByResource.add_member(:is_parent, Shapes::ShapeRef.new(shape: boolean, location_name: "IsParent"))
    RecoveryPointByResource.add_member(:parent_recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ParentRecoveryPointArn"))
    RecoveryPointByResource.add_member(:resource_name, Shapes::ShapeRef.new(shape: string, location_name: "ResourceName"))
    RecoveryPointByResource.add_member(:vault_type, Shapes::ShapeRef.new(shape: VaultType, location_name: "VaultType"))
    RecoveryPointByResource.add_member(:index_status, Shapes::ShapeRef.new(shape: IndexStatus, location_name: "IndexStatus"))
    RecoveryPointByResource.add_member(:index_status_message, Shapes::ShapeRef.new(shape: string, location_name: "IndexStatusMessage"))
    RecoveryPointByResource.add_member(:encryption_key_type, Shapes::ShapeRef.new(shape: EncryptionKeyType, location_name: "EncryptionKeyType"))
    RecoveryPointByResource.struct_class = Types::RecoveryPointByResource

    RecoveryPointByResourceList.member = Shapes::ShapeRef.new(shape: RecoveryPointByResource)

    RecoveryPointCreator.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupPlanId"))
    RecoveryPointCreator.add_member(:backup_plan_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupPlanArn"))
    RecoveryPointCreator.add_member(:backup_plan_name, Shapes::ShapeRef.new(shape: string, location_name: "BackupPlanName"))
    RecoveryPointCreator.add_member(:backup_plan_version, Shapes::ShapeRef.new(shape: string, location_name: "BackupPlanVersion"))
    RecoveryPointCreator.add_member(:backup_rule_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupRuleId"))
    RecoveryPointCreator.add_member(:backup_rule_name, Shapes::ShapeRef.new(shape: string, location_name: "BackupRuleName"))
    RecoveryPointCreator.add_member(:backup_rule_cron, Shapes::ShapeRef.new(shape: string, location_name: "BackupRuleCron"))
    RecoveryPointCreator.add_member(:backup_rule_timezone, Shapes::ShapeRef.new(shape: string, location_name: "BackupRuleTimezone"))
    RecoveryPointCreator.struct_class = Types::RecoveryPointCreator

    RecoveryPointMember.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    RecoveryPointMember.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ResourceArn"))
    RecoveryPointMember.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    RecoveryPointMember.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location_name: "BackupVaultName"))
    RecoveryPointMember.struct_class = Types::RecoveryPointMember

    RecoveryPointSelection.add_member(:vault_names, Shapes::ShapeRef.new(shape: VaultNames, location_name: "VaultNames"))
    RecoveryPointSelection.add_member(:resource_identifiers, Shapes::ShapeRef.new(shape: ResourceIdentifiers, location_name: "ResourceIdentifiers"))
    RecoveryPointSelection.add_member(:date_range, Shapes::ShapeRef.new(shape: DateRange, location_name: "DateRange"))
    RecoveryPointSelection.struct_class = Types::RecoveryPointSelection

    RecoveryPointsList.member = Shapes::ShapeRef.new(shape: RecoveryPointMember)

    ReportDeliveryChannel.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "S3BucketName"))
    ReportDeliveryChannel.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: string, location_name: "S3KeyPrefix"))
    ReportDeliveryChannel.add_member(:formats, Shapes::ShapeRef.new(shape: FormatList, location_name: "Formats"))
    ReportDeliveryChannel.struct_class = Types::ReportDeliveryChannel

    ReportDestination.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: string, location_name: "S3BucketName"))
    ReportDestination.add_member(:s3_keys, Shapes::ShapeRef.new(shape: stringList, location_name: "S3Keys"))
    ReportDestination.struct_class = Types::ReportDestination

    ReportJob.add_member(:report_job_id, Shapes::ShapeRef.new(shape: ReportJobId, location_name: "ReportJobId"))
    ReportJob.add_member(:report_plan_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ReportPlanArn"))
    ReportJob.add_member(:report_template, Shapes::ShapeRef.new(shape: string, location_name: "ReportTemplate"))
    ReportJob.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationTime"))
    ReportJob.add_member(:completion_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "CompletionTime"))
    ReportJob.add_member(:status, Shapes::ShapeRef.new(shape: string, location_name: "Status"))
    ReportJob.add_member(:status_message, Shapes::ShapeRef.new(shape: string, location_name: "StatusMessage"))
    ReportJob.add_member(:report_destination, Shapes::ShapeRef.new(shape: ReportDestination, location_name: "ReportDestination"))
    ReportJob.struct_class = Types::ReportJob

    ReportJobList.member = Shapes::ShapeRef.new(shape: ReportJob)

    ReportPlan.add_member(:report_plan_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ReportPlanArn"))
    ReportPlan.add_member(:report_plan_name, Shapes::ShapeRef.new(shape: ReportPlanName, location_name: "ReportPlanName"))
    ReportPlan.add_member(:report_plan_description, Shapes::ShapeRef.new(shape: ReportPlanDescription, location_name: "ReportPlanDescription"))
    ReportPlan.add_member(:report_setting, Shapes::ShapeRef.new(shape: ReportSetting, location_name: "ReportSetting"))
    ReportPlan.add_member(:report_delivery_channel, Shapes::ShapeRef.new(shape: ReportDeliveryChannel, location_name: "ReportDeliveryChannel"))
    ReportPlan.add_member(:deployment_status, Shapes::ShapeRef.new(shape: string, location_name: "DeploymentStatus"))
    ReportPlan.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationTime"))
    ReportPlan.add_member(:last_attempted_execution_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastAttemptedExecutionTime"))
    ReportPlan.add_member(:last_successful_execution_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastSuccessfulExecutionTime"))
    ReportPlan.struct_class = Types::ReportPlan

    ReportPlanList.member = Shapes::ShapeRef.new(shape: ReportPlan)

    ReportSetting.add_member(:report_template, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ReportTemplate"))
    ReportSetting.add_member(:framework_arns, Shapes::ShapeRef.new(shape: stringList, location_name: "FrameworkArns"))
    ReportSetting.add_member(:number_of_frameworks, Shapes::ShapeRef.new(shape: integer, location_name: "NumberOfFrameworks"))
    ReportSetting.add_member(:accounts, Shapes::ShapeRef.new(shape: stringList, location_name: "Accounts"))
    ReportSetting.add_member(:organization_units, Shapes::ShapeRef.new(shape: stringList, location_name: "OrganizationUnits"))
    ReportSetting.add_member(:regions, Shapes::ShapeRef.new(shape: stringList, location_name: "Regions"))
    ReportSetting.struct_class = Types::ReportSetting

    ResourceArns.member = Shapes::ShapeRef.new(shape: ARN)

    ResourceIdentifiers.member = Shapes::ShapeRef.new(shape: string)

    ResourceNotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "Code"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    ResourceNotFoundException.add_member(:type, Shapes::ShapeRef.new(shape: string, location_name: "Type"))
    ResourceNotFoundException.add_member(:context, Shapes::ShapeRef.new(shape: string, location_name: "Context"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceSelection.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceArns, required: true, location_name: "Resources"))
    ResourceSelection.add_member(:tiering_down_settings_in_days, Shapes::ShapeRef.new(shape: TieringDownSettingsInDays, required: true, location_name: "TieringDownSettingsInDays"))
    ResourceSelection.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    ResourceSelection.struct_class = Types::ResourceSelection

    ResourceSelections.member = Shapes::ShapeRef.new(shape: ResourceSelection)

    ResourceTypeList.member = Shapes::ShapeRef.new(shape: ARN)

    ResourceTypeManagementPreference.key = Shapes::ShapeRef.new(shape: ResourceType)
    ResourceTypeManagementPreference.value = Shapes::ShapeRef.new(shape: IsEnabled)

    ResourceTypeOptInPreference.key = Shapes::ShapeRef.new(shape: ResourceType)
    ResourceTypeOptInPreference.value = Shapes::ShapeRef.new(shape: IsEnabled)

    ResourceTypes.member = Shapes::ShapeRef.new(shape: ResourceType)

    RestoreAccessBackupVaultList.member = Shapes::ShapeRef.new(shape: RestoreAccessBackupVaultListMember)

    RestoreAccessBackupVaultListMember.add_member(:restore_access_backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RestoreAccessBackupVaultArn"))
    RestoreAccessBackupVaultListMember.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    RestoreAccessBackupVaultListMember.add_member(:approval_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "ApprovalDate"))
    RestoreAccessBackupVaultListMember.add_member(:vault_state, Shapes::ShapeRef.new(shape: VaultState, location_name: "VaultState"))
    RestoreAccessBackupVaultListMember.add_member(:latest_revoke_request, Shapes::ShapeRef.new(shape: LatestRevokeRequest, location_name: "LatestRevokeRequest"))
    RestoreAccessBackupVaultListMember.struct_class = Types::RestoreAccessBackupVaultListMember

    RestoreJobCreator.add_member(:restore_testing_plan_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RestoreTestingPlanArn"))
    RestoreJobCreator.struct_class = Types::RestoreJobCreator

    RestoreJobSummary.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "Region"))
    RestoreJobSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    RestoreJobSummary.add_member(:state, Shapes::ShapeRef.new(shape: RestoreJobState, location_name: "State"))
    RestoreJobSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    RestoreJobSummary.add_member(:count, Shapes::ShapeRef.new(shape: integer, location_name: "Count"))
    RestoreJobSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "StartTime"))
    RestoreJobSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "EndTime"))
    RestoreJobSummary.struct_class = Types::RestoreJobSummary

    RestoreJobSummaryList.member = Shapes::ShapeRef.new(shape: RestoreJobSummary)

    RestoreJobsList.member = Shapes::ShapeRef.new(shape: RestoreJobsListMember)

    RestoreJobsListMember.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    RestoreJobsListMember.add_member(:restore_job_id, Shapes::ShapeRef.new(shape: string, location_name: "RestoreJobId"))
    RestoreJobsListMember.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    RestoreJobsListMember.add_member(:source_resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "SourceResourceArn"))
    RestoreJobsListMember.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    RestoreJobsListMember.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    RestoreJobsListMember.add_member(:completion_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CompletionDate"))
    RestoreJobsListMember.add_member(:status, Shapes::ShapeRef.new(shape: RestoreJobStatus, location_name: "Status"))
    RestoreJobsListMember.add_member(:status_message, Shapes::ShapeRef.new(shape: string, location_name: "StatusMessage"))
    RestoreJobsListMember.add_member(:percent_done, Shapes::ShapeRef.new(shape: string, location_name: "PercentDone"))
    RestoreJobsListMember.add_member(:backup_size_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "BackupSizeInBytes"))
    RestoreJobsListMember.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "IamRoleArn"))
    RestoreJobsListMember.add_member(:expected_completion_time_minutes, Shapes::ShapeRef.new(shape: Long, location_name: "ExpectedCompletionTimeMinutes"))
    RestoreJobsListMember.add_member(:created_resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "CreatedResourceArn"))
    RestoreJobsListMember.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    RestoreJobsListMember.add_member(:recovery_point_creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "RecoveryPointCreationDate"))
    RestoreJobsListMember.add_member(:is_parent, Shapes::ShapeRef.new(shape: boolean, location_name: "IsParent"))
    RestoreJobsListMember.add_member(:parent_job_id, Shapes::ShapeRef.new(shape: string, location_name: "ParentJobId"))
    RestoreJobsListMember.add_member(:created_by, Shapes::ShapeRef.new(shape: RestoreJobCreator, location_name: "CreatedBy"))
    RestoreJobsListMember.add_member(:validation_status, Shapes::ShapeRef.new(shape: RestoreValidationStatus, location_name: "ValidationStatus"))
    RestoreJobsListMember.add_member(:validation_status_message, Shapes::ShapeRef.new(shape: string, location_name: "ValidationStatusMessage"))
    RestoreJobsListMember.add_member(:deletion_status, Shapes::ShapeRef.new(shape: RestoreDeletionStatus, location_name: "DeletionStatus"))
    RestoreJobsListMember.add_member(:deletion_status_message, Shapes::ShapeRef.new(shape: string, location_name: "DeletionStatusMessage"))
    RestoreJobsListMember.struct_class = Types::RestoreJobsListMember

    RestoreTestingPlanForCreate.add_member(:recovery_point_selection, Shapes::ShapeRef.new(shape: RestoreTestingRecoveryPointSelection, required: true, location_name: "RecoveryPointSelection"))
    RestoreTestingPlanForCreate.add_member(:restore_testing_plan_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RestoreTestingPlanName"))
    RestoreTestingPlanForCreate.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ScheduleExpression"))
    RestoreTestingPlanForCreate.add_member(:schedule_expression_timezone, Shapes::ShapeRef.new(shape: String, location_name: "ScheduleExpressionTimezone"))
    RestoreTestingPlanForCreate.add_member(:start_window_hours, Shapes::ShapeRef.new(shape: integer, location_name: "StartWindowHours"))
    RestoreTestingPlanForCreate.struct_class = Types::RestoreTestingPlanForCreate

    RestoreTestingPlanForGet.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    RestoreTestingPlanForGet.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: String, location_name: "CreatorRequestId"))
    RestoreTestingPlanForGet.add_member(:last_execution_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastExecutionTime"))
    RestoreTestingPlanForGet.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdateTime"))
    RestoreTestingPlanForGet.add_member(:recovery_point_selection, Shapes::ShapeRef.new(shape: RestoreTestingRecoveryPointSelection, required: true, location_name: "RecoveryPointSelection"))
    RestoreTestingPlanForGet.add_member(:restore_testing_plan_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RestoreTestingPlanArn"))
    RestoreTestingPlanForGet.add_member(:restore_testing_plan_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RestoreTestingPlanName"))
    RestoreTestingPlanForGet.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ScheduleExpression"))
    RestoreTestingPlanForGet.add_member(:schedule_expression_timezone, Shapes::ShapeRef.new(shape: String, location_name: "ScheduleExpressionTimezone"))
    RestoreTestingPlanForGet.add_member(:start_window_hours, Shapes::ShapeRef.new(shape: integer, location_name: "StartWindowHours"))
    RestoreTestingPlanForGet.struct_class = Types::RestoreTestingPlanForGet

    RestoreTestingPlanForList.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    RestoreTestingPlanForList.add_member(:last_execution_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastExecutionTime"))
    RestoreTestingPlanForList.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdateTime"))
    RestoreTestingPlanForList.add_member(:restore_testing_plan_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RestoreTestingPlanArn"))
    RestoreTestingPlanForList.add_member(:restore_testing_plan_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RestoreTestingPlanName"))
    RestoreTestingPlanForList.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ScheduleExpression"))
    RestoreTestingPlanForList.add_member(:schedule_expression_timezone, Shapes::ShapeRef.new(shape: String, location_name: "ScheduleExpressionTimezone"))
    RestoreTestingPlanForList.add_member(:start_window_hours, Shapes::ShapeRef.new(shape: integer, location_name: "StartWindowHours"))
    RestoreTestingPlanForList.struct_class = Types::RestoreTestingPlanForList

    RestoreTestingPlanForUpdate.add_member(:recovery_point_selection, Shapes::ShapeRef.new(shape: RestoreTestingRecoveryPointSelection, location_name: "RecoveryPointSelection"))
    RestoreTestingPlanForUpdate.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: String, location_name: "ScheduleExpression"))
    RestoreTestingPlanForUpdate.add_member(:schedule_expression_timezone, Shapes::ShapeRef.new(shape: String, location_name: "ScheduleExpressionTimezone"))
    RestoreTestingPlanForUpdate.add_member(:start_window_hours, Shapes::ShapeRef.new(shape: integer, location_name: "StartWindowHours"))
    RestoreTestingPlanForUpdate.struct_class = Types::RestoreTestingPlanForUpdate

    RestoreTestingPlans.member = Shapes::ShapeRef.new(shape: RestoreTestingPlanForList)

    RestoreTestingRecoveryPointSelection.add_member(:algorithm, Shapes::ShapeRef.new(shape: RestoreTestingRecoveryPointSelectionAlgorithm, location_name: "Algorithm"))
    RestoreTestingRecoveryPointSelection.add_member(:exclude_vaults, Shapes::ShapeRef.new(shape: stringList, location_name: "ExcludeVaults"))
    RestoreTestingRecoveryPointSelection.add_member(:include_vaults, Shapes::ShapeRef.new(shape: stringList, location_name: "IncludeVaults"))
    RestoreTestingRecoveryPointSelection.add_member(:recovery_point_types, Shapes::ShapeRef.new(shape: RestoreTestingRecoveryPointTypeList, location_name: "RecoveryPointTypes"))
    RestoreTestingRecoveryPointSelection.add_member(:selection_window_days, Shapes::ShapeRef.new(shape: integer, location_name: "SelectionWindowDays"))
    RestoreTestingRecoveryPointSelection.struct_class = Types::RestoreTestingRecoveryPointSelection

    RestoreTestingRecoveryPointTypeList.member = Shapes::ShapeRef.new(shape: RestoreTestingRecoveryPointType)

    RestoreTestingSelectionForCreate.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "IamRoleArn"))
    RestoreTestingSelectionForCreate.add_member(:protected_resource_arns, Shapes::ShapeRef.new(shape: stringList, location_name: "ProtectedResourceArns"))
    RestoreTestingSelectionForCreate.add_member(:protected_resource_conditions, Shapes::ShapeRef.new(shape: ProtectedResourceConditions, location_name: "ProtectedResourceConditions"))
    RestoreTestingSelectionForCreate.add_member(:protected_resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ProtectedResourceType"))
    RestoreTestingSelectionForCreate.add_member(:restore_metadata_overrides, Shapes::ShapeRef.new(shape: SensitiveStringMap, location_name: "RestoreMetadataOverrides"))
    RestoreTestingSelectionForCreate.add_member(:restore_testing_selection_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RestoreTestingSelectionName"))
    RestoreTestingSelectionForCreate.add_member(:validation_window_hours, Shapes::ShapeRef.new(shape: integer, location_name: "ValidationWindowHours"))
    RestoreTestingSelectionForCreate.struct_class = Types::RestoreTestingSelectionForCreate

    RestoreTestingSelectionForGet.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    RestoreTestingSelectionForGet.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: String, location_name: "CreatorRequestId"))
    RestoreTestingSelectionForGet.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "IamRoleArn"))
    RestoreTestingSelectionForGet.add_member(:protected_resource_arns, Shapes::ShapeRef.new(shape: stringList, location_name: "ProtectedResourceArns"))
    RestoreTestingSelectionForGet.add_member(:protected_resource_conditions, Shapes::ShapeRef.new(shape: ProtectedResourceConditions, location_name: "ProtectedResourceConditions"))
    RestoreTestingSelectionForGet.add_member(:protected_resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ProtectedResourceType"))
    RestoreTestingSelectionForGet.add_member(:restore_metadata_overrides, Shapes::ShapeRef.new(shape: SensitiveStringMap, location_name: "RestoreMetadataOverrides"))
    RestoreTestingSelectionForGet.add_member(:restore_testing_plan_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RestoreTestingPlanName"))
    RestoreTestingSelectionForGet.add_member(:restore_testing_selection_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RestoreTestingSelectionName"))
    RestoreTestingSelectionForGet.add_member(:validation_window_hours, Shapes::ShapeRef.new(shape: integer, location_name: "ValidationWindowHours"))
    RestoreTestingSelectionForGet.struct_class = Types::RestoreTestingSelectionForGet

    RestoreTestingSelectionForList.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    RestoreTestingSelectionForList.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "IamRoleArn"))
    RestoreTestingSelectionForList.add_member(:protected_resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ProtectedResourceType"))
    RestoreTestingSelectionForList.add_member(:restore_testing_plan_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RestoreTestingPlanName"))
    RestoreTestingSelectionForList.add_member(:restore_testing_selection_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RestoreTestingSelectionName"))
    RestoreTestingSelectionForList.add_member(:validation_window_hours, Shapes::ShapeRef.new(shape: integer, location_name: "ValidationWindowHours"))
    RestoreTestingSelectionForList.struct_class = Types::RestoreTestingSelectionForList

    RestoreTestingSelectionForUpdate.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "IamRoleArn"))
    RestoreTestingSelectionForUpdate.add_member(:protected_resource_arns, Shapes::ShapeRef.new(shape: stringList, location_name: "ProtectedResourceArns"))
    RestoreTestingSelectionForUpdate.add_member(:protected_resource_conditions, Shapes::ShapeRef.new(shape: ProtectedResourceConditions, location_name: "ProtectedResourceConditions"))
    RestoreTestingSelectionForUpdate.add_member(:restore_metadata_overrides, Shapes::ShapeRef.new(shape: SensitiveStringMap, location_name: "RestoreMetadataOverrides"))
    RestoreTestingSelectionForUpdate.add_member(:validation_window_hours, Shapes::ShapeRef.new(shape: integer, location_name: "ValidationWindowHours"))
    RestoreTestingSelectionForUpdate.struct_class = Types::RestoreTestingSelectionForUpdate

    RestoreTestingSelections.member = Shapes::ShapeRef.new(shape: RestoreTestingSelectionForList)

    RevokeRestoreAccessBackupVaultInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    RevokeRestoreAccessBackupVaultInput.add_member(:restore_access_backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "restoreAccessBackupVaultArn"))
    RevokeRestoreAccessBackupVaultInput.add_member(:requester_comment, Shapes::ShapeRef.new(shape: RequesterComment, location: "querystring", location_name: "requesterComment"))
    RevokeRestoreAccessBackupVaultInput.struct_class = Types::RevokeRestoreAccessBackupVaultInput

    ScheduledPlanExecutionMember.add_member(:execution_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "ExecutionTime"))
    ScheduledPlanExecutionMember.add_member(:rule_id, Shapes::ShapeRef.new(shape: string, location_name: "RuleId"))
    ScheduledPlanExecutionMember.add_member(:rule_execution_type, Shapes::ShapeRef.new(shape: RuleExecutionType, location_name: "RuleExecutionType"))
    ScheduledPlanExecutionMember.struct_class = Types::ScheduledPlanExecutionMember

    ScheduledRunsPreview.member = Shapes::ShapeRef.new(shape: ScheduledPlanExecutionMember)

    SensitiveStringMap.key = Shapes::ShapeRef.new(shape: String)
    SensitiveStringMap.value = Shapes::ShapeRef.new(shape: String)

    ServiceUnavailableException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "Code"))
    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    ServiceUnavailableException.add_member(:type, Shapes::ShapeRef.new(shape: string, location_name: "Type"))
    ServiceUnavailableException.add_member(:context, Shapes::ShapeRef.new(shape: string, location_name: "Context"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StartBackupJobInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location_name: "BackupVaultName"))
    StartBackupJobInput.add_member(:logically_air_gapped_backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "LogicallyAirGappedBackupVaultArn"))
    StartBackupJobInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "ResourceArn"))
    StartBackupJobInput.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, required: true, location_name: "IamRoleArn"))
    StartBackupJobInput.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: string, location_name: "IdempotencyToken", metadata: {"idempotencyToken" => true}))
    StartBackupJobInput.add_member(:start_window_minutes, Shapes::ShapeRef.new(shape: WindowMinutes, location_name: "StartWindowMinutes"))
    StartBackupJobInput.add_member(:complete_window_minutes, Shapes::ShapeRef.new(shape: WindowMinutes, location_name: "CompleteWindowMinutes"))
    StartBackupJobInput.add_member(:lifecycle, Shapes::ShapeRef.new(shape: Lifecycle, location_name: "Lifecycle"))
    StartBackupJobInput.add_member(:recovery_point_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "RecoveryPointTags"))
    StartBackupJobInput.add_member(:backup_options, Shapes::ShapeRef.new(shape: BackupOptions, location_name: "BackupOptions"))
    StartBackupJobInput.add_member(:index, Shapes::ShapeRef.new(shape: Index, location_name: "Index"))
    StartBackupJobInput.struct_class = Types::StartBackupJobInput

    StartBackupJobOutput.add_member(:backup_job_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupJobId"))
    StartBackupJobOutput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    StartBackupJobOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    StartBackupJobOutput.add_member(:is_parent, Shapes::ShapeRef.new(shape: boolean, location_name: "IsParent"))
    StartBackupJobOutput.struct_class = Types::StartBackupJobOutput

    StartCopyJobInput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "RecoveryPointArn"))
    StartCopyJobInput.add_member(:source_backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location_name: "SourceBackupVaultName"))
    StartCopyJobInput.add_member(:destination_backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "DestinationBackupVaultArn"))
    StartCopyJobInput.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, required: true, location_name: "IamRoleArn"))
    StartCopyJobInput.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: string, location_name: "IdempotencyToken", metadata: {"idempotencyToken" => true}))
    StartCopyJobInput.add_member(:lifecycle, Shapes::ShapeRef.new(shape: Lifecycle, location_name: "Lifecycle"))
    StartCopyJobInput.struct_class = Types::StartCopyJobInput

    StartCopyJobOutput.add_member(:copy_job_id, Shapes::ShapeRef.new(shape: string, location_name: "CopyJobId"))
    StartCopyJobOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    StartCopyJobOutput.add_member(:is_parent, Shapes::ShapeRef.new(shape: boolean, location_name: "IsParent"))
    StartCopyJobOutput.struct_class = Types::StartCopyJobOutput

    StartReportJobInput.add_member(:report_plan_name, Shapes::ShapeRef.new(shape: ReportPlanName, required: true, location: "uri", location_name: "reportPlanName"))
    StartReportJobInput.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: string, location_name: "IdempotencyToken", metadata: {"idempotencyToken" => true}))
    StartReportJobInput.struct_class = Types::StartReportJobInput

    StartReportJobOutput.add_member(:report_job_id, Shapes::ShapeRef.new(shape: ReportJobId, location_name: "ReportJobId"))
    StartReportJobOutput.struct_class = Types::StartReportJobOutput

    StartRestoreJobInput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "RecoveryPointArn"))
    StartRestoreJobInput.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, required: true, location_name: "Metadata"))
    StartRestoreJobInput.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "IamRoleArn"))
    StartRestoreJobInput.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: string, location_name: "IdempotencyToken", metadata: {"idempotencyToken" => true}))
    StartRestoreJobInput.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    StartRestoreJobInput.add_member(:copy_source_tags_to_restored_resource, Shapes::ShapeRef.new(shape: boolean, location_name: "CopySourceTagsToRestoredResource"))
    StartRestoreJobInput.struct_class = Types::StartRestoreJobInput

    StartRestoreJobOutput.add_member(:restore_job_id, Shapes::ShapeRef.new(shape: RestoreJobId, location_name: "RestoreJobId"))
    StartRestoreJobOutput.struct_class = Types::StartRestoreJobOutput

    StopBackupJobInput.add_member(:backup_job_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "backupJobId"))
    StopBackupJobInput.struct_class = Types::StopBackupJobInput

    TagKeyList.member = Shapes::ShapeRef.new(shape: string)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    TieringConfiguration.add_member(:tiering_configuration_name, Shapes::ShapeRef.new(shape: TieringConfigurationName, required: true, location_name: "TieringConfigurationName"))
    TieringConfiguration.add_member(:tiering_configuration_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "TieringConfigurationArn"))
    TieringConfiguration.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultNameOrWildcard, required: true, location_name: "BackupVaultName"))
    TieringConfiguration.add_member(:resource_selection, Shapes::ShapeRef.new(shape: ResourceSelections, required: true, location_name: "ResourceSelection"))
    TieringConfiguration.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId"))
    TieringConfiguration.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationTime"))
    TieringConfiguration.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedTime"))
    TieringConfiguration.struct_class = Types::TieringConfiguration

    TieringConfigurationInputForCreate.add_member(:tiering_configuration_name, Shapes::ShapeRef.new(shape: TieringConfigurationName, required: true, location_name: "TieringConfigurationName"))
    TieringConfigurationInputForCreate.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultNameOrWildcard, required: true, location_name: "BackupVaultName"))
    TieringConfigurationInputForCreate.add_member(:resource_selection, Shapes::ShapeRef.new(shape: ResourceSelections, required: true, location_name: "ResourceSelection"))
    TieringConfigurationInputForCreate.struct_class = Types::TieringConfigurationInputForCreate

    TieringConfigurationInputForUpdate.add_member(:resource_selection, Shapes::ShapeRef.new(shape: ResourceSelections, required: true, location_name: "ResourceSelection"))
    TieringConfigurationInputForUpdate.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultNameOrWildcard, required: true, location_name: "BackupVaultName"))
    TieringConfigurationInputForUpdate.struct_class = Types::TieringConfigurationInputForUpdate

    TieringConfigurationsList.member = Shapes::ShapeRef.new(shape: TieringConfigurationsListMember)

    TieringConfigurationsListMember.add_member(:tiering_configuration_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "TieringConfigurationArn"))
    TieringConfigurationsListMember.add_member(:tiering_configuration_name, Shapes::ShapeRef.new(shape: TieringConfigurationName, location_name: "TieringConfigurationName"))
    TieringConfigurationsListMember.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultNameOrWildcard, location_name: "BackupVaultName"))
    TieringConfigurationsListMember.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationTime"))
    TieringConfigurationsListMember.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedTime"))
    TieringConfigurationsListMember.struct_class = Types::TieringConfigurationsListMember

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_key_list, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeyList"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UpdateBackupPlanInput.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "backupPlanId"))
    UpdateBackupPlanInput.add_member(:backup_plan, Shapes::ShapeRef.new(shape: BackupPlanInput, required: true, location_name: "BackupPlan"))
    UpdateBackupPlanInput.struct_class = Types::UpdateBackupPlanInput

    UpdateBackupPlanOutput.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupPlanId"))
    UpdateBackupPlanOutput.add_member(:backup_plan_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupPlanArn"))
    UpdateBackupPlanOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    UpdateBackupPlanOutput.add_member(:version_id, Shapes::ShapeRef.new(shape: string, location_name: "VersionId"))
    UpdateBackupPlanOutput.add_member(:advanced_backup_settings, Shapes::ShapeRef.new(shape: AdvancedBackupSettings, location_name: "AdvancedBackupSettings"))
    UpdateBackupPlanOutput.struct_class = Types::UpdateBackupPlanOutput

    UpdateFrameworkInput.add_member(:framework_name, Shapes::ShapeRef.new(shape: FrameworkName, required: true, location: "uri", location_name: "frameworkName"))
    UpdateFrameworkInput.add_member(:framework_description, Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: "FrameworkDescription"))
    UpdateFrameworkInput.add_member(:framework_controls, Shapes::ShapeRef.new(shape: FrameworkControls, location_name: "FrameworkControls"))
    UpdateFrameworkInput.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: string, location_name: "IdempotencyToken", metadata: {"idempotencyToken" => true}))
    UpdateFrameworkInput.struct_class = Types::UpdateFrameworkInput

    UpdateFrameworkOutput.add_member(:framework_name, Shapes::ShapeRef.new(shape: FrameworkName, location_name: "FrameworkName"))
    UpdateFrameworkOutput.add_member(:framework_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "FrameworkArn"))
    UpdateFrameworkOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationTime"))
    UpdateFrameworkOutput.struct_class = Types::UpdateFrameworkOutput

    UpdateGlobalSettingsInput.add_member(:global_settings, Shapes::ShapeRef.new(shape: GlobalSettings, location_name: "GlobalSettings"))
    UpdateGlobalSettingsInput.struct_class = Types::UpdateGlobalSettingsInput

    UpdateRecoveryPointIndexSettingsInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    UpdateRecoveryPointIndexSettingsInput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "recoveryPointArn"))
    UpdateRecoveryPointIndexSettingsInput.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "IamRoleArn"))
    UpdateRecoveryPointIndexSettingsInput.add_member(:index, Shapes::ShapeRef.new(shape: Index, required: true, location_name: "Index"))
    UpdateRecoveryPointIndexSettingsInput.struct_class = Types::UpdateRecoveryPointIndexSettingsInput

    UpdateRecoveryPointIndexSettingsOutput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location_name: "BackupVaultName"))
    UpdateRecoveryPointIndexSettingsOutput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    UpdateRecoveryPointIndexSettingsOutput.add_member(:index_status, Shapes::ShapeRef.new(shape: IndexStatus, location_name: "IndexStatus"))
    UpdateRecoveryPointIndexSettingsOutput.add_member(:index, Shapes::ShapeRef.new(shape: Index, location_name: "Index"))
    UpdateRecoveryPointIndexSettingsOutput.struct_class = Types::UpdateRecoveryPointIndexSettingsOutput

    UpdateRecoveryPointLifecycleInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    UpdateRecoveryPointLifecycleInput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "recoveryPointArn"))
    UpdateRecoveryPointLifecycleInput.add_member(:lifecycle, Shapes::ShapeRef.new(shape: Lifecycle, location_name: "Lifecycle"))
    UpdateRecoveryPointLifecycleInput.struct_class = Types::UpdateRecoveryPointLifecycleInput

    UpdateRecoveryPointLifecycleOutput.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    UpdateRecoveryPointLifecycleOutput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    UpdateRecoveryPointLifecycleOutput.add_member(:lifecycle, Shapes::ShapeRef.new(shape: Lifecycle, location_name: "Lifecycle"))
    UpdateRecoveryPointLifecycleOutput.add_member(:calculated_lifecycle, Shapes::ShapeRef.new(shape: CalculatedLifecycle, location_name: "CalculatedLifecycle"))
    UpdateRecoveryPointLifecycleOutput.struct_class = Types::UpdateRecoveryPointLifecycleOutput

    UpdateRegionSettingsInput.add_member(:resource_type_opt_in_preference, Shapes::ShapeRef.new(shape: ResourceTypeOptInPreference, location_name: "ResourceTypeOptInPreference"))
    UpdateRegionSettingsInput.add_member(:resource_type_management_preference, Shapes::ShapeRef.new(shape: ResourceTypeManagementPreference, location_name: "ResourceTypeManagementPreference"))
    UpdateRegionSettingsInput.struct_class = Types::UpdateRegionSettingsInput

    UpdateReportPlanInput.add_member(:report_plan_name, Shapes::ShapeRef.new(shape: ReportPlanName, required: true, location: "uri", location_name: "reportPlanName"))
    UpdateReportPlanInput.add_member(:report_plan_description, Shapes::ShapeRef.new(shape: ReportPlanDescription, location_name: "ReportPlanDescription"))
    UpdateReportPlanInput.add_member(:report_delivery_channel, Shapes::ShapeRef.new(shape: ReportDeliveryChannel, location_name: "ReportDeliveryChannel"))
    UpdateReportPlanInput.add_member(:report_setting, Shapes::ShapeRef.new(shape: ReportSetting, location_name: "ReportSetting"))
    UpdateReportPlanInput.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: string, location_name: "IdempotencyToken", metadata: {"idempotencyToken" => true}))
    UpdateReportPlanInput.struct_class = Types::UpdateReportPlanInput

    UpdateReportPlanOutput.add_member(:report_plan_name, Shapes::ShapeRef.new(shape: ReportPlanName, location_name: "ReportPlanName"))
    UpdateReportPlanOutput.add_member(:report_plan_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ReportPlanArn"))
    UpdateReportPlanOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationTime"))
    UpdateReportPlanOutput.struct_class = Types::UpdateReportPlanOutput

    UpdateRestoreTestingPlanInput.add_member(:restore_testing_plan, Shapes::ShapeRef.new(shape: RestoreTestingPlanForUpdate, required: true, location_name: "RestoreTestingPlan"))
    UpdateRestoreTestingPlanInput.add_member(:restore_testing_plan_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "RestoreTestingPlanName"))
    UpdateRestoreTestingPlanInput.struct_class = Types::UpdateRestoreTestingPlanInput

    UpdateRestoreTestingPlanOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    UpdateRestoreTestingPlanOutput.add_member(:restore_testing_plan_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RestoreTestingPlanArn"))
    UpdateRestoreTestingPlanOutput.add_member(:restore_testing_plan_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RestoreTestingPlanName"))
    UpdateRestoreTestingPlanOutput.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    UpdateRestoreTestingPlanOutput.struct_class = Types::UpdateRestoreTestingPlanOutput

    UpdateRestoreTestingSelectionInput.add_member(:restore_testing_plan_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "RestoreTestingPlanName"))
    UpdateRestoreTestingSelectionInput.add_member(:restore_testing_selection, Shapes::ShapeRef.new(shape: RestoreTestingSelectionForUpdate, required: true, location_name: "RestoreTestingSelection"))
    UpdateRestoreTestingSelectionInput.add_member(:restore_testing_selection_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "RestoreTestingSelectionName"))
    UpdateRestoreTestingSelectionInput.struct_class = Types::UpdateRestoreTestingSelectionInput

    UpdateRestoreTestingSelectionOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    UpdateRestoreTestingSelectionOutput.add_member(:restore_testing_plan_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RestoreTestingPlanArn"))
    UpdateRestoreTestingSelectionOutput.add_member(:restore_testing_plan_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RestoreTestingPlanName"))
    UpdateRestoreTestingSelectionOutput.add_member(:restore_testing_selection_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RestoreTestingSelectionName"))
    UpdateRestoreTestingSelectionOutput.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    UpdateRestoreTestingSelectionOutput.struct_class = Types::UpdateRestoreTestingSelectionOutput

    UpdateTieringConfigurationInput.add_member(:tiering_configuration_name, Shapes::ShapeRef.new(shape: TieringConfigurationName, required: true, location: "uri", location_name: "tieringConfigurationName"))
    UpdateTieringConfigurationInput.add_member(:tiering_configuration, Shapes::ShapeRef.new(shape: TieringConfigurationInputForUpdate, required: true, location_name: "TieringConfiguration"))
    UpdateTieringConfigurationInput.struct_class = Types::UpdateTieringConfigurationInput

    UpdateTieringConfigurationOutput.add_member(:tiering_configuration_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "TieringConfigurationArn"))
    UpdateTieringConfigurationOutput.add_member(:tiering_configuration_name, Shapes::ShapeRef.new(shape: TieringConfigurationName, location_name: "TieringConfigurationName"))
    UpdateTieringConfigurationOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationTime"))
    UpdateTieringConfigurationOutput.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedTime"))
    UpdateTieringConfigurationOutput.struct_class = Types::UpdateTieringConfigurationOutput

    VaultNames.member = Shapes::ShapeRef.new(shape: string)

    stringList.member = Shapes::ShapeRef.new(shape: string)

    stringMap.key = Shapes::ShapeRef.new(shape: string)
    stringMap.value = Shapes::ShapeRef.new(shape: string)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-11-15"

      api.metadata = {
        "apiVersion" => "2018-11-15",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "backup",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Backup",
        "serviceId" => "Backup",
        "signatureVersion" => "v4",
        "uid" => "backup-2018-11-15",
      }

      api.add_operation(:associate_backup_vault_mpa_approval_team, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateBackupVaultMpaApprovalTeam"
        o.http_method = "PUT"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/mpaApprovalTeam"
        o.input = Shapes::ShapeRef.new(shape: AssociateBackupVaultMpaApprovalTeamInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:cancel_legal_hold, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelLegalHold"
        o.http_method = "DELETE"
        o.http_request_uri = "/legal-holds/{legalHoldId}"
        o.input = Shapes::ShapeRef.new(shape: CancelLegalHoldInput)
        o.output = Shapes::ShapeRef.new(shape: CancelLegalHoldOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_backup_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBackupPlan"
        o.http_method = "PUT"
        o.http_request_uri = "/backup/plans/"
        o.input = Shapes::ShapeRef.new(shape: CreateBackupPlanInput)
        o.output = Shapes::ShapeRef.new(shape: CreateBackupPlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_backup_selection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBackupSelection"
        o.http_method = "PUT"
        o.http_request_uri = "/backup/plans/{backupPlanId}/selections/"
        o.input = Shapes::ShapeRef.new(shape: CreateBackupSelectionInput)
        o.output = Shapes::ShapeRef.new(shape: CreateBackupSelectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_backup_vault, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBackupVault"
        o.http_method = "PUT"
        o.http_request_uri = "/backup-vaults/{backupVaultName}"
        o.input = Shapes::ShapeRef.new(shape: CreateBackupVaultInput)
        o.output = Shapes::ShapeRef.new(shape: CreateBackupVaultOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
      end)

      api.add_operation(:create_framework, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFramework"
        o.http_method = "POST"
        o.http_request_uri = "/audit/frameworks"
        o.input = Shapes::ShapeRef.new(shape: CreateFrameworkInput)
        o.output = Shapes::ShapeRef.new(shape: CreateFrameworkOutput)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_legal_hold, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLegalHold"
        o.http_method = "POST"
        o.http_request_uri = "/legal-holds/"
        o.input = Shapes::ShapeRef.new(shape: CreateLegalHoldInput)
        o.output = Shapes::ShapeRef.new(shape: CreateLegalHoldOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_logically_air_gapped_backup_vault, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLogicallyAirGappedBackupVault"
        o.http_method = "PUT"
        o.http_request_uri = "/logically-air-gapped-backup-vaults/{backupVaultName}"
        o.input = Shapes::ShapeRef.new(shape: CreateLogicallyAirGappedBackupVaultInput)
        o.output = Shapes::ShapeRef.new(shape: CreateLogicallyAirGappedBackupVaultOutput)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:create_report_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateReportPlan"
        o.http_method = "POST"
        o.http_request_uri = "/audit/report-plans"
        o.input = Shapes::ShapeRef.new(shape: CreateReportPlanInput)
        o.output = Shapes::ShapeRef.new(shape: CreateReportPlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
      end)

      api.add_operation(:create_restore_access_backup_vault, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRestoreAccessBackupVault"
        o.http_method = "PUT"
        o.http_request_uri = "/restore-access-backup-vaults"
        o.input = Shapes::ShapeRef.new(shape: CreateRestoreAccessBackupVaultInput)
        o.output = Shapes::ShapeRef.new(shape: CreateRestoreAccessBackupVaultOutput)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_restore_testing_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRestoreTestingPlan"
        o.http_method = "PUT"
        o.http_request_uri = "/restore-testing/plans"
        o.input = Shapes::ShapeRef.new(shape: CreateRestoreTestingPlanInput)
        o.output = Shapes::ShapeRef.new(shape: CreateRestoreTestingPlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_restore_testing_selection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRestoreTestingSelection"
        o.http_method = "PUT"
        o.http_request_uri = "/restore-testing/plans/{RestoreTestingPlanName}/selections"
        o.input = Shapes::ShapeRef.new(shape: CreateRestoreTestingSelectionInput)
        o.output = Shapes::ShapeRef.new(shape: CreateRestoreTestingSelectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_tiering_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTieringConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/tiering-configurations"
        o.input = Shapes::ShapeRef.new(shape: CreateTieringConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTieringConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_backup_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBackupPlan"
        o.http_method = "DELETE"
        o.http_request_uri = "/backup/plans/{backupPlanId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteBackupPlanInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteBackupPlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_backup_selection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBackupSelection"
        o.http_method = "DELETE"
        o.http_request_uri = "/backup/plans/{backupPlanId}/selections/{selectionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteBackupSelectionInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_backup_vault, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBackupVault"
        o.http_method = "DELETE"
        o.http_request_uri = "/backup-vaults/{backupVaultName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteBackupVaultInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_backup_vault_access_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBackupVaultAccessPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/access-policy"
        o.input = Shapes::ShapeRef.new(shape: DeleteBackupVaultAccessPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_backup_vault_lock_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBackupVaultLockConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/vault-lock"
        o.input = Shapes::ShapeRef.new(shape: DeleteBackupVaultLockConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_backup_vault_notifications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBackupVaultNotifications"
        o.http_method = "DELETE"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/notification-configuration"
        o.input = Shapes::ShapeRef.new(shape: DeleteBackupVaultNotificationsInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_framework, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFramework"
        o.http_method = "DELETE"
        o.http_request_uri = "/audit/frameworks/{frameworkName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFrameworkInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_recovery_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRecoveryPoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRecoveryPointInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_report_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReportPlan"
        o.http_method = "DELETE"
        o.http_request_uri = "/audit/report-plans/{reportPlanName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteReportPlanInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_restore_testing_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRestoreTestingPlan"
        o.http_method = "DELETE"
        o.http_request_uri = "/restore-testing/plans/{RestoreTestingPlanName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRestoreTestingPlanInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_restore_testing_selection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRestoreTestingSelection"
        o.http_method = "DELETE"
        o.http_request_uri = "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRestoreTestingSelectionInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_tiering_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTieringConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/tiering-configurations/{tieringConfigurationName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTieringConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteTieringConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_backup_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBackupJob"
        o.http_method = "GET"
        o.http_request_uri = "/backup-jobs/{backupJobId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeBackupJobInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeBackupJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailureException)
      end)

      api.add_operation(:describe_backup_vault, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBackupVault"
        o.http_method = "GET"
        o.http_request_uri = "/backup-vaults/{backupVaultName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeBackupVaultInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeBackupVaultOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_copy_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCopyJob"
        o.http_method = "GET"
        o.http_request_uri = "/copy-jobs/{copyJobId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeCopyJobInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeCopyJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_framework, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFramework"
        o.http_method = "GET"
        o.http_request_uri = "/audit/frameworks/{frameworkName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeFrameworkInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeFrameworkOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_global_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGlobalSettings"
        o.http_method = "GET"
        o.http_request_uri = "/global-settings"
        o.input = Shapes::ShapeRef.new(shape: DescribeGlobalSettingsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeGlobalSettingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_protected_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProtectedResource"
        o.http_method = "GET"
        o.http_request_uri = "/resources/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeProtectedResourceInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeProtectedResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_recovery_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRecoveryPoint"
        o.http_method = "GET"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeRecoveryPointInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeRecoveryPointOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_region_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRegionSettings"
        o.http_method = "GET"
        o.http_request_uri = "/account-settings"
        o.input = Shapes::ShapeRef.new(shape: DescribeRegionSettingsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeRegionSettingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_report_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReportJob"
        o.http_method = "GET"
        o.http_request_uri = "/audit/report-jobs/{reportJobId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeReportJobInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeReportJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_report_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReportPlan"
        o.http_method = "GET"
        o.http_request_uri = "/audit/report-plans/{reportPlanName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeReportPlanInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeReportPlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_restore_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRestoreJob"
        o.http_method = "GET"
        o.http_request_uri = "/restore-jobs/{restoreJobId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeRestoreJobInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeRestoreJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailureException)
      end)

      api.add_operation(:disassociate_backup_vault_mpa_approval_team, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateBackupVaultMpaApprovalTeam"
        o.http_method = "POST"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/mpaApprovalTeam?delete"
        o.input = Shapes::ShapeRef.new(shape: DisassociateBackupVaultMpaApprovalTeamInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:disassociate_recovery_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateRecoveryPoint"
        o.http_method = "POST"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}/disassociate"
        o.input = Shapes::ShapeRef.new(shape: DisassociateRecoveryPointInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:disassociate_recovery_point_from_parent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateRecoveryPointFromParent"
        o.http_method = "DELETE"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}/parentAssociation"
        o.input = Shapes::ShapeRef.new(shape: DisassociateRecoveryPointFromParentInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:export_backup_plan_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportBackupPlanTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/backup/plans/{backupPlanId}/toTemplate/"
        o.input = Shapes::ShapeRef.new(shape: ExportBackupPlanTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: ExportBackupPlanTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_backup_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBackupPlan"
        o.http_method = "GET"
        o.http_request_uri = "/backup/plans/{backupPlanId}/"
        o.input = Shapes::ShapeRef.new(shape: GetBackupPlanInput)
        o.output = Shapes::ShapeRef.new(shape: GetBackupPlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_backup_plan_from_json, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBackupPlanFromJSON"
        o.http_method = "POST"
        o.http_request_uri = "/backup/template/json/toPlan"
        o.input = Shapes::ShapeRef.new(shape: GetBackupPlanFromJSONInput)
        o.output = Shapes::ShapeRef.new(shape: GetBackupPlanFromJSONOutput)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:get_backup_plan_from_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBackupPlanFromTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/backup/template/plans/{templateId}/toPlan"
        o.input = Shapes::ShapeRef.new(shape: GetBackupPlanFromTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: GetBackupPlanFromTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_backup_selection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBackupSelection"
        o.http_method = "GET"
        o.http_request_uri = "/backup/plans/{backupPlanId}/selections/{selectionId}"
        o.input = Shapes::ShapeRef.new(shape: GetBackupSelectionInput)
        o.output = Shapes::ShapeRef.new(shape: GetBackupSelectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_backup_vault_access_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBackupVaultAccessPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/access-policy"
        o.input = Shapes::ShapeRef.new(shape: GetBackupVaultAccessPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetBackupVaultAccessPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_backup_vault_notifications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBackupVaultNotifications"
        o.http_method = "GET"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/notification-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetBackupVaultNotificationsInput)
        o.output = Shapes::ShapeRef.new(shape: GetBackupVaultNotificationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_legal_hold, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLegalHold"
        o.http_method = "GET"
        o.http_request_uri = "/legal-holds/{legalHoldId}/"
        o.input = Shapes::ShapeRef.new(shape: GetLegalHoldInput)
        o.output = Shapes::ShapeRef.new(shape: GetLegalHoldOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_recovery_point_index_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecoveryPointIndexDetails"
        o.http_method = "GET"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}/index"
        o.input = Shapes::ShapeRef.new(shape: GetRecoveryPointIndexDetailsInput)
        o.output = Shapes::ShapeRef.new(shape: GetRecoveryPointIndexDetailsOutput)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_recovery_point_restore_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecoveryPointRestoreMetadata"
        o.http_method = "GET"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}/restore-metadata"
        o.input = Shapes::ShapeRef.new(shape: GetRecoveryPointRestoreMetadataInput)
        o.output = Shapes::ShapeRef.new(shape: GetRecoveryPointRestoreMetadataOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_restore_job_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRestoreJobMetadata"
        o.http_method = "GET"
        o.http_request_uri = "/restore-jobs/{restoreJobId}/metadata"
        o.input = Shapes::ShapeRef.new(shape: GetRestoreJobMetadataInput)
        o.output = Shapes::ShapeRef.new(shape: GetRestoreJobMetadataOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_restore_testing_inferred_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRestoreTestingInferredMetadata"
        o.http_method = "GET"
        o.http_request_uri = "/restore-testing/inferred-metadata"
        o.input = Shapes::ShapeRef.new(shape: GetRestoreTestingInferredMetadataInput)
        o.output = Shapes::ShapeRef.new(shape: GetRestoreTestingInferredMetadataOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_restore_testing_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRestoreTestingPlan"
        o.http_method = "GET"
        o.http_request_uri = "/restore-testing/plans/{RestoreTestingPlanName}"
        o.input = Shapes::ShapeRef.new(shape: GetRestoreTestingPlanInput)
        o.output = Shapes::ShapeRef.new(shape: GetRestoreTestingPlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_restore_testing_selection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRestoreTestingSelection"
        o.http_method = "GET"
        o.http_request_uri = "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}"
        o.input = Shapes::ShapeRef.new(shape: GetRestoreTestingSelectionInput)
        o.output = Shapes::ShapeRef.new(shape: GetRestoreTestingSelectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_supported_resource_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSupportedResourceTypes"
        o.http_method = "GET"
        o.http_request_uri = "/supported-resource-types"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetSupportedResourceTypesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_tiering_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTieringConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/tiering-configurations/{tieringConfigurationName}"
        o.input = Shapes::ShapeRef.new(shape: GetTieringConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: GetTieringConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_backup_job_summaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBackupJobSummaries"
        o.http_method = "GET"
        o.http_request_uri = "/audit/backup-job-summaries"
        o.input = Shapes::ShapeRef.new(shape: ListBackupJobSummariesInput)
        o.output = Shapes::ShapeRef.new(shape: ListBackupJobSummariesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_backup_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBackupJobs"
        o.http_method = "GET"
        o.http_request_uri = "/backup-jobs/"
        o.input = Shapes::ShapeRef.new(shape: ListBackupJobsInput)
        o.output = Shapes::ShapeRef.new(shape: ListBackupJobsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_backup_plan_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBackupPlanTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/backup/template/plans"
        o.input = Shapes::ShapeRef.new(shape: ListBackupPlanTemplatesInput)
        o.output = Shapes::ShapeRef.new(shape: ListBackupPlanTemplatesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_backup_plan_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBackupPlanVersions"
        o.http_method = "GET"
        o.http_request_uri = "/backup/plans/{backupPlanId}/versions/"
        o.input = Shapes::ShapeRef.new(shape: ListBackupPlanVersionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListBackupPlanVersionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_backup_plans, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBackupPlans"
        o.http_method = "GET"
        o.http_request_uri = "/backup/plans/"
        o.input = Shapes::ShapeRef.new(shape: ListBackupPlansInput)
        o.output = Shapes::ShapeRef.new(shape: ListBackupPlansOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_backup_selections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBackupSelections"
        o.http_method = "GET"
        o.http_request_uri = "/backup/plans/{backupPlanId}/selections/"
        o.input = Shapes::ShapeRef.new(shape: ListBackupSelectionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListBackupSelectionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_backup_vaults, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBackupVaults"
        o.http_method = "GET"
        o.http_request_uri = "/backup-vaults/"
        o.input = Shapes::ShapeRef.new(shape: ListBackupVaultsInput)
        o.output = Shapes::ShapeRef.new(shape: ListBackupVaultsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_copy_job_summaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCopyJobSummaries"
        o.http_method = "GET"
        o.http_request_uri = "/audit/copy-job-summaries"
        o.input = Shapes::ShapeRef.new(shape: ListCopyJobSummariesInput)
        o.output = Shapes::ShapeRef.new(shape: ListCopyJobSummariesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_copy_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCopyJobs"
        o.http_method = "GET"
        o.http_request_uri = "/copy-jobs/"
        o.input = Shapes::ShapeRef.new(shape: ListCopyJobsInput)
        o.output = Shapes::ShapeRef.new(shape: ListCopyJobsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_frameworks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFrameworks"
        o.http_method = "GET"
        o.http_request_uri = "/audit/frameworks"
        o.input = Shapes::ShapeRef.new(shape: ListFrameworksInput)
        o.output = Shapes::ShapeRef.new(shape: ListFrameworksOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_indexed_recovery_points, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIndexedRecoveryPoints"
        o.http_method = "GET"
        o.http_request_uri = "/indexes/recovery-point/"
        o.input = Shapes::ShapeRef.new(shape: ListIndexedRecoveryPointsInput)
        o.output = Shapes::ShapeRef.new(shape: ListIndexedRecoveryPointsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_legal_holds, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLegalHolds"
        o.http_method = "GET"
        o.http_request_uri = "/legal-holds/"
        o.input = Shapes::ShapeRef.new(shape: ListLegalHoldsInput)
        o.output = Shapes::ShapeRef.new(shape: ListLegalHoldsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_protected_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProtectedResources"
        o.http_method = "GET"
        o.http_request_uri = "/resources/"
        o.input = Shapes::ShapeRef.new(shape: ListProtectedResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: ListProtectedResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_protected_resources_by_backup_vault, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProtectedResourcesByBackupVault"
        o.http_method = "GET"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/resources/"
        o.input = Shapes::ShapeRef.new(shape: ListProtectedResourcesByBackupVaultInput)
        o.output = Shapes::ShapeRef.new(shape: ListProtectedResourcesByBackupVaultOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_recovery_points_by_backup_vault, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecoveryPointsByBackupVault"
        o.http_method = "GET"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/recovery-points/"
        o.input = Shapes::ShapeRef.new(shape: ListRecoveryPointsByBackupVaultInput)
        o.output = Shapes::ShapeRef.new(shape: ListRecoveryPointsByBackupVaultOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_recovery_points_by_legal_hold, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecoveryPointsByLegalHold"
        o.http_method = "GET"
        o.http_request_uri = "/legal-holds/{legalHoldId}/recovery-points"
        o.input = Shapes::ShapeRef.new(shape: ListRecoveryPointsByLegalHoldInput)
        o.output = Shapes::ShapeRef.new(shape: ListRecoveryPointsByLegalHoldOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_recovery_points_by_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecoveryPointsByResource"
        o.http_method = "GET"
        o.http_request_uri = "/resources/{resourceArn}/recovery-points/"
        o.input = Shapes::ShapeRef.new(shape: ListRecoveryPointsByResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListRecoveryPointsByResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_report_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReportJobs"
        o.http_method = "GET"
        o.http_request_uri = "/audit/report-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListReportJobsInput)
        o.output = Shapes::ShapeRef.new(shape: ListReportJobsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_report_plans, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReportPlans"
        o.http_method = "GET"
        o.http_request_uri = "/audit/report-plans"
        o.input = Shapes::ShapeRef.new(shape: ListReportPlansInput)
        o.output = Shapes::ShapeRef.new(shape: ListReportPlansOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_restore_access_backup_vaults, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRestoreAccessBackupVaults"
        o.http_method = "GET"
        o.http_request_uri = "/logically-air-gapped-backup-vaults/{backupVaultName}/restore-access-backup-vaults/"
        o.input = Shapes::ShapeRef.new(shape: ListRestoreAccessBackupVaultsInput)
        o.output = Shapes::ShapeRef.new(shape: ListRestoreAccessBackupVaultsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_restore_job_summaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRestoreJobSummaries"
        o.http_method = "GET"
        o.http_request_uri = "/audit/restore-job-summaries"
        o.input = Shapes::ShapeRef.new(shape: ListRestoreJobSummariesInput)
        o.output = Shapes::ShapeRef.new(shape: ListRestoreJobSummariesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_restore_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRestoreJobs"
        o.http_method = "GET"
        o.http_request_uri = "/restore-jobs/"
        o.input = Shapes::ShapeRef.new(shape: ListRestoreJobsInput)
        o.output = Shapes::ShapeRef.new(shape: ListRestoreJobsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_restore_jobs_by_protected_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRestoreJobsByProtectedResource"
        o.http_method = "GET"
        o.http_request_uri = "/resources/{resourceArn}/restore-jobs/"
        o.input = Shapes::ShapeRef.new(shape: ListRestoreJobsByProtectedResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListRestoreJobsByProtectedResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_restore_testing_plans, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRestoreTestingPlans"
        o.http_method = "GET"
        o.http_request_uri = "/restore-testing/plans"
        o.input = Shapes::ShapeRef.new(shape: ListRestoreTestingPlansInput)
        o.output = Shapes::ShapeRef.new(shape: ListRestoreTestingPlansOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_restore_testing_selections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRestoreTestingSelections"
        o.http_method = "GET"
        o.http_request_uri = "/restore-testing/plans/{RestoreTestingPlanName}/selections"
        o.input = Shapes::ShapeRef.new(shape: ListRestoreTestingSelectionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListRestoreTestingSelectionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTags"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tiering_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTieringConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/tiering-configurations/"
        o.input = Shapes::ShapeRef.new(shape: ListTieringConfigurationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListTieringConfigurationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_backup_vault_access_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutBackupVaultAccessPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/access-policy"
        o.input = Shapes::ShapeRef.new(shape: PutBackupVaultAccessPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:put_backup_vault_lock_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutBackupVaultLockConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/vault-lock"
        o.input = Shapes::ShapeRef.new(shape: PutBackupVaultLockConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:put_backup_vault_notifications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutBackupVaultNotifications"
        o.http_method = "PUT"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/notification-configuration"
        o.input = Shapes::ShapeRef.new(shape: PutBackupVaultNotificationsInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:put_restore_validation_result, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRestoreValidationResult"
        o.http_method = "PUT"
        o.http_request_uri = "/restore-jobs/{restoreJobId}/validations"
        o.input = Shapes::ShapeRef.new(shape: PutRestoreValidationResultInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:revoke_restore_access_backup_vault, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeRestoreAccessBackupVault"
        o.http_method = "DELETE"
        o.http_request_uri = "/logically-air-gapped-backup-vaults/{backupVaultName}/restore-access-backup-vaults/{restoreAccessBackupVaultArn}"
        o.input = Shapes::ShapeRef.new(shape: RevokeRestoreAccessBackupVaultInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:start_backup_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartBackupJob"
        o.http_method = "PUT"
        o.http_request_uri = "/backup-jobs"
        o.input = Shapes::ShapeRef.new(shape: StartBackupJobInput)
        o.output = Shapes::ShapeRef.new(shape: StartBackupJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:start_copy_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCopyJob"
        o.http_method = "PUT"
        o.http_request_uri = "/copy-jobs"
        o.input = Shapes::ShapeRef.new(shape: StartCopyJobInput)
        o.output = Shapes::ShapeRef.new(shape: StartCopyJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:start_report_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartReportJob"
        o.http_method = "POST"
        o.http_request_uri = "/audit/report-jobs/{reportPlanName}"
        o.input = Shapes::ShapeRef.new(shape: StartReportJobInput)
        o.output = Shapes::ShapeRef.new(shape: StartReportJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_restore_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartRestoreJob"
        o.http_method = "PUT"
        o.http_request_uri = "/restore-jobs"
        o.input = Shapes::ShapeRef.new(shape: StartRestoreJobInput)
        o.output = Shapes::ShapeRef.new(shape: StartRestoreJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:stop_backup_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopBackupJob"
        o.http_method = "POST"
        o.http_request_uri = "/backup-jobs/{backupJobId}"
        o.input = Shapes::ShapeRef.new(shape: StopBackupJobInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/untag/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_backup_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBackupPlan"
        o.http_method = "POST"
        o.http_request_uri = "/backup/plans/{backupPlanId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateBackupPlanInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateBackupPlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_framework, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFramework"
        o.http_method = "PUT"
        o.http_request_uri = "/audit/frameworks/{frameworkName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFrameworkInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateFrameworkOutput)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_global_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGlobalSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/global-settings"
        o.input = Shapes::ShapeRef.new(shape: UpdateGlobalSettingsInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:update_recovery_point_index_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRecoveryPointIndexSettings"
        o.http_method = "POST"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}/index"
        o.input = Shapes::ShapeRef.new(shape: UpdateRecoveryPointIndexSettingsInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateRecoveryPointIndexSettingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_recovery_point_lifecycle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRecoveryPointLifecycle"
        o.http_method = "POST"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRecoveryPointLifecycleInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateRecoveryPointLifecycleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_region_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRegionSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/account-settings"
        o.input = Shapes::ShapeRef.new(shape: UpdateRegionSettingsInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:update_report_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateReportPlan"
        o.http_method = "PUT"
        o.http_request_uri = "/audit/report-plans/{reportPlanName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateReportPlanInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateReportPlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_restore_testing_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRestoreTestingPlan"
        o.http_method = "PUT"
        o.http_request_uri = "/restore-testing/plans/{RestoreTestingPlanName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRestoreTestingPlanInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateRestoreTestingPlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_restore_testing_selection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRestoreTestingSelection"
        o.http_method = "PUT"
        o.http_request_uri = "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRestoreTestingSelectionInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateRestoreTestingSelectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_tiering_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTieringConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/tiering-configurations/{tieringConfigurationName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTieringConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateTieringConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)
    end

  end
end
