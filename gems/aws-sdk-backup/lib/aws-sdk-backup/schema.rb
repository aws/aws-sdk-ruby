# frozen_string_literal: true

# This is generated code!

module Aws::Backup
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#ARN', name: 'ARN')
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#AccountId', name: 'AccountId', traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    AdvancedBackupSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#AdvancedBackupSetting', name: 'AdvancedBackupSetting')
    AdvancedBackupSettings = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#AdvancedBackupSettings', name: 'AdvancedBackupSettings')
    AggregationPeriod = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#AggregationPeriod', name: 'AggregationPeriod')
    AlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#AlreadyExistsException', name: 'AlreadyExistsException', traits: {"smithy.api#error" => "client"})
    AssociateBackupVaultMpaApprovalTeamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#AssociateBackupVaultMpaApprovalTeamInput', name: 'AssociateBackupVaultMpaApprovalTeamInput')
    BackupJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#BackupJob', name: 'BackupJob')
    BackupJobChildJobsInState = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.backup#BackupJobChildJobsInState', name: 'BackupJobChildJobsInState')
    BackupJobState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#BackupJobState', name: 'BackupJobState')
    BackupJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#BackupJobStatus', name: 'BackupJobStatus')
    BackupJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#BackupJobSummary', name: 'BackupJobSummary')
    BackupJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#BackupJobSummaryList', name: 'BackupJobSummaryList')
    BackupJobsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#BackupJobsList', name: 'BackupJobsList')
    BackupOptionKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#BackupOptionKey', name: 'BackupOptionKey', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_\\.]{1,50}$"})
    BackupOptionValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#BackupOptionValue', name: 'BackupOptionValue', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_\\.]{1,50}$"})
    BackupOptions = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.backup#BackupOptions', name: 'BackupOptions')
    BackupPlan = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#BackupPlan', name: 'BackupPlan')
    BackupPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#BackupPlanInput', name: 'BackupPlanInput')
    BackupPlanName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#BackupPlanName', name: 'BackupPlanName')
    BackupPlanTemplatesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#BackupPlanTemplatesList', name: 'BackupPlanTemplatesList')
    BackupPlanTemplatesListMember = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#BackupPlanTemplatesListMember', name: 'BackupPlanTemplatesListMember')
    BackupPlanVersionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#BackupPlanVersionsList', name: 'BackupPlanVersionsList')
    BackupPlansList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#BackupPlansList', name: 'BackupPlansList')
    BackupPlansListMember = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#BackupPlansListMember', name: 'BackupPlansListMember')
    BackupRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#BackupRule', name: 'BackupRule')
    BackupRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#BackupRuleInput', name: 'BackupRuleInput')
    BackupRuleName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#BackupRuleName', name: 'BackupRuleName', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_\\.]{1,50}$"})
    BackupRules = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#BackupRules', name: 'BackupRules')
    BackupRulesInput = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#BackupRulesInput', name: 'BackupRulesInput')
    BackupSelection = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#BackupSelection', name: 'BackupSelection')
    BackupSelectionName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#BackupSelectionName', name: 'BackupSelectionName', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_\\.]{1,50}$"})
    BackupSelectionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#BackupSelectionsList', name: 'BackupSelectionsList')
    BackupSelectionsListMember = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#BackupSelectionsListMember', name: 'BackupSelectionsListMember')
    BackupVaultEvent = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#BackupVaultEvent', name: 'BackupVaultEvent')
    BackupVaultEvents = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#BackupVaultEvents', name: 'BackupVaultEvents')
    BackupVaultList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#BackupVaultList', name: 'BackupVaultList')
    BackupVaultListMember = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#BackupVaultListMember', name: 'BackupVaultListMember')
    BackupVaultName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#BackupVaultName', name: 'BackupVaultName', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]{2,50}$"})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.backup#Boolean', name: 'Boolean')
    Boolean2 = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.backup#Boolean2', name: 'Boolean2', traits: {"smithy.api#default" => false})
    CalculatedLifecycle = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CalculatedLifecycle', name: 'CalculatedLifecycle')
    CancelLegalHoldInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CancelLegalHoldInput', name: 'CancelLegalHoldInput')
    CancelLegalHoldOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CancelLegalHoldOutput', name: 'CancelLegalHoldOutput')
    ComplianceResourceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#ComplianceResourceIdList', name: 'ComplianceResourceIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Condition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#Condition', name: 'Condition')
    ConditionKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#ConditionKey', name: 'ConditionKey')
    ConditionParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ConditionParameter', name: 'ConditionParameter')
    ConditionParameters = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#ConditionParameters', name: 'ConditionParameters')
    ConditionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#ConditionType', name: 'ConditionType')
    ConditionValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#ConditionValue', name: 'ConditionValue')
    Conditions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#Conditions', name: 'Conditions')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ConflictException', name: 'ConflictException', traits: {"aws.protocols#awsQueryError" => {"code" => "ConflictException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ControlInputParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ControlInputParameter', name: 'ControlInputParameter')
    ControlInputParameters = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#ControlInputParameters', name: 'ControlInputParameters')
    ControlName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#ControlName', name: 'ControlName')
    ControlScope = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ControlScope', name: 'ControlScope')
    CopyAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CopyAction', name: 'CopyAction')
    CopyActions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#CopyActions', name: 'CopyActions')
    CopyJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CopyJob', name: 'CopyJob')
    CopyJobChildJobsInState = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.backup#CopyJobChildJobsInState', name: 'CopyJobChildJobsInState')
    CopyJobState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#CopyJobState', name: 'CopyJobState')
    CopyJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#CopyJobStatus', name: 'CopyJobStatus')
    CopyJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CopyJobSummary', name: 'CopyJobSummary')
    CopyJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#CopyJobSummaryList', name: 'CopyJobSummaryList')
    CopyJobsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#CopyJobsList', name: 'CopyJobsList')
    CreateBackupPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CreateBackupPlanInput', name: 'CreateBackupPlanInput')
    CreateBackupPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CreateBackupPlanOutput', name: 'CreateBackupPlanOutput')
    CreateBackupSelectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CreateBackupSelectionInput', name: 'CreateBackupSelectionInput')
    CreateBackupSelectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CreateBackupSelectionOutput', name: 'CreateBackupSelectionOutput')
    CreateBackupVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CreateBackupVaultInput', name: 'CreateBackupVaultInput')
    CreateBackupVaultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CreateBackupVaultOutput', name: 'CreateBackupVaultOutput')
    CreateFrameworkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CreateFrameworkInput', name: 'CreateFrameworkInput')
    CreateFrameworkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CreateFrameworkOutput', name: 'CreateFrameworkOutput')
    CreateLegalHoldInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CreateLegalHoldInput', name: 'CreateLegalHoldInput')
    CreateLegalHoldOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CreateLegalHoldOutput', name: 'CreateLegalHoldOutput')
    CreateLogicallyAirGappedBackupVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CreateLogicallyAirGappedBackupVaultInput', name: 'CreateLogicallyAirGappedBackupVaultInput')
    CreateLogicallyAirGappedBackupVaultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CreateLogicallyAirGappedBackupVaultOutput', name: 'CreateLogicallyAirGappedBackupVaultOutput')
    CreateReportPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CreateReportPlanInput', name: 'CreateReportPlanInput')
    CreateReportPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CreateReportPlanOutput', name: 'CreateReportPlanOutput')
    CreateRestoreAccessBackupVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CreateRestoreAccessBackupVaultInput', name: 'CreateRestoreAccessBackupVaultInput')
    CreateRestoreAccessBackupVaultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CreateRestoreAccessBackupVaultOutput', name: 'CreateRestoreAccessBackupVaultOutput')
    CreateRestoreTestingPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CreateRestoreTestingPlanInput', name: 'CreateRestoreTestingPlanInput')
    CreateRestoreTestingPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CreateRestoreTestingPlanOutput', name: 'CreateRestoreTestingPlanOutput')
    CreateRestoreTestingSelectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CreateRestoreTestingSelectionInput', name: 'CreateRestoreTestingSelectionInput')
    CreateRestoreTestingSelectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#CreateRestoreTestingSelectionOutput', name: 'CreateRestoreTestingSelectionOutput')
    CronExpression = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#CronExpression', name: 'CronExpression')
    DateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DateRange', name: 'DateRange')
    DeleteBackupPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DeleteBackupPlanInput', name: 'DeleteBackupPlanInput')
    DeleteBackupPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DeleteBackupPlanOutput', name: 'DeleteBackupPlanOutput')
    DeleteBackupSelectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DeleteBackupSelectionInput', name: 'DeleteBackupSelectionInput')
    DeleteBackupVaultAccessPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DeleteBackupVaultAccessPolicyInput', name: 'DeleteBackupVaultAccessPolicyInput')
    DeleteBackupVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DeleteBackupVaultInput', name: 'DeleteBackupVaultInput')
    DeleteBackupVaultLockConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DeleteBackupVaultLockConfigurationInput', name: 'DeleteBackupVaultLockConfigurationInput')
    DeleteBackupVaultNotificationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DeleteBackupVaultNotificationsInput', name: 'DeleteBackupVaultNotificationsInput')
    DeleteFrameworkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DeleteFrameworkInput', name: 'DeleteFrameworkInput')
    DeleteRecoveryPointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DeleteRecoveryPointInput', name: 'DeleteRecoveryPointInput')
    DeleteReportPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DeleteReportPlanInput', name: 'DeleteReportPlanInput')
    DeleteRestoreTestingPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DeleteRestoreTestingPlanInput', name: 'DeleteRestoreTestingPlanInput')
    DeleteRestoreTestingSelectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DeleteRestoreTestingSelectionInput', name: 'DeleteRestoreTestingSelectionInput')
    DependencyFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DependencyFailureException', name: 'DependencyFailureException', traits: {"smithy.api#error" => "server"})
    DescribeBackupJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeBackupJobInput', name: 'DescribeBackupJobInput')
    DescribeBackupJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeBackupJobOutput', name: 'DescribeBackupJobOutput')
    DescribeBackupVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeBackupVaultInput', name: 'DescribeBackupVaultInput')
    DescribeBackupVaultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeBackupVaultOutput', name: 'DescribeBackupVaultOutput')
    DescribeCopyJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeCopyJobInput', name: 'DescribeCopyJobInput')
    DescribeCopyJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeCopyJobOutput', name: 'DescribeCopyJobOutput')
    DescribeFrameworkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeFrameworkInput', name: 'DescribeFrameworkInput')
    DescribeFrameworkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeFrameworkOutput', name: 'DescribeFrameworkOutput')
    DescribeGlobalSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeGlobalSettingsInput', name: 'DescribeGlobalSettingsInput')
    DescribeGlobalSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeGlobalSettingsOutput', name: 'DescribeGlobalSettingsOutput')
    DescribeProtectedResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeProtectedResourceInput', name: 'DescribeProtectedResourceInput')
    DescribeProtectedResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeProtectedResourceOutput', name: 'DescribeProtectedResourceOutput')
    DescribeRecoveryPointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeRecoveryPointInput', name: 'DescribeRecoveryPointInput')
    DescribeRecoveryPointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeRecoveryPointOutput', name: 'DescribeRecoveryPointOutput')
    DescribeRegionSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeRegionSettingsInput', name: 'DescribeRegionSettingsInput')
    DescribeRegionSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeRegionSettingsOutput', name: 'DescribeRegionSettingsOutput')
    DescribeReportJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeReportJobInput', name: 'DescribeReportJobInput')
    DescribeReportJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeReportJobOutput', name: 'DescribeReportJobOutput')
    DescribeReportPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeReportPlanInput', name: 'DescribeReportPlanInput')
    DescribeReportPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeReportPlanOutput', name: 'DescribeReportPlanOutput')
    DescribeRestoreJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeRestoreJobInput', name: 'DescribeRestoreJobInput')
    DescribeRestoreJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DescribeRestoreJobOutput', name: 'DescribeRestoreJobOutput')
    DisassociateBackupVaultMpaApprovalTeamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DisassociateBackupVaultMpaApprovalTeamInput', name: 'DisassociateBackupVaultMpaApprovalTeamInput')
    DisassociateRecoveryPointFromParentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DisassociateRecoveryPointFromParentInput', name: 'DisassociateRecoveryPointFromParentInput')
    DisassociateRecoveryPointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#DisassociateRecoveryPointInput', name: 'DisassociateRecoveryPointInput')
    ExportBackupPlanTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ExportBackupPlanTemplateInput', name: 'ExportBackupPlanTemplateInput')
    ExportBackupPlanTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ExportBackupPlanTemplateOutput', name: 'ExportBackupPlanTemplateOutput')
    FormatList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#FormatList', name: 'FormatList')
    Framework = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#Framework', name: 'Framework')
    FrameworkControl = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#FrameworkControl', name: 'FrameworkControl')
    FrameworkControls = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#FrameworkControls', name: 'FrameworkControls')
    FrameworkDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#FrameworkDescription', name: 'FrameworkDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    FrameworkList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#FrameworkList', name: 'FrameworkList')
    FrameworkName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#FrameworkName', name: 'FrameworkName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z][_a-zA-Z0-9]*$"})
    GetBackupPlanFromJSONInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetBackupPlanFromJSONInput', name: 'GetBackupPlanFromJSONInput')
    GetBackupPlanFromJSONOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetBackupPlanFromJSONOutput', name: 'GetBackupPlanFromJSONOutput')
    GetBackupPlanFromTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetBackupPlanFromTemplateInput', name: 'GetBackupPlanFromTemplateInput')
    GetBackupPlanFromTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetBackupPlanFromTemplateOutput', name: 'GetBackupPlanFromTemplateOutput')
    GetBackupPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetBackupPlanInput', name: 'GetBackupPlanInput')
    GetBackupPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetBackupPlanOutput', name: 'GetBackupPlanOutput')
    GetBackupSelectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetBackupSelectionInput', name: 'GetBackupSelectionInput')
    GetBackupSelectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetBackupSelectionOutput', name: 'GetBackupSelectionOutput')
    GetBackupVaultAccessPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetBackupVaultAccessPolicyInput', name: 'GetBackupVaultAccessPolicyInput')
    GetBackupVaultAccessPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetBackupVaultAccessPolicyOutput', name: 'GetBackupVaultAccessPolicyOutput')
    GetBackupVaultNotificationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetBackupVaultNotificationsInput', name: 'GetBackupVaultNotificationsInput')
    GetBackupVaultNotificationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetBackupVaultNotificationsOutput', name: 'GetBackupVaultNotificationsOutput')
    GetLegalHoldInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetLegalHoldInput', name: 'GetLegalHoldInput')
    GetLegalHoldOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetLegalHoldOutput', name: 'GetLegalHoldOutput')
    GetRecoveryPointIndexDetailsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetRecoveryPointIndexDetailsInput', name: 'GetRecoveryPointIndexDetailsInput')
    GetRecoveryPointIndexDetailsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetRecoveryPointIndexDetailsOutput', name: 'GetRecoveryPointIndexDetailsOutput')
    GetRecoveryPointRestoreMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetRecoveryPointRestoreMetadataInput', name: 'GetRecoveryPointRestoreMetadataInput')
    GetRecoveryPointRestoreMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetRecoveryPointRestoreMetadataOutput', name: 'GetRecoveryPointRestoreMetadataOutput')
    GetRestoreJobMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetRestoreJobMetadataInput', name: 'GetRestoreJobMetadataInput')
    GetRestoreJobMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetRestoreJobMetadataOutput', name: 'GetRestoreJobMetadataOutput')
    GetRestoreTestingInferredMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetRestoreTestingInferredMetadataInput', name: 'GetRestoreTestingInferredMetadataInput')
    GetRestoreTestingInferredMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetRestoreTestingInferredMetadataOutput', name: 'GetRestoreTestingInferredMetadataOutput')
    GetRestoreTestingPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetRestoreTestingPlanInput', name: 'GetRestoreTestingPlanInput')
    GetRestoreTestingPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetRestoreTestingPlanOutput', name: 'GetRestoreTestingPlanOutput')
    GetRestoreTestingSelectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetRestoreTestingSelectionInput', name: 'GetRestoreTestingSelectionInput')
    GetRestoreTestingSelectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetRestoreTestingSelectionOutput', name: 'GetRestoreTestingSelectionOutput')
    GetSupportedResourceTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#GetSupportedResourceTypesOutput', name: 'GetSupportedResourceTypesOutput')
    GlobalSettings = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.backup#GlobalSettings', name: 'GlobalSettings')
    GlobalSettingsName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#GlobalSettingsName', name: 'GlobalSettingsName')
    GlobalSettingsValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#GlobalSettingsValue', name: 'GlobalSettingsValue')
    IAMPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#IAMPolicy', name: 'IAMPolicy')
    IAMRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#IAMRoleArn', name: 'IAMRoleArn')
    Index = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#Index', name: 'Index')
    IndexAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#IndexAction', name: 'IndexAction')
    IndexActions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#IndexActions', name: 'IndexActions')
    IndexStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#IndexStatus', name: 'IndexStatus')
    IndexedRecoveryPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#IndexedRecoveryPoint', name: 'IndexedRecoveryPoint')
    IndexedRecoveryPointList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#IndexedRecoveryPointList', name: 'IndexedRecoveryPointList')
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#InvalidParameterValueException', name: 'InvalidParameterValueException', traits: {"smithy.api#error" => "client"})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client"})
    InvalidResourceStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#InvalidResourceStateException', name: 'InvalidResourceStateException', traits: {"smithy.api#error" => "client"})
    IsEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.backup#IsEnabled', name: 'IsEnabled', traits: {"smithy.api#default" => false})
    KeyValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#KeyValue', name: 'KeyValue')
    KeyValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#KeyValueList', name: 'KeyValueList')
    LatestMpaApprovalTeamUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#LatestMpaApprovalTeamUpdate', name: 'LatestMpaApprovalTeamUpdate')
    LatestRevokeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#LatestRevokeRequest', name: 'LatestRevokeRequest')
    LegalHold = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#LegalHold', name: 'LegalHold')
    LegalHoldStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#LegalHoldStatus', name: 'LegalHoldStatus')
    LegalHoldsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#LegalHoldsList', name: 'LegalHoldsList')
    Lifecycle = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#Lifecycle', name: 'Lifecycle')
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListBackupJobSummariesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListBackupJobSummariesInput', name: 'ListBackupJobSummariesInput')
    ListBackupJobSummariesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListBackupJobSummariesOutput', name: 'ListBackupJobSummariesOutput')
    ListBackupJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListBackupJobsInput', name: 'ListBackupJobsInput')
    ListBackupJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListBackupJobsOutput', name: 'ListBackupJobsOutput')
    ListBackupPlanTemplatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListBackupPlanTemplatesInput', name: 'ListBackupPlanTemplatesInput')
    ListBackupPlanTemplatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListBackupPlanTemplatesOutput', name: 'ListBackupPlanTemplatesOutput')
    ListBackupPlanVersionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListBackupPlanVersionsInput', name: 'ListBackupPlanVersionsInput')
    ListBackupPlanVersionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListBackupPlanVersionsOutput', name: 'ListBackupPlanVersionsOutput')
    ListBackupPlansInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListBackupPlansInput', name: 'ListBackupPlansInput')
    ListBackupPlansOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListBackupPlansOutput', name: 'ListBackupPlansOutput')
    ListBackupSelectionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListBackupSelectionsInput', name: 'ListBackupSelectionsInput')
    ListBackupSelectionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListBackupSelectionsOutput', name: 'ListBackupSelectionsOutput')
    ListBackupVaultsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListBackupVaultsInput', name: 'ListBackupVaultsInput')
    ListBackupVaultsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListBackupVaultsOutput', name: 'ListBackupVaultsOutput')
    ListCopyJobSummariesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListCopyJobSummariesInput', name: 'ListCopyJobSummariesInput')
    ListCopyJobSummariesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListCopyJobSummariesOutput', name: 'ListCopyJobSummariesOutput')
    ListCopyJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListCopyJobsInput', name: 'ListCopyJobsInput')
    ListCopyJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListCopyJobsOutput', name: 'ListCopyJobsOutput')
    ListFrameworksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListFrameworksInput', name: 'ListFrameworksInput')
    ListFrameworksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListFrameworksOutput', name: 'ListFrameworksOutput')
    ListIndexedRecoveryPointsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListIndexedRecoveryPointsInput', name: 'ListIndexedRecoveryPointsInput')
    ListIndexedRecoveryPointsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListIndexedRecoveryPointsOutput', name: 'ListIndexedRecoveryPointsOutput')
    ListLegalHoldsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListLegalHoldsInput', name: 'ListLegalHoldsInput')
    ListLegalHoldsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListLegalHoldsOutput', name: 'ListLegalHoldsOutput')
    ListOfTags = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#ListOfTags', name: 'ListOfTags')
    ListProtectedResourcesByBackupVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListProtectedResourcesByBackupVaultInput', name: 'ListProtectedResourcesByBackupVaultInput')
    ListProtectedResourcesByBackupVaultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListProtectedResourcesByBackupVaultOutput', name: 'ListProtectedResourcesByBackupVaultOutput')
    ListProtectedResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListProtectedResourcesInput', name: 'ListProtectedResourcesInput')
    ListProtectedResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListProtectedResourcesOutput', name: 'ListProtectedResourcesOutput')
    ListRecoveryPointsByBackupVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListRecoveryPointsByBackupVaultInput', name: 'ListRecoveryPointsByBackupVaultInput')
    ListRecoveryPointsByBackupVaultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListRecoveryPointsByBackupVaultOutput', name: 'ListRecoveryPointsByBackupVaultOutput')
    ListRecoveryPointsByLegalHoldInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListRecoveryPointsByLegalHoldInput', name: 'ListRecoveryPointsByLegalHoldInput')
    ListRecoveryPointsByLegalHoldOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListRecoveryPointsByLegalHoldOutput', name: 'ListRecoveryPointsByLegalHoldOutput')
    ListRecoveryPointsByResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListRecoveryPointsByResourceInput', name: 'ListRecoveryPointsByResourceInput')
    ListRecoveryPointsByResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListRecoveryPointsByResourceOutput', name: 'ListRecoveryPointsByResourceOutput')
    ListReportJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListReportJobsInput', name: 'ListReportJobsInput')
    ListReportJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListReportJobsOutput', name: 'ListReportJobsOutput')
    ListReportPlansInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListReportPlansInput', name: 'ListReportPlansInput')
    ListReportPlansOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListReportPlansOutput', name: 'ListReportPlansOutput')
    ListRestoreAccessBackupVaultsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListRestoreAccessBackupVaultsInput', name: 'ListRestoreAccessBackupVaultsInput')
    ListRestoreAccessBackupVaultsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListRestoreAccessBackupVaultsOutput', name: 'ListRestoreAccessBackupVaultsOutput')
    ListRestoreJobSummariesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListRestoreJobSummariesInput', name: 'ListRestoreJobSummariesInput')
    ListRestoreJobSummariesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListRestoreJobSummariesOutput', name: 'ListRestoreJobSummariesOutput')
    ListRestoreJobsByProtectedResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListRestoreJobsByProtectedResourceInput', name: 'ListRestoreJobsByProtectedResourceInput')
    ListRestoreJobsByProtectedResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListRestoreJobsByProtectedResourceOutput', name: 'ListRestoreJobsByProtectedResourceOutput')
    ListRestoreJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListRestoreJobsInput', name: 'ListRestoreJobsInput')
    ListRestoreJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListRestoreJobsOutput', name: 'ListRestoreJobsOutput')
    ListRestoreTestingPlansInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListRestoreTestingPlansInput', name: 'ListRestoreTestingPlansInput')
    ListRestoreTestingPlansInputMaxResultsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.backup#ListRestoreTestingPlansInputMaxResultsInteger', name: 'ListRestoreTestingPlansInputMaxResultsInteger', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListRestoreTestingPlansOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListRestoreTestingPlansOutput', name: 'ListRestoreTestingPlansOutput')
    ListRestoreTestingSelectionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListRestoreTestingSelectionsInput', name: 'ListRestoreTestingSelectionsInput')
    ListRestoreTestingSelectionsInputMaxResultsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.backup#ListRestoreTestingSelectionsInputMaxResultsInteger', name: 'ListRestoreTestingSelectionsInputMaxResultsInteger', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListRestoreTestingSelectionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListRestoreTestingSelectionsOutput', name: 'ListRestoreTestingSelectionsOutput')
    ListTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListTagsInput', name: 'ListTagsInput')
    ListTagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ListTagsOutput', name: 'ListTagsOutput')
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.backup#Long', name: 'Long')
    Long2 = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.backup#Long2', name: 'Long2', traits: {"smithy.api#default" => 0})
    MaxFrameworkInputs = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.backup#MaxFrameworkInputs', name: 'MaxFrameworkInputs', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.backup#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MessageCategory = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#MessageCategory', name: 'MessageCategory')
    Metadata = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.backup#Metadata', name: 'Metadata', traits: {"smithy.api#sensitive" => {}})
    MetadataKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#MetadataKey', name: 'MetadataKey')
    MetadataValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#MetadataValue', name: 'MetadataValue')
    MissingParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#MissingParameterValueException', name: 'MissingParameterValueException', traits: {"smithy.api#error" => "client"})
    MpaRevokeSessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#MpaRevokeSessionStatus', name: 'MpaRevokeSessionStatus')
    MpaSessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#MpaSessionStatus', name: 'MpaSessionStatus')
    ParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#ParameterName', name: 'ParameterName')
    ParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#ParameterValue', name: 'ParameterValue')
    ProtectedResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ProtectedResource', name: 'ProtectedResource')
    ProtectedResourceConditions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ProtectedResourceConditions', name: 'ProtectedResourceConditions')
    ProtectedResourcesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#ProtectedResourcesList', name: 'ProtectedResourcesList')
    PutBackupVaultAccessPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#PutBackupVaultAccessPolicyInput', name: 'PutBackupVaultAccessPolicyInput')
    PutBackupVaultLockConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#PutBackupVaultLockConfigurationInput', name: 'PutBackupVaultLockConfigurationInput')
    PutBackupVaultNotificationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#PutBackupVaultNotificationsInput', name: 'PutBackupVaultNotificationsInput')
    PutRestoreValidationResultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#PutRestoreValidationResultInput', name: 'PutRestoreValidationResultInput')
    RecoveryPointByBackupVault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#RecoveryPointByBackupVault', name: 'RecoveryPointByBackupVault')
    RecoveryPointByBackupVaultList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#RecoveryPointByBackupVaultList', name: 'RecoveryPointByBackupVaultList')
    RecoveryPointByResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#RecoveryPointByResource', name: 'RecoveryPointByResource')
    RecoveryPointByResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#RecoveryPointByResourceList', name: 'RecoveryPointByResourceList')
    RecoveryPointCreator = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#RecoveryPointCreator', name: 'RecoveryPointCreator')
    RecoveryPointMember = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#RecoveryPointMember', name: 'RecoveryPointMember')
    RecoveryPointSelection = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#RecoveryPointSelection', name: 'RecoveryPointSelection')
    RecoveryPointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#RecoveryPointStatus', name: 'RecoveryPointStatus')
    RecoveryPointsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#RecoveryPointsList', name: 'RecoveryPointsList')
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#Region', name: 'Region')
    ReportDeliveryChannel = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ReportDeliveryChannel', name: 'ReportDeliveryChannel')
    ReportDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ReportDestination', name: 'ReportDestination')
    ReportJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ReportJob', name: 'ReportJob')
    ReportJobId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#ReportJobId', name: 'ReportJobId')
    ReportJobList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#ReportJobList', name: 'ReportJobList')
    ReportPlan = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ReportPlan', name: 'ReportPlan')
    ReportPlanDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#ReportPlanDescription', name: 'ReportPlanDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    ReportPlanList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#ReportPlanList', name: 'ReportPlanList')
    ReportPlanName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#ReportPlanName', name: 'ReportPlanName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z][_a-zA-Z0-9]*$"})
    ReportSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ReportSetting', name: 'ReportSetting')
    RequesterComment = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#RequesterComment', name: 'RequesterComment', traits: {"smithy.api#sensitive" => {}})
    ResourceArns = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#ResourceArns', name: 'ResourceArns')
    ResourceIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#ResourceIdentifiers', name: 'ResourceIdentifiers')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#ResourceType', name: 'ResourceType', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_\\.]{1,50}$"})
    ResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#ResourceTypeList', name: 'ResourceTypeList')
    ResourceTypeManagementPreference = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.backup#ResourceTypeManagementPreference', name: 'ResourceTypeManagementPreference')
    ResourceTypeOptInPreference = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.backup#ResourceTypeOptInPreference', name: 'ResourceTypeOptInPreference')
    ResourceTypes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#ResourceTypes', name: 'ResourceTypes')
    RestoreAccessBackupVaultList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#RestoreAccessBackupVaultList', name: 'RestoreAccessBackupVaultList')
    RestoreAccessBackupVaultListMember = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#RestoreAccessBackupVaultListMember', name: 'RestoreAccessBackupVaultListMember')
    RestoreDeletionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#RestoreDeletionStatus', name: 'RestoreDeletionStatus')
    RestoreJobCreator = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#RestoreJobCreator', name: 'RestoreJobCreator')
    RestoreJobId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#RestoreJobId', name: 'RestoreJobId')
    RestoreJobState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#RestoreJobState', name: 'RestoreJobState')
    RestoreJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#RestoreJobStatus', name: 'RestoreJobStatus')
    RestoreJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#RestoreJobSummary', name: 'RestoreJobSummary')
    RestoreJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#RestoreJobSummaryList', name: 'RestoreJobSummaryList')
    RestoreJobsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#RestoreJobsList', name: 'RestoreJobsList')
    RestoreJobsListMember = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#RestoreJobsListMember', name: 'RestoreJobsListMember')
    RestoreTestingPlanForCreate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#RestoreTestingPlanForCreate', name: 'RestoreTestingPlanForCreate')
    RestoreTestingPlanForGet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#RestoreTestingPlanForGet', name: 'RestoreTestingPlanForGet')
    RestoreTestingPlanForList = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#RestoreTestingPlanForList', name: 'RestoreTestingPlanForList')
    RestoreTestingPlanForUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#RestoreTestingPlanForUpdate', name: 'RestoreTestingPlanForUpdate')
    RestoreTestingPlans = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#RestoreTestingPlans', name: 'RestoreTestingPlans')
    RestoreTestingRecoveryPointSelection = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#RestoreTestingRecoveryPointSelection', name: 'RestoreTestingRecoveryPointSelection')
    RestoreTestingRecoveryPointSelectionAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#RestoreTestingRecoveryPointSelectionAlgorithm', name: 'RestoreTestingRecoveryPointSelectionAlgorithm')
    RestoreTestingRecoveryPointType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#RestoreTestingRecoveryPointType', name: 'RestoreTestingRecoveryPointType')
    RestoreTestingRecoveryPointTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#RestoreTestingRecoveryPointTypeList', name: 'RestoreTestingRecoveryPointTypeList')
    RestoreTestingSelectionForCreate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#RestoreTestingSelectionForCreate', name: 'RestoreTestingSelectionForCreate')
    RestoreTestingSelectionForGet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#RestoreTestingSelectionForGet', name: 'RestoreTestingSelectionForGet')
    RestoreTestingSelectionForList = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#RestoreTestingSelectionForList', name: 'RestoreTestingSelectionForList')
    RestoreTestingSelectionForUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#RestoreTestingSelectionForUpdate', name: 'RestoreTestingSelectionForUpdate')
    RestoreTestingSelections = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#RestoreTestingSelections', name: 'RestoreTestingSelections')
    RestoreValidationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#RestoreValidationStatus', name: 'RestoreValidationStatus')
    RevokeRestoreAccessBackupVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#RevokeRestoreAccessBackupVaultInput', name: 'RevokeRestoreAccessBackupVaultInput')
    SensitiveStringMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.backup#SensitiveStringMap', name: 'SensitiveStringMap', traits: {"smithy.api#sensitive" => {}})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server"})
    StartBackupJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#StartBackupJobInput', name: 'StartBackupJobInput')
    StartBackupJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#StartBackupJobOutput', name: 'StartBackupJobOutput')
    StartCopyJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#StartCopyJobInput', name: 'StartCopyJobInput')
    StartCopyJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#StartCopyJobOutput', name: 'StartCopyJobOutput')
    StartReportJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#StartReportJobInput', name: 'StartReportJobInput')
    StartReportJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#StartReportJobOutput', name: 'StartReportJobOutput')
    StartRestoreJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#StartRestoreJobInput', name: 'StartRestoreJobInput')
    StartRestoreJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#StartRestoreJobOutput', name: 'StartRestoreJobOutput')
    StopBackupJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#StopBackupJobInput', name: 'StopBackupJobInput')
    StorageClass = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#StorageClass', name: 'StorageClass')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#TagKey', name: 'TagKey')
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#sensitive" => {}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#TagResourceInput', name: 'TagResourceInput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#TagValue', name: 'TagValue')
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.backup#Tags', name: 'Tags', traits: {"smithy.api#sensitive" => {}})
    Timezone = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#Timezone', name: 'Timezone')
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#UntagResourceInput', name: 'UntagResourceInput')
    UpdateBackupPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#UpdateBackupPlanInput', name: 'UpdateBackupPlanInput')
    UpdateBackupPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#UpdateBackupPlanOutput', name: 'UpdateBackupPlanOutput')
    UpdateFrameworkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#UpdateFrameworkInput', name: 'UpdateFrameworkInput')
    UpdateFrameworkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#UpdateFrameworkOutput', name: 'UpdateFrameworkOutput')
    UpdateGlobalSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#UpdateGlobalSettingsInput', name: 'UpdateGlobalSettingsInput')
    UpdateRecoveryPointIndexSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#UpdateRecoveryPointIndexSettingsInput', name: 'UpdateRecoveryPointIndexSettingsInput')
    UpdateRecoveryPointIndexSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#UpdateRecoveryPointIndexSettingsOutput', name: 'UpdateRecoveryPointIndexSettingsOutput')
    UpdateRecoveryPointLifecycleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#UpdateRecoveryPointLifecycleInput', name: 'UpdateRecoveryPointLifecycleInput')
    UpdateRecoveryPointLifecycleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#UpdateRecoveryPointLifecycleOutput', name: 'UpdateRecoveryPointLifecycleOutput')
    UpdateRegionSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#UpdateRegionSettingsInput', name: 'UpdateRegionSettingsInput')
    UpdateReportPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#UpdateReportPlanInput', name: 'UpdateReportPlanInput')
    UpdateReportPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#UpdateReportPlanOutput', name: 'UpdateReportPlanOutput')
    UpdateRestoreTestingPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#UpdateRestoreTestingPlanInput', name: 'UpdateRestoreTestingPlanInput')
    UpdateRestoreTestingPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#UpdateRestoreTestingPlanOutput', name: 'UpdateRestoreTestingPlanOutput')
    UpdateRestoreTestingSelectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#UpdateRestoreTestingSelectionInput', name: 'UpdateRestoreTestingSelectionInput')
    UpdateRestoreTestingSelectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backup#UpdateRestoreTestingSelectionOutput', name: 'UpdateRestoreTestingSelectionOutput')
    VaultNames = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#VaultNames', name: 'VaultNames')
    VaultState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#VaultState', name: 'VaultState')
    VaultType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backup#VaultType', name: 'VaultType')
    WindowMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.backup#WindowMinutes', name: 'WindowMinutes')
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.backup#integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backup#string', name: 'String')
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backup#stringList', name: 'StringList')
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.backup#stringMap', name: 'StringMap')
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.backup#timestamp', name: 'Timestamp')

    AdvancedBackupSetting.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    AdvancedBackupSetting.add_member(:backup_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupOptions, location_name: 'BackupOptions'))
    AdvancedBackupSetting.type = Types::AdvancedBackupSetting
    AdvancedBackupSettings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedBackupSetting)
    AggregationPeriod.add_member(:one_day, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_DAY', traits: {"smithy.api#enumValue" => "ONE_DAY"}))
    AggregationPeriod.add_member(:seven_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEVEN_DAYS', traits: {"smithy.api#enumValue" => "SEVEN_DAYS"}))
    AggregationPeriod.add_member(:fourteen_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOURTEEN_DAYS', traits: {"smithy.api#enumValue" => "FOURTEEN_DAYS"}))
    AlreadyExistsException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    AlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    AlreadyExistsException.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatorRequestId'))
    AlreadyExistsException.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    AlreadyExistsException.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    AlreadyExistsException.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Context'))
    AlreadyExistsException.type = Types::AlreadyExistsException
    AssociateBackupVaultMpaApprovalTeamInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateBackupVaultMpaApprovalTeamInput.add_member(:mpa_approval_team_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'MpaApprovalTeamArn', traits: {"smithy.api#required" => {}}))
    AssociateBackupVaultMpaApprovalTeamInput.add_member(:requester_comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequesterComment, location_name: 'RequesterComment'))
    AssociateBackupVaultMpaApprovalTeamInput.type = Types::AssociateBackupVaultMpaApprovalTeamInput
    BackupJob.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    BackupJob.add_member(:backup_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupJobId'))
    BackupJob.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName'))
    BackupJob.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'BackupVaultArn'))
    BackupJob.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn'))
    BackupJob.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ResourceArn'))
    BackupJob.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    BackupJob.add_member(:completion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CompletionDate'))
    BackupJob.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupJobState, location_name: 'State'))
    BackupJob.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage'))
    BackupJob.add_member(:percent_done, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PercentDone'))
    BackupJob.add_member(:backup_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'BackupSizeInBytes'))
    BackupJob.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'IamRoleArn'))
    BackupJob.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPointCreator, location_name: 'CreatedBy'))
    BackupJob.add_member(:expected_completion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpectedCompletionDate'))
    BackupJob.add_member(:start_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartBy'))
    BackupJob.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    BackupJob.add_member(:bytes_transferred, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'BytesTransferred'))
    BackupJob.add_member(:backup_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupOptions, location_name: 'BackupOptions'))
    BackupJob.add_member(:backup_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupType'))
    BackupJob.add_member(:parent_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParentJobId'))
    BackupJob.add_member(:is_parent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'IsParent', traits: {"smithy.api#default" => false}))
    BackupJob.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName'))
    BackupJob.add_member(:initiation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'InitiationDate'))
    BackupJob.add_member(:message_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MessageCategory'))
    BackupJob.type = Types::BackupJob
    BackupJobChildJobsInState.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupJobState)
    BackupJobChildJobsInState.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long)
    BackupJobState.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    BackupJobState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    BackupJobState.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    BackupJobState.add_member(:aborting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABORTING', traits: {"smithy.api#enumValue" => "ABORTING"}))
    BackupJobState.add_member(:aborted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABORTED', traits: {"smithy.api#enumValue" => "ABORTED"}))
    BackupJobState.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    BackupJobState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    BackupJobState.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    BackupJobState.add_member(:partial, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTIAL', traits: {"smithy.api#enumValue" => "PARTIAL"}))
    BackupJobStatus.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    BackupJobStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    BackupJobStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    BackupJobStatus.add_member(:aborting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABORTING', traits: {"smithy.api#enumValue" => "ABORTING"}))
    BackupJobStatus.add_member(:aborted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABORTED', traits: {"smithy.api#enumValue" => "ABORTED"}))
    BackupJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    BackupJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    BackupJobStatus.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    BackupJobStatus.add_member(:partial, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTIAL', traits: {"smithy.api#enumValue" => "PARTIAL"}))
    BackupJobStatus.add_member(:aggregate_all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AGGREGATE_ALL', traits: {"smithy.api#enumValue" => "AGGREGATE_ALL"}))
    BackupJobStatus.add_member(:any, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANY', traits: {"smithy.api#enumValue" => "ANY"}))
    BackupJobSummary.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'Region'))
    BackupJobSummary.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    BackupJobSummary.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupJobStatus, location_name: 'State'))
    BackupJobSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    BackupJobSummary.add_member(:message_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageCategory, location_name: 'MessageCategory'))
    BackupJobSummary.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Count', traits: {"smithy.api#default" => 0}))
    BackupJobSummary.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime'))
    BackupJobSummary.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime'))
    BackupJobSummary.type = Types::BackupJobSummary
    BackupJobSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupJobSummary)
    BackupJobsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupJob)
    BackupOptions.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupOptionKey)
    BackupOptions.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupOptionValue)
    BackupPlan.add_member(:backup_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPlanName, location_name: 'BackupPlanName', traits: {"smithy.api#required" => {}}))
    BackupPlan.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupRules, location_name: 'Rules', traits: {"smithy.api#required" => {}}))
    BackupPlan.add_member(:advanced_backup_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedBackupSettings, location_name: 'AdvancedBackupSettings'))
    BackupPlan.type = Types::BackupPlan
    BackupPlanInput.add_member(:backup_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPlanName, location_name: 'BackupPlanName', traits: {"smithy.api#required" => {}}))
    BackupPlanInput.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupRulesInput, location_name: 'Rules', traits: {"smithy.api#required" => {}}))
    BackupPlanInput.add_member(:advanced_backup_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedBackupSettings, location_name: 'AdvancedBackupSettings'))
    BackupPlanInput.type = Types::BackupPlanInput
    BackupPlanTemplatesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPlanTemplatesListMember)
    BackupPlanTemplatesListMember.add_member(:backup_plan_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanTemplateId'))
    BackupPlanTemplatesListMember.add_member(:backup_plan_template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanTemplateName'))
    BackupPlanTemplatesListMember.type = Types::BackupPlanTemplatesListMember
    BackupPlanVersionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPlansListMember)
    BackupPlansList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPlansListMember)
    BackupPlansListMember.add_member(:backup_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'BackupPlanArn'))
    BackupPlansListMember.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanId'))
    BackupPlansListMember.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    BackupPlansListMember.add_member(:deletion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DeletionDate'))
    BackupPlansListMember.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VersionId'))
    BackupPlansListMember.add_member(:backup_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPlanName, location_name: 'BackupPlanName'))
    BackupPlansListMember.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatorRequestId'))
    BackupPlansListMember.add_member(:last_execution_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastExecutionDate'))
    BackupPlansListMember.add_member(:advanced_backup_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedBackupSettings, location_name: 'AdvancedBackupSettings'))
    BackupPlansListMember.type = Types::BackupPlansListMember
    BackupRule.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupRuleName, location_name: 'RuleName', traits: {"smithy.api#required" => {}}))
    BackupRule.add_member(:target_backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'TargetBackupVaultName', traits: {"smithy.api#required" => {}}))
    BackupRule.add_member(:schedule_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CronExpression, location_name: 'ScheduleExpression'))
    BackupRule.add_member(:start_window_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WindowMinutes, location_name: 'StartWindowMinutes'))
    BackupRule.add_member(:completion_window_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WindowMinutes, location_name: 'CompletionWindowMinutes'))
    BackupRule.add_member(:lifecycle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Lifecycle, location_name: 'Lifecycle'))
    BackupRule.add_member(:recovery_point_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'RecoveryPointTags'))
    BackupRule.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuleId'))
    BackupRule.add_member(:copy_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyActions, location_name: 'CopyActions'))
    BackupRule.add_member(:enable_continuous_backup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableContinuousBackup'))
    BackupRule.add_member(:schedule_expression_timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timezone, location_name: 'ScheduleExpressionTimezone'))
    BackupRule.add_member(:index_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexActions, location_name: 'IndexActions'))
    BackupRule.type = Types::BackupRule
    BackupRuleInput.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupRuleName, location_name: 'RuleName', traits: {"smithy.api#required" => {}}))
    BackupRuleInput.add_member(:target_backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'TargetBackupVaultName', traits: {"smithy.api#required" => {}}))
    BackupRuleInput.add_member(:schedule_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CronExpression, location_name: 'ScheduleExpression'))
    BackupRuleInput.add_member(:start_window_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WindowMinutes, location_name: 'StartWindowMinutes'))
    BackupRuleInput.add_member(:completion_window_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WindowMinutes, location_name: 'CompletionWindowMinutes'))
    BackupRuleInput.add_member(:lifecycle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Lifecycle, location_name: 'Lifecycle'))
    BackupRuleInput.add_member(:recovery_point_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'RecoveryPointTags'))
    BackupRuleInput.add_member(:copy_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyActions, location_name: 'CopyActions'))
    BackupRuleInput.add_member(:enable_continuous_backup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableContinuousBackup'))
    BackupRuleInput.add_member(:schedule_expression_timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timezone, location_name: 'ScheduleExpressionTimezone'))
    BackupRuleInput.add_member(:index_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexActions, location_name: 'IndexActions'))
    BackupRuleInput.type = Types::BackupRuleInput
    BackupRules.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupRule)
    BackupRulesInput.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupRuleInput)
    BackupSelection.add_member(:selection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupSelectionName, location_name: 'SelectionName', traits: {"smithy.api#required" => {}}))
    BackupSelection.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'IamRoleArn', traits: {"smithy.api#required" => {}}))
    BackupSelection.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArns, location_name: 'Resources'))
    BackupSelection.add_member(:list_of_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfTags, location_name: 'ListOfTags'))
    BackupSelection.add_member(:not_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArns, location_name: 'NotResources'))
    BackupSelection.add_member(:conditions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Conditions, location_name: 'Conditions'))
    BackupSelection.type = Types::BackupSelection
    BackupSelectionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupSelectionsListMember)
    BackupSelectionsListMember.add_member(:selection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SelectionId'))
    BackupSelectionsListMember.add_member(:selection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupSelectionName, location_name: 'SelectionName'))
    BackupSelectionsListMember.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanId'))
    BackupSelectionsListMember.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    BackupSelectionsListMember.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatorRequestId'))
    BackupSelectionsListMember.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'IamRoleArn'))
    BackupSelectionsListMember.type = Types::BackupSelectionsListMember
    BackupVaultEvent.add_member(:backup_job_started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACKUP_JOB_STARTED', traits: {"smithy.api#enumValue" => "BACKUP_JOB_STARTED"}))
    BackupVaultEvent.add_member(:backup_job_completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACKUP_JOB_COMPLETED', traits: {"smithy.api#enumValue" => "BACKUP_JOB_COMPLETED"}))
    BackupVaultEvent.add_member(:backup_job_successful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACKUP_JOB_SUCCESSFUL', traits: {"smithy.api#enumValue" => "BACKUP_JOB_SUCCESSFUL"}))
    BackupVaultEvent.add_member(:backup_job_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACKUP_JOB_FAILED', traits: {"smithy.api#enumValue" => "BACKUP_JOB_FAILED"}))
    BackupVaultEvent.add_member(:backup_job_expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACKUP_JOB_EXPIRED', traits: {"smithy.api#enumValue" => "BACKUP_JOB_EXPIRED"}))
    BackupVaultEvent.add_member(:restore_job_started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTORE_JOB_STARTED', traits: {"smithy.api#enumValue" => "RESTORE_JOB_STARTED"}))
    BackupVaultEvent.add_member(:restore_job_completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTORE_JOB_COMPLETED', traits: {"smithy.api#enumValue" => "RESTORE_JOB_COMPLETED"}))
    BackupVaultEvent.add_member(:restore_job_successful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTORE_JOB_SUCCESSFUL', traits: {"smithy.api#enumValue" => "RESTORE_JOB_SUCCESSFUL"}))
    BackupVaultEvent.add_member(:restore_job_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTORE_JOB_FAILED', traits: {"smithy.api#enumValue" => "RESTORE_JOB_FAILED"}))
    BackupVaultEvent.add_member(:copy_job_started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COPY_JOB_STARTED', traits: {"smithy.api#enumValue" => "COPY_JOB_STARTED"}))
    BackupVaultEvent.add_member(:copy_job_successful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COPY_JOB_SUCCESSFUL', traits: {"smithy.api#enumValue" => "COPY_JOB_SUCCESSFUL"}))
    BackupVaultEvent.add_member(:copy_job_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COPY_JOB_FAILED', traits: {"smithy.api#enumValue" => "COPY_JOB_FAILED"}))
    BackupVaultEvent.add_member(:recovery_point_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECOVERY_POINT_MODIFIED', traits: {"smithy.api#enumValue" => "RECOVERY_POINT_MODIFIED"}))
    BackupVaultEvent.add_member(:backup_plan_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACKUP_PLAN_CREATED', traits: {"smithy.api#enumValue" => "BACKUP_PLAN_CREATED"}))
    BackupVaultEvent.add_member(:backup_plan_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACKUP_PLAN_MODIFIED', traits: {"smithy.api#enumValue" => "BACKUP_PLAN_MODIFIED"}))
    BackupVaultEvent.add_member(:s3_backup_object_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_BACKUP_OBJECT_FAILED', traits: {"smithy.api#enumValue" => "S3_BACKUP_OBJECT_FAILED"}))
    BackupVaultEvent.add_member(:s3_restore_object_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_RESTORE_OBJECT_FAILED', traits: {"smithy.api#enumValue" => "S3_RESTORE_OBJECT_FAILED"}))
    BackupVaultEvent.add_member(:continuous_backup_interrupted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTINUOUS_BACKUP_INTERRUPTED', traits: {"smithy.api#enumValue" => "CONTINUOUS_BACKUP_INTERRUPTED"}))
    BackupVaultEvent.add_member(:recovery_point_index_completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECOVERY_POINT_INDEX_COMPLETED', traits: {"smithy.api#enumValue" => "RECOVERY_POINT_INDEX_COMPLETED"}))
    BackupVaultEvent.add_member(:recovery_point_index_deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECOVERY_POINT_INDEX_DELETED', traits: {"smithy.api#enumValue" => "RECOVERY_POINT_INDEX_DELETED"}))
    BackupVaultEvent.add_member(:recovery_point_indexing_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECOVERY_POINT_INDEXING_FAILED', traits: {"smithy.api#enumValue" => "RECOVERY_POINT_INDEXING_FAILED"}))
    BackupVaultEvents.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultEvent)
    BackupVaultList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultListMember)
    BackupVaultListMember.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName'))
    BackupVaultListMember.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'BackupVaultArn'))
    BackupVaultListMember.add_member(:vault_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VaultType, location_name: 'VaultType'))
    BackupVaultListMember.add_member(:vault_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VaultState, location_name: 'VaultState'))
    BackupVaultListMember.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    BackupVaultListMember.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'EncryptionKeyArn'))
    BackupVaultListMember.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatorRequestId'))
    BackupVaultListMember.add_member(:number_of_recovery_points, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long2, location_name: 'NumberOfRecoveryPoints', traits: {"smithy.api#default" => 0}))
    BackupVaultListMember.add_member(:locked, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Locked'))
    BackupVaultListMember.add_member(:min_retention_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'MinRetentionDays'))
    BackupVaultListMember.add_member(:max_retention_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'MaxRetentionDays'))
    BackupVaultListMember.add_member(:lock_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LockDate'))
    BackupVaultListMember.type = Types::BackupVaultListMember
    CalculatedLifecycle.add_member(:move_to_cold_storage_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'MoveToColdStorageAt'))
    CalculatedLifecycle.add_member(:delete_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DeleteAt'))
    CalculatedLifecycle.type = Types::CalculatedLifecycle
    CancelLegalHoldInput.add_member(:legal_hold_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LegalHoldId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelLegalHoldInput.add_member(:cancel_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CancelDescription', traits: {"smithy.api#httpQuery" => "cancelDescription", "smithy.api#required" => {}}))
    CancelLegalHoldInput.add_member(:retain_record_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'RetainRecordInDays', traits: {"smithy.api#httpQuery" => "retainRecordInDays"}))
    CancelLegalHoldInput.type = Types::CancelLegalHoldInput
    CancelLegalHoldOutput.type = Types::CancelLegalHoldOutput
    ComplianceResourceIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Condition.add_member(:condition_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionType, location_name: 'ConditionType', traits: {"smithy.api#required" => {}}))
    Condition.add_member(:condition_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionKey, location_name: 'ConditionKey', traits: {"smithy.api#required" => {}}))
    Condition.add_member(:condition_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionValue, location_name: 'ConditionValue', traits: {"smithy.api#required" => {}}))
    Condition.type = Types::Condition
    ConditionParameter.add_member(:condition_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionKey, location_name: 'ConditionKey'))
    ConditionParameter.add_member(:condition_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionValue, location_name: 'ConditionValue'))
    ConditionParameter.type = Types::ConditionParameter
    ConditionParameters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionParameter)
    ConditionType.add_member(:stringequals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRINGEQUALS', traits: {"smithy.api#enumValue" => "STRINGEQUALS"}))
    Conditions.add_member(:string_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionParameters, location_name: 'StringEquals'))
    Conditions.add_member(:string_not_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionParameters, location_name: 'StringNotEquals'))
    Conditions.add_member(:string_like, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionParameters, location_name: 'StringLike'))
    Conditions.add_member(:string_not_like, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionParameters, location_name: 'StringNotLike'))
    Conditions.type = Types::Conditions
    ConflictException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ConflictException.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    ConflictException.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Context'))
    ConflictException.type = Types::ConflictException
    ControlInputParameter.add_member(:parameter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName, location_name: 'ParameterName'))
    ControlInputParameter.add_member(:parameter_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValue, location_name: 'ParameterValue'))
    ControlInputParameter.type = Types::ControlInputParameter
    ControlInputParameters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlInputParameter)
    ControlScope.add_member(:compliance_resource_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceResourceIdList, location_name: 'ComplianceResourceIds'))
    ControlScope.add_member(:compliance_resource_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeList, location_name: 'ComplianceResourceTypes'))
    ControlScope.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'Tags'))
    ControlScope.type = Types::ControlScope
    CopyAction.add_member(:lifecycle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Lifecycle, location_name: 'Lifecycle'))
    CopyAction.add_member(:destination_backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'DestinationBackupVaultArn', traits: {"smithy.api#required" => {}}))
    CopyAction.type = Types::CopyAction
    CopyActions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyAction)
    CopyJob.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    CopyJob.add_member(:copy_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CopyJobId'))
    CopyJob.add_member(:source_backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'SourceBackupVaultArn'))
    CopyJob.add_member(:source_recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'SourceRecoveryPointArn'))
    CopyJob.add_member(:destination_backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'DestinationBackupVaultArn'))
    CopyJob.add_member(:destination_recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'DestinationRecoveryPointArn'))
    CopyJob.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ResourceArn'))
    CopyJob.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    CopyJob.add_member(:completion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CompletionDate'))
    CopyJob.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyJobState, location_name: 'State'))
    CopyJob.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage'))
    CopyJob.add_member(:backup_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'BackupSizeInBytes'))
    CopyJob.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'IamRoleArn'))
    CopyJob.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPointCreator, location_name: 'CreatedBy'))
    CopyJob.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    CopyJob.add_member(:parent_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParentJobId'))
    CopyJob.add_member(:is_parent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'IsParent', traits: {"smithy.api#default" => false}))
    CopyJob.add_member(:composite_member_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CompositeMemberIdentifier'))
    CopyJob.add_member(:number_of_child_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'NumberOfChildJobs'))
    CopyJob.add_member(:child_jobs_in_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyJobChildJobsInState, location_name: 'ChildJobsInState'))
    CopyJob.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName'))
    CopyJob.add_member(:message_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MessageCategory'))
    CopyJob.type = Types::CopyJob
    CopyJobChildJobsInState.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyJobState)
    CopyJobChildJobsInState.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long)
    CopyJobState.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    CopyJobState.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    CopyJobState.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CopyJobState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CopyJobState.add_member(:partial, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTIAL', traits: {"smithy.api#enumValue" => "PARTIAL"}))
    CopyJobStatus.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    CopyJobStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    CopyJobStatus.add_member(:aborting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABORTING', traits: {"smithy.api#enumValue" => "ABORTING"}))
    CopyJobStatus.add_member(:aborted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABORTED', traits: {"smithy.api#enumValue" => "ABORTED"}))
    CopyJobStatus.add_member(:completing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETING', traits: {"smithy.api#enumValue" => "COMPLETING"}))
    CopyJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CopyJobStatus.add_member(:failing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILING', traits: {"smithy.api#enumValue" => "FAILING"}))
    CopyJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CopyJobStatus.add_member(:partial, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTIAL', traits: {"smithy.api#enumValue" => "PARTIAL"}))
    CopyJobStatus.add_member(:aggregate_all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AGGREGATE_ALL', traits: {"smithy.api#enumValue" => "AGGREGATE_ALL"}))
    CopyJobStatus.add_member(:any, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANY', traits: {"smithy.api#enumValue" => "ANY"}))
    CopyJobSummary.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'Region'))
    CopyJobSummary.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    CopyJobSummary.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyJobStatus, location_name: 'State'))
    CopyJobSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    CopyJobSummary.add_member(:message_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageCategory, location_name: 'MessageCategory'))
    CopyJobSummary.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Count', traits: {"smithy.api#default" => 0}))
    CopyJobSummary.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime'))
    CopyJobSummary.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime'))
    CopyJobSummary.type = Types::CopyJobSummary
    CopyJobSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyJobSummary)
    CopyJobsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyJob)
    CreateBackupPlanInput.add_member(:backup_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPlanInput, location_name: 'BackupPlan', traits: {"smithy.api#required" => {}}))
    CreateBackupPlanInput.add_member(:backup_plan_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'BackupPlanTags'))
    CreateBackupPlanInput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatorRequestId', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateBackupPlanInput.type = Types::CreateBackupPlanInput
    CreateBackupPlanOutput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanId'))
    CreateBackupPlanOutput.add_member(:backup_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'BackupPlanArn'))
    CreateBackupPlanOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    CreateBackupPlanOutput.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VersionId'))
    CreateBackupPlanOutput.add_member(:advanced_backup_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedBackupSettings, location_name: 'AdvancedBackupSettings'))
    CreateBackupPlanOutput.type = Types::CreateBackupPlanOutput
    CreateBackupSelectionInput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBackupSelectionInput.add_member(:backup_selection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupSelection, location_name: 'BackupSelection', traits: {"smithy.api#required" => {}}))
    CreateBackupSelectionInput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatorRequestId', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateBackupSelectionInput.type = Types::CreateBackupSelectionInput
    CreateBackupSelectionOutput.add_member(:selection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SelectionId'))
    CreateBackupSelectionOutput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanId'))
    CreateBackupSelectionOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    CreateBackupSelectionOutput.type = Types::CreateBackupSelectionOutput
    CreateBackupVaultInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBackupVaultInput.add_member(:backup_vault_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'BackupVaultTags'))
    CreateBackupVaultInput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'EncryptionKeyArn'))
    CreateBackupVaultInput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatorRequestId', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateBackupVaultInput.type = Types::CreateBackupVaultInput
    CreateBackupVaultOutput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName'))
    CreateBackupVaultOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'BackupVaultArn'))
    CreateBackupVaultOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    CreateBackupVaultOutput.type = Types::CreateBackupVaultOutput
    CreateFrameworkInput.add_member(:framework_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkName, location_name: 'FrameworkName', traits: {"smithy.api#required" => {}}))
    CreateFrameworkInput.add_member(:framework_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: 'FrameworkDescription'))
    CreateFrameworkInput.add_member(:framework_controls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkControls, location_name: 'FrameworkControls', traits: {"smithy.api#required" => {}}))
    CreateFrameworkInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdempotencyToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateFrameworkInput.add_member(:framework_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'FrameworkTags'))
    CreateFrameworkInput.type = Types::CreateFrameworkInput
    CreateFrameworkOutput.add_member(:framework_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkName, location_name: 'FrameworkName'))
    CreateFrameworkOutput.add_member(:framework_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'FrameworkArn'))
    CreateFrameworkOutput.type = Types::CreateFrameworkOutput
    CreateLegalHoldInput.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title', traits: {"smithy.api#required" => {}}))
    CreateLegalHoldInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    CreateLegalHoldInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdempotencyToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateLegalHoldInput.add_member(:recovery_point_selection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPointSelection, location_name: 'RecoveryPointSelection'))
    CreateLegalHoldInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateLegalHoldInput.type = Types::CreateLegalHoldInput
    CreateLegalHoldOutput.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title'))
    CreateLegalHoldOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LegalHoldStatus, location_name: 'Status'))
    CreateLegalHoldOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    CreateLegalHoldOutput.add_member(:legal_hold_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LegalHoldId'))
    CreateLegalHoldOutput.add_member(:legal_hold_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'LegalHoldArn'))
    CreateLegalHoldOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    CreateLegalHoldOutput.add_member(:recovery_point_selection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPointSelection, location_name: 'RecoveryPointSelection'))
    CreateLegalHoldOutput.type = Types::CreateLegalHoldOutput
    CreateLogicallyAirGappedBackupVaultInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLogicallyAirGappedBackupVaultInput.add_member(:backup_vault_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'BackupVaultTags'))
    CreateLogicallyAirGappedBackupVaultInput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatorRequestId', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateLogicallyAirGappedBackupVaultInput.add_member(:min_retention_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'MinRetentionDays', traits: {"smithy.api#required" => {}}))
    CreateLogicallyAirGappedBackupVaultInput.add_member(:max_retention_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'MaxRetentionDays', traits: {"smithy.api#required" => {}}))
    CreateLogicallyAirGappedBackupVaultInput.type = Types::CreateLogicallyAirGappedBackupVaultInput
    CreateLogicallyAirGappedBackupVaultOutput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName'))
    CreateLogicallyAirGappedBackupVaultOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'BackupVaultArn'))
    CreateLogicallyAirGappedBackupVaultOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    CreateLogicallyAirGappedBackupVaultOutput.add_member(:vault_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VaultState, location_name: 'VaultState'))
    CreateLogicallyAirGappedBackupVaultOutput.type = Types::CreateLogicallyAirGappedBackupVaultOutput
    CreateReportPlanInput.add_member(:report_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportPlanName, location_name: 'ReportPlanName', traits: {"smithy.api#required" => {}}))
    CreateReportPlanInput.add_member(:report_plan_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportPlanDescription, location_name: 'ReportPlanDescription'))
    CreateReportPlanInput.add_member(:report_delivery_channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportDeliveryChannel, location_name: 'ReportDeliveryChannel', traits: {"smithy.api#required" => {}}))
    CreateReportPlanInput.add_member(:report_setting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportSetting, location_name: 'ReportSetting', traits: {"smithy.api#required" => {}}))
    CreateReportPlanInput.add_member(:report_plan_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'ReportPlanTags'))
    CreateReportPlanInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdempotencyToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateReportPlanInput.type = Types::CreateReportPlanInput
    CreateReportPlanOutput.add_member(:report_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportPlanName, location_name: 'ReportPlanName'))
    CreateReportPlanOutput.add_member(:report_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ReportPlanArn'))
    CreateReportPlanOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime'))
    CreateReportPlanOutput.type = Types::CreateReportPlanOutput
    CreateRestoreAccessBackupVaultInput.add_member(:source_backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'SourceBackupVaultArn', traits: {"smithy.api#required" => {}}))
    CreateRestoreAccessBackupVaultInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName'))
    CreateRestoreAccessBackupVaultInput.add_member(:backup_vault_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'BackupVaultTags'))
    CreateRestoreAccessBackupVaultInput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatorRequestId', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRestoreAccessBackupVaultInput.add_member(:requester_comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequesterComment, location_name: 'RequesterComment'))
    CreateRestoreAccessBackupVaultInput.type = Types::CreateRestoreAccessBackupVaultInput
    CreateRestoreAccessBackupVaultOutput.add_member(:restore_access_backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RestoreAccessBackupVaultArn'))
    CreateRestoreAccessBackupVaultOutput.add_member(:vault_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VaultState, location_name: 'VaultState'))
    CreateRestoreAccessBackupVaultOutput.add_member(:restore_access_backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'RestoreAccessBackupVaultName'))
    CreateRestoreAccessBackupVaultOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    CreateRestoreAccessBackupVaultOutput.type = Types::CreateRestoreAccessBackupVaultOutput
    CreateRestoreTestingPlanInput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'CreatorRequestId'))
    CreateRestoreTestingPlanInput.add_member(:restore_testing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTestingPlanForCreate, location_name: 'RestoreTestingPlan', traits: {"smithy.api#required" => {}}))
    CreateRestoreTestingPlanInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringMap, location_name: 'Tags'))
    CreateRestoreTestingPlanInput.type = Types::CreateRestoreTestingPlanInput
    CreateRestoreTestingPlanOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}}))
    CreateRestoreTestingPlanOutput.add_member(:restore_testing_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanArn', traits: {"smithy.api#required" => {}}))
    CreateRestoreTestingPlanOutput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanName', traits: {"smithy.api#required" => {}}))
    CreateRestoreTestingPlanOutput.type = Types::CreateRestoreTestingPlanOutput
    CreateRestoreTestingSelectionInput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'CreatorRequestId'))
    CreateRestoreTestingSelectionInput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRestoreTestingSelectionInput.add_member(:restore_testing_selection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTestingSelectionForCreate, location_name: 'RestoreTestingSelection', traits: {"smithy.api#required" => {}}))
    CreateRestoreTestingSelectionInput.type = Types::CreateRestoreTestingSelectionInput
    CreateRestoreTestingSelectionOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}}))
    CreateRestoreTestingSelectionOutput.add_member(:restore_testing_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanArn', traits: {"smithy.api#required" => {}}))
    CreateRestoreTestingSelectionOutput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanName', traits: {"smithy.api#required" => {}}))
    CreateRestoreTestingSelectionOutput.add_member(:restore_testing_selection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingSelectionName', traits: {"smithy.api#required" => {}}))
    CreateRestoreTestingSelectionOutput.type = Types::CreateRestoreTestingSelectionOutput
    DateRange.add_member(:from_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'FromDate', traits: {"smithy.api#required" => {}}))
    DateRange.add_member(:to_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ToDate', traits: {"smithy.api#required" => {}}))
    DateRange.type = Types::DateRange
    DeleteBackupPlanInput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackupPlanInput.type = Types::DeleteBackupPlanInput
    DeleteBackupPlanOutput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanId'))
    DeleteBackupPlanOutput.add_member(:backup_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'BackupPlanArn'))
    DeleteBackupPlanOutput.add_member(:deletion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DeletionDate'))
    DeleteBackupPlanOutput.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VersionId'))
    DeleteBackupPlanOutput.type = Types::DeleteBackupPlanOutput
    DeleteBackupSelectionInput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackupSelectionInput.add_member(:selection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SelectionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackupSelectionInput.type = Types::DeleteBackupSelectionInput
    DeleteBackupVaultAccessPolicyInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackupVaultAccessPolicyInput.type = Types::DeleteBackupVaultAccessPolicyInput
    DeleteBackupVaultInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackupVaultInput.type = Types::DeleteBackupVaultInput
    DeleteBackupVaultLockConfigurationInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackupVaultLockConfigurationInput.type = Types::DeleteBackupVaultLockConfigurationInput
    DeleteBackupVaultNotificationsInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackupVaultNotificationsInput.type = Types::DeleteBackupVaultNotificationsInput
    DeleteFrameworkInput.add_member(:framework_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkName, location_name: 'FrameworkName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFrameworkInput.type = Types::DeleteFrameworkInput
    DeleteRecoveryPointInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecoveryPointInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecoveryPointInput.type = Types::DeleteRecoveryPointInput
    DeleteReportPlanInput.add_member(:report_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportPlanName, location_name: 'ReportPlanName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteReportPlanInput.type = Types::DeleteReportPlanInput
    DeleteRestoreTestingPlanInput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRestoreTestingPlanInput.type = Types::DeleteRestoreTestingPlanInput
    DeleteRestoreTestingSelectionInput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRestoreTestingSelectionInput.add_member(:restore_testing_selection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingSelectionName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRestoreTestingSelectionInput.type = Types::DeleteRestoreTestingSelectionInput
    DependencyFailureException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    DependencyFailureException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    DependencyFailureException.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    DependencyFailureException.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Context'))
    DependencyFailureException.type = Types::DependencyFailureException
    DescribeBackupJobInput.add_member(:backup_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupJobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBackupJobInput.type = Types::DescribeBackupJobInput
    DescribeBackupJobOutput.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    DescribeBackupJobOutput.add_member(:backup_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupJobId'))
    DescribeBackupJobOutput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName'))
    DescribeBackupJobOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'BackupVaultArn'))
    DescribeBackupJobOutput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn'))
    DescribeBackupJobOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ResourceArn'))
    DescribeBackupJobOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    DescribeBackupJobOutput.add_member(:completion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CompletionDate'))
    DescribeBackupJobOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupJobState, location_name: 'State'))
    DescribeBackupJobOutput.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage'))
    DescribeBackupJobOutput.add_member(:percent_done, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PercentDone'))
    DescribeBackupJobOutput.add_member(:backup_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'BackupSizeInBytes'))
    DescribeBackupJobOutput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'IamRoleArn'))
    DescribeBackupJobOutput.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPointCreator, location_name: 'CreatedBy'))
    DescribeBackupJobOutput.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    DescribeBackupJobOutput.add_member(:bytes_transferred, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'BytesTransferred'))
    DescribeBackupJobOutput.add_member(:expected_completion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpectedCompletionDate'))
    DescribeBackupJobOutput.add_member(:start_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartBy'))
    DescribeBackupJobOutput.add_member(:backup_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupOptions, location_name: 'BackupOptions'))
    DescribeBackupJobOutput.add_member(:backup_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupType'))
    DescribeBackupJobOutput.add_member(:parent_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParentJobId'))
    DescribeBackupJobOutput.add_member(:is_parent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'IsParent', traits: {"smithy.api#default" => false}))
    DescribeBackupJobOutput.add_member(:number_of_child_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'NumberOfChildJobs'))
    DescribeBackupJobOutput.add_member(:child_jobs_in_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupJobChildJobsInState, location_name: 'ChildJobsInState'))
    DescribeBackupJobOutput.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName'))
    DescribeBackupJobOutput.add_member(:initiation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'InitiationDate'))
    DescribeBackupJobOutput.add_member(:message_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MessageCategory'))
    DescribeBackupJobOutput.type = Types::DescribeBackupJobOutput
    DescribeBackupVaultInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBackupVaultInput.add_member(:backup_vault_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupVaultAccountId', traits: {"smithy.api#httpQuery" => "backupVaultAccountId"}))
    DescribeBackupVaultInput.type = Types::DescribeBackupVaultInput
    DescribeBackupVaultOutput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupVaultName'))
    DescribeBackupVaultOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'BackupVaultArn'))
    DescribeBackupVaultOutput.add_member(:vault_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VaultType, location_name: 'VaultType'))
    DescribeBackupVaultOutput.add_member(:vault_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VaultState, location_name: 'VaultState'))
    DescribeBackupVaultOutput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'EncryptionKeyArn'))
    DescribeBackupVaultOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    DescribeBackupVaultOutput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatorRequestId'))
    DescribeBackupVaultOutput.add_member(:number_of_recovery_points, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long2, location_name: 'NumberOfRecoveryPoints', traits: {"smithy.api#default" => 0}))
    DescribeBackupVaultOutput.add_member(:locked, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Locked'))
    DescribeBackupVaultOutput.add_member(:min_retention_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'MinRetentionDays'))
    DescribeBackupVaultOutput.add_member(:max_retention_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'MaxRetentionDays'))
    DescribeBackupVaultOutput.add_member(:lock_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LockDate'))
    DescribeBackupVaultOutput.add_member(:source_backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'SourceBackupVaultArn'))
    DescribeBackupVaultOutput.add_member(:mpa_approval_team_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'MpaApprovalTeamArn'))
    DescribeBackupVaultOutput.add_member(:mpa_session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'MpaSessionArn'))
    DescribeBackupVaultOutput.add_member(:latest_mpa_approval_team_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LatestMpaApprovalTeamUpdate, location_name: 'LatestMpaApprovalTeamUpdate'))
    DescribeBackupVaultOutput.type = Types::DescribeBackupVaultOutput
    DescribeCopyJobInput.add_member(:copy_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CopyJobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeCopyJobInput.type = Types::DescribeCopyJobInput
    DescribeCopyJobOutput.add_member(:copy_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyJob, location_name: 'CopyJob'))
    DescribeCopyJobOutput.type = Types::DescribeCopyJobOutput
    DescribeFrameworkInput.add_member(:framework_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkName, location_name: 'FrameworkName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeFrameworkInput.type = Types::DescribeFrameworkInput
    DescribeFrameworkOutput.add_member(:framework_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkName, location_name: 'FrameworkName'))
    DescribeFrameworkOutput.add_member(:framework_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'FrameworkArn'))
    DescribeFrameworkOutput.add_member(:framework_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: 'FrameworkDescription'))
    DescribeFrameworkOutput.add_member(:framework_controls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkControls, location_name: 'FrameworkControls'))
    DescribeFrameworkOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime'))
    DescribeFrameworkOutput.add_member(:deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentStatus'))
    DescribeFrameworkOutput.add_member(:framework_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FrameworkStatus'))
    DescribeFrameworkOutput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdempotencyToken'))
    DescribeFrameworkOutput.type = Types::DescribeFrameworkOutput
    DescribeGlobalSettingsInput.type = Types::DescribeGlobalSettingsInput
    DescribeGlobalSettingsOutput.add_member(:global_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSettings, location_name: 'GlobalSettings'))
    DescribeGlobalSettingsOutput.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdateTime'))
    DescribeGlobalSettingsOutput.type = Types::DescribeGlobalSettingsOutput
    DescribeProtectedResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeProtectedResourceInput.type = Types::DescribeProtectedResourceInput
    DescribeProtectedResourceOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ResourceArn'))
    DescribeProtectedResourceOutput.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    DescribeProtectedResourceOutput.add_member(:last_backup_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastBackupTime'))
    DescribeProtectedResourceOutput.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName'))
    DescribeProtectedResourceOutput.add_member(:last_backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'LastBackupVaultArn'))
    DescribeProtectedResourceOutput.add_member(:last_recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'LastRecoveryPointArn'))
    DescribeProtectedResourceOutput.add_member(:latest_restore_execution_time_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'LatestRestoreExecutionTimeMinutes'))
    DescribeProtectedResourceOutput.add_member(:latest_restore_job_creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LatestRestoreJobCreationDate'))
    DescribeProtectedResourceOutput.add_member(:latest_restore_recovery_point_creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LatestRestoreRecoveryPointCreationDate'))
    DescribeProtectedResourceOutput.type = Types::DescribeProtectedResourceOutput
    DescribeRecoveryPointInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRecoveryPointInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRecoveryPointInput.add_member(:backup_vault_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'BackupVaultAccountId', traits: {"smithy.api#httpQuery" => "backupVaultAccountId"}))
    DescribeRecoveryPointInput.type = Types::DescribeRecoveryPointInput
    DescribeRecoveryPointOutput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn'))
    DescribeRecoveryPointOutput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName'))
    DescribeRecoveryPointOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'BackupVaultArn'))
    DescribeRecoveryPointOutput.add_member(:source_backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'SourceBackupVaultArn'))
    DescribeRecoveryPointOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ResourceArn'))
    DescribeRecoveryPointOutput.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    DescribeRecoveryPointOutput.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPointCreator, location_name: 'CreatedBy'))
    DescribeRecoveryPointOutput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'IamRoleArn'))
    DescribeRecoveryPointOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPointStatus, location_name: 'Status'))
    DescribeRecoveryPointOutput.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage'))
    DescribeRecoveryPointOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    DescribeRecoveryPointOutput.add_member(:initiation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'InitiationDate'))
    DescribeRecoveryPointOutput.add_member(:completion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CompletionDate'))
    DescribeRecoveryPointOutput.add_member(:backup_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'BackupSizeInBytes'))
    DescribeRecoveryPointOutput.add_member(:calculated_lifecycle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculatedLifecycle, location_name: 'CalculatedLifecycle'))
    DescribeRecoveryPointOutput.add_member(:lifecycle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Lifecycle, location_name: 'Lifecycle'))
    DescribeRecoveryPointOutput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'EncryptionKeyArn'))
    DescribeRecoveryPointOutput.add_member(:is_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'IsEncrypted', traits: {"smithy.api#default" => false}))
    DescribeRecoveryPointOutput.add_member(:storage_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageClass, location_name: 'StorageClass'))
    DescribeRecoveryPointOutput.add_member(:last_restore_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastRestoreTime'))
    DescribeRecoveryPointOutput.add_member(:parent_recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ParentRecoveryPointArn'))
    DescribeRecoveryPointOutput.add_member(:composite_member_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CompositeMemberIdentifier'))
    DescribeRecoveryPointOutput.add_member(:is_parent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'IsParent', traits: {"smithy.api#default" => false}))
    DescribeRecoveryPointOutput.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName'))
    DescribeRecoveryPointOutput.add_member(:vault_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VaultType, location_name: 'VaultType'))
    DescribeRecoveryPointOutput.add_member(:index_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexStatus, location_name: 'IndexStatus'))
    DescribeRecoveryPointOutput.add_member(:index_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IndexStatusMessage'))
    DescribeRecoveryPointOutput.type = Types::DescribeRecoveryPointOutput
    DescribeRegionSettingsInput.type = Types::DescribeRegionSettingsInput
    DescribeRegionSettingsOutput.add_member(:resource_type_opt_in_preference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeOptInPreference, location_name: 'ResourceTypeOptInPreference'))
    DescribeRegionSettingsOutput.add_member(:resource_type_management_preference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeManagementPreference, location_name: 'ResourceTypeManagementPreference'))
    DescribeRegionSettingsOutput.type = Types::DescribeRegionSettingsOutput
    DescribeReportJobInput.add_member(:report_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportJobId, location_name: 'ReportJobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeReportJobInput.type = Types::DescribeReportJobInput
    DescribeReportJobOutput.add_member(:report_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportJob, location_name: 'ReportJob'))
    DescribeReportJobOutput.type = Types::DescribeReportJobOutput
    DescribeReportPlanInput.add_member(:report_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportPlanName, location_name: 'ReportPlanName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeReportPlanInput.type = Types::DescribeReportPlanInput
    DescribeReportPlanOutput.add_member(:report_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportPlan, location_name: 'ReportPlan'))
    DescribeReportPlanOutput.type = Types::DescribeReportPlanOutput
    DescribeRestoreJobInput.add_member(:restore_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreJobId, location_name: 'RestoreJobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRestoreJobInput.type = Types::DescribeRestoreJobInput
    DescribeRestoreJobOutput.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    DescribeRestoreJobOutput.add_member(:restore_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RestoreJobId'))
    DescribeRestoreJobOutput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn'))
    DescribeRestoreJobOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    DescribeRestoreJobOutput.add_member(:completion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CompletionDate'))
    DescribeRestoreJobOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreJobStatus, location_name: 'Status'))
    DescribeRestoreJobOutput.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage'))
    DescribeRestoreJobOutput.add_member(:percent_done, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PercentDone'))
    DescribeRestoreJobOutput.add_member(:backup_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'BackupSizeInBytes'))
    DescribeRestoreJobOutput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'IamRoleArn'))
    DescribeRestoreJobOutput.add_member(:expected_completion_time_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ExpectedCompletionTimeMinutes'))
    DescribeRestoreJobOutput.add_member(:created_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'CreatedResourceArn'))
    DescribeRestoreJobOutput.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    DescribeRestoreJobOutput.add_member(:recovery_point_creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RecoveryPointCreationDate'))
    DescribeRestoreJobOutput.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreJobCreator, location_name: 'CreatedBy'))
    DescribeRestoreJobOutput.add_member(:validation_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreValidationStatus, location_name: 'ValidationStatus'))
    DescribeRestoreJobOutput.add_member(:validation_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ValidationStatusMessage'))
    DescribeRestoreJobOutput.add_member(:deletion_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDeletionStatus, location_name: 'DeletionStatus'))
    DescribeRestoreJobOutput.add_member(:deletion_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeletionStatusMessage'))
    DescribeRestoreJobOutput.type = Types::DescribeRestoreJobOutput
    DisassociateBackupVaultMpaApprovalTeamInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateBackupVaultMpaApprovalTeamInput.add_member(:requester_comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequesterComment, location_name: 'RequesterComment'))
    DisassociateBackupVaultMpaApprovalTeamInput.type = Types::DisassociateBackupVaultMpaApprovalTeamInput
    DisassociateRecoveryPointFromParentInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateRecoveryPointFromParentInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateRecoveryPointFromParentInput.type = Types::DisassociateRecoveryPointFromParentInput
    DisassociateRecoveryPointInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateRecoveryPointInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateRecoveryPointInput.type = Types::DisassociateRecoveryPointInput
    ExportBackupPlanTemplateInput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportBackupPlanTemplateInput.type = Types::ExportBackupPlanTemplateInput
    ExportBackupPlanTemplateOutput.add_member(:backup_plan_template_json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanTemplateJson'))
    ExportBackupPlanTemplateOutput.type = Types::ExportBackupPlanTemplateOutput
    FormatList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Framework.add_member(:framework_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkName, location_name: 'FrameworkName'))
    Framework.add_member(:framework_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'FrameworkArn'))
    Framework.add_member(:framework_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: 'FrameworkDescription'))
    Framework.add_member(:number_of_controls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfControls', traits: {"smithy.api#default" => 0}))
    Framework.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime'))
    Framework.add_member(:deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentStatus'))
    Framework.type = Types::Framework
    FrameworkControl.add_member(:control_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlName, location_name: 'ControlName', traits: {"smithy.api#required" => {}}))
    FrameworkControl.add_member(:control_input_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlInputParameters, location_name: 'ControlInputParameters'))
    FrameworkControl.add_member(:control_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlScope, location_name: 'ControlScope'))
    FrameworkControl.type = Types::FrameworkControl
    FrameworkControls.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkControl)
    FrameworkList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Framework)
    GetBackupPlanFromJSONInput.add_member(:backup_plan_template_json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanTemplateJson', traits: {"smithy.api#required" => {}}))
    GetBackupPlanFromJSONInput.type = Types::GetBackupPlanFromJSONInput
    GetBackupPlanFromJSONOutput.add_member(:backup_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPlan, location_name: 'BackupPlan'))
    GetBackupPlanFromJSONOutput.type = Types::GetBackupPlanFromJSONOutput
    GetBackupPlanFromTemplateInput.add_member(:backup_plan_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanTemplateId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackupPlanFromTemplateInput.type = Types::GetBackupPlanFromTemplateInput
    GetBackupPlanFromTemplateOutput.add_member(:backup_plan_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPlan, location_name: 'BackupPlanDocument'))
    GetBackupPlanFromTemplateOutput.type = Types::GetBackupPlanFromTemplateOutput
    GetBackupPlanInput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackupPlanInput.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VersionId', traits: {"smithy.api#httpQuery" => "versionId"}))
    GetBackupPlanInput.type = Types::GetBackupPlanInput
    GetBackupPlanOutput.add_member(:backup_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPlan, location_name: 'BackupPlan'))
    GetBackupPlanOutput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanId'))
    GetBackupPlanOutput.add_member(:backup_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'BackupPlanArn'))
    GetBackupPlanOutput.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VersionId'))
    GetBackupPlanOutput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatorRequestId'))
    GetBackupPlanOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    GetBackupPlanOutput.add_member(:deletion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DeletionDate'))
    GetBackupPlanOutput.add_member(:last_execution_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastExecutionDate'))
    GetBackupPlanOutput.add_member(:advanced_backup_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedBackupSettings, location_name: 'AdvancedBackupSettings'))
    GetBackupPlanOutput.type = Types::GetBackupPlanOutput
    GetBackupSelectionInput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackupSelectionInput.add_member(:selection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SelectionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackupSelectionInput.type = Types::GetBackupSelectionInput
    GetBackupSelectionOutput.add_member(:backup_selection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupSelection, location_name: 'BackupSelection'))
    GetBackupSelectionOutput.add_member(:selection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SelectionId'))
    GetBackupSelectionOutput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanId'))
    GetBackupSelectionOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    GetBackupSelectionOutput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatorRequestId'))
    GetBackupSelectionOutput.type = Types::GetBackupSelectionOutput
    GetBackupVaultAccessPolicyInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackupVaultAccessPolicyInput.type = Types::GetBackupVaultAccessPolicyInput
    GetBackupVaultAccessPolicyOutput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName'))
    GetBackupVaultAccessPolicyOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'BackupVaultArn'))
    GetBackupVaultAccessPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMPolicy, location_name: 'Policy'))
    GetBackupVaultAccessPolicyOutput.type = Types::GetBackupVaultAccessPolicyOutput
    GetBackupVaultNotificationsInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackupVaultNotificationsInput.type = Types::GetBackupVaultNotificationsInput
    GetBackupVaultNotificationsOutput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName'))
    GetBackupVaultNotificationsOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'BackupVaultArn'))
    GetBackupVaultNotificationsOutput.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'SNSTopicArn'))
    GetBackupVaultNotificationsOutput.add_member(:backup_vault_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultEvents, location_name: 'BackupVaultEvents'))
    GetBackupVaultNotificationsOutput.type = Types::GetBackupVaultNotificationsOutput
    GetLegalHoldInput.add_member(:legal_hold_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LegalHoldId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLegalHoldInput.type = Types::GetLegalHoldInput
    GetLegalHoldOutput.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title'))
    GetLegalHoldOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LegalHoldStatus, location_name: 'Status'))
    GetLegalHoldOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    GetLegalHoldOutput.add_member(:cancel_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CancelDescription'))
    GetLegalHoldOutput.add_member(:legal_hold_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LegalHoldId'))
    GetLegalHoldOutput.add_member(:legal_hold_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'LegalHoldArn'))
    GetLegalHoldOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    GetLegalHoldOutput.add_member(:cancellation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CancellationDate'))
    GetLegalHoldOutput.add_member(:retain_record_until, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RetainRecordUntil'))
    GetLegalHoldOutput.add_member(:recovery_point_selection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPointSelection, location_name: 'RecoveryPointSelection'))
    GetLegalHoldOutput.type = Types::GetLegalHoldOutput
    GetRecoveryPointIndexDetailsInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecoveryPointIndexDetailsInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecoveryPointIndexDetailsInput.type = Types::GetRecoveryPointIndexDetailsInput
    GetRecoveryPointIndexDetailsOutput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn'))
    GetRecoveryPointIndexDetailsOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'BackupVaultArn'))
    GetRecoveryPointIndexDetailsOutput.add_member(:source_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'SourceResourceArn'))
    GetRecoveryPointIndexDetailsOutput.add_member(:index_creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'IndexCreationDate'))
    GetRecoveryPointIndexDetailsOutput.add_member(:index_deletion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'IndexDeletionDate'))
    GetRecoveryPointIndexDetailsOutput.add_member(:index_completion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'IndexCompletionDate'))
    GetRecoveryPointIndexDetailsOutput.add_member(:index_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexStatus, location_name: 'IndexStatus'))
    GetRecoveryPointIndexDetailsOutput.add_member(:index_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IndexStatusMessage'))
    GetRecoveryPointIndexDetailsOutput.add_member(:total_items_indexed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TotalItemsIndexed'))
    GetRecoveryPointIndexDetailsOutput.type = Types::GetRecoveryPointIndexDetailsOutput
    GetRecoveryPointRestoreMetadataInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecoveryPointRestoreMetadataInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecoveryPointRestoreMetadataInput.add_member(:backup_vault_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'BackupVaultAccountId', traits: {"smithy.api#httpQuery" => "backupVaultAccountId"}))
    GetRecoveryPointRestoreMetadataInput.type = Types::GetRecoveryPointRestoreMetadataInput
    GetRecoveryPointRestoreMetadataOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'BackupVaultArn'))
    GetRecoveryPointRestoreMetadataOutput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn'))
    GetRecoveryPointRestoreMetadataOutput.add_member(:restore_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'RestoreMetadata'))
    GetRecoveryPointRestoreMetadataOutput.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    GetRecoveryPointRestoreMetadataOutput.type = Types::GetRecoveryPointRestoreMetadataOutput
    GetRestoreJobMetadataInput.add_member(:restore_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreJobId, location_name: 'RestoreJobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRestoreJobMetadataInput.type = Types::GetRestoreJobMetadataInput
    GetRestoreJobMetadataOutput.add_member(:restore_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreJobId, location_name: 'RestoreJobId'))
    GetRestoreJobMetadataOutput.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata'))
    GetRestoreJobMetadataOutput.type = Types::GetRestoreJobMetadataOutput
    GetRestoreTestingInferredMetadataInput.add_member(:backup_vault_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'BackupVaultAccountId', traits: {"smithy.api#httpQuery" => "BackupVaultAccountId"}))
    GetRestoreTestingInferredMetadataInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'BackupVaultName', traits: {"smithy.api#httpQuery" => "BackupVaultName", "smithy.api#required" => {}}))
    GetRestoreTestingInferredMetadataInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RecoveryPointArn', traits: {"smithy.api#httpQuery" => "RecoveryPointArn", "smithy.api#required" => {}}))
    GetRestoreTestingInferredMetadataInput.type = Types::GetRestoreTestingInferredMetadataInput
    GetRestoreTestingInferredMetadataOutput.add_member(:inferred_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'InferredMetadata', traits: {"smithy.api#required" => {}}))
    GetRestoreTestingInferredMetadataOutput.type = Types::GetRestoreTestingInferredMetadataOutput
    GetRestoreTestingPlanInput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRestoreTestingPlanInput.type = Types::GetRestoreTestingPlanInput
    GetRestoreTestingPlanOutput.add_member(:restore_testing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTestingPlanForGet, location_name: 'RestoreTestingPlan', traits: {"smithy.api#required" => {}}))
    GetRestoreTestingPlanOutput.type = Types::GetRestoreTestingPlanOutput
    GetRestoreTestingSelectionInput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRestoreTestingSelectionInput.add_member(:restore_testing_selection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingSelectionName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRestoreTestingSelectionInput.type = Types::GetRestoreTestingSelectionInput
    GetRestoreTestingSelectionOutput.add_member(:restore_testing_selection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTestingSelectionForGet, location_name: 'RestoreTestingSelection', traits: {"smithy.api#required" => {}}))
    GetRestoreTestingSelectionOutput.type = Types::GetRestoreTestingSelectionOutput
    GetSupportedResourceTypesOutput.add_member(:resource_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypes, location_name: 'ResourceTypes'))
    GetSupportedResourceTypesOutput.type = Types::GetSupportedResourceTypesOutput
    GlobalSettings.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSettingsName)
    GlobalSettings.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSettingsValue)
    Index.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    Index.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    IndexAction.add_member(:resource_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypes, location_name: 'ResourceTypes'))
    IndexAction.type = Types::IndexAction
    IndexActions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexAction)
    IndexStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    IndexStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    IndexStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    IndexStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    IndexedRecoveryPoint.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn'))
    IndexedRecoveryPoint.add_member(:source_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'SourceResourceArn'))
    IndexedRecoveryPoint.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'IamRoleArn'))
    IndexedRecoveryPoint.add_member(:backup_creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'BackupCreationDate'))
    IndexedRecoveryPoint.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    IndexedRecoveryPoint.add_member(:index_creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'IndexCreationDate'))
    IndexedRecoveryPoint.add_member(:index_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexStatus, location_name: 'IndexStatus'))
    IndexedRecoveryPoint.add_member(:index_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IndexStatusMessage'))
    IndexedRecoveryPoint.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'BackupVaultArn'))
    IndexedRecoveryPoint.type = Types::IndexedRecoveryPoint
    IndexedRecoveryPointList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexedRecoveryPoint)
    InvalidParameterValueException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidParameterValueException.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    InvalidParameterValueException.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Context'))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    InvalidRequestException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidRequestException.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    InvalidRequestException.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Context'))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidResourceStateException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    InvalidResourceStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidResourceStateException.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    InvalidResourceStateException.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Context'))
    InvalidResourceStateException.type = Types::InvalidResourceStateException
    KeyValue.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    KeyValue.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    KeyValue.type = Types::KeyValue
    KeyValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValue)
    LatestMpaApprovalTeamUpdate.add_member(:mpa_session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'MpaSessionArn'))
    LatestMpaApprovalTeamUpdate.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MpaSessionStatus, location_name: 'Status'))
    LatestMpaApprovalTeamUpdate.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage'))
    LatestMpaApprovalTeamUpdate.add_member(:initiation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'InitiationDate'))
    LatestMpaApprovalTeamUpdate.add_member(:expiry_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpiryDate'))
    LatestMpaApprovalTeamUpdate.type = Types::LatestMpaApprovalTeamUpdate
    LatestRevokeRequest.add_member(:mpa_session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MpaSessionArn'))
    LatestRevokeRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MpaRevokeSessionStatus, location_name: 'Status'))
    LatestRevokeRequest.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage'))
    LatestRevokeRequest.add_member(:initiation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'InitiationDate'))
    LatestRevokeRequest.add_member(:expiry_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpiryDate'))
    LatestRevokeRequest.type = Types::LatestRevokeRequest
    LegalHold.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title'))
    LegalHold.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LegalHoldStatus, location_name: 'Status'))
    LegalHold.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    LegalHold.add_member(:legal_hold_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LegalHoldId'))
    LegalHold.add_member(:legal_hold_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'LegalHoldArn'))
    LegalHold.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    LegalHold.add_member(:cancellation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CancellationDate'))
    LegalHold.type = Types::LegalHold
    LegalHoldStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    LegalHoldStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    LegalHoldStatus.add_member(:canceling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELING', traits: {"smithy.api#enumValue" => "CANCELING"}))
    LegalHoldStatus.add_member(:canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    LegalHoldsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LegalHold)
    Lifecycle.add_member(:move_to_cold_storage_after_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'MoveToColdStorageAfterDays'))
    Lifecycle.add_member(:delete_after_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DeleteAfterDays'))
    Lifecycle.add_member(:opt_in_to_archive_for_supported_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OptInToArchiveForSupportedResources'))
    Lifecycle.type = Types::Lifecycle
    LimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    LimitExceededException.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    LimitExceededException.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Context'))
    LimitExceededException.type = Types::LimitExceededException
    ListBackupJobSummariesInput.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#httpQuery" => "AccountId"}))
    ListBackupJobSummariesInput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupJobStatus, location_name: 'State', traits: {"smithy.api#httpQuery" => "State"}))
    ListBackupJobSummariesInput.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#httpQuery" => "ResourceType"}))
    ListBackupJobSummariesInput.add_member(:message_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageCategory, location_name: 'MessageCategory', traits: {"smithy.api#httpQuery" => "MessageCategory"}))
    ListBackupJobSummariesInput.add_member(:aggregation_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationPeriod, location_name: 'AggregationPeriod', traits: {"smithy.api#httpQuery" => "AggregationPeriod"}))
    ListBackupJobSummariesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListBackupJobSummariesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListBackupJobSummariesInput.type = Types::ListBackupJobSummariesInput
    ListBackupJobSummariesOutput.add_member(:backup_job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupJobSummaryList, location_name: 'BackupJobSummaries'))
    ListBackupJobSummariesOutput.add_member(:aggregation_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AggregationPeriod'))
    ListBackupJobSummariesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListBackupJobSummariesOutput.type = Types::ListBackupJobSummariesOutput
    ListBackupJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBackupJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBackupJobsInput.add_member(:by_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ByResourceArn', traits: {"smithy.api#httpQuery" => "resourceArn"}))
    ListBackupJobsInput.add_member(:by_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupJobState, location_name: 'ByState', traits: {"smithy.api#httpQuery" => "state"}))
    ListBackupJobsInput.add_member(:by_backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'ByBackupVaultName', traits: {"smithy.api#httpQuery" => "backupVaultName"}))
    ListBackupJobsInput.add_member(:by_created_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ByCreatedBefore', traits: {"smithy.api#httpQuery" => "createdBefore"}))
    ListBackupJobsInput.add_member(:by_created_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ByCreatedAfter', traits: {"smithy.api#httpQuery" => "createdAfter"}))
    ListBackupJobsInput.add_member(:by_resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ByResourceType', traits: {"smithy.api#httpQuery" => "resourceType"}))
    ListBackupJobsInput.add_member(:by_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'ByAccountId', traits: {"smithy.api#httpQuery" => "accountId"}))
    ListBackupJobsInput.add_member(:by_complete_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ByCompleteAfter', traits: {"smithy.api#httpQuery" => "completeAfter"}))
    ListBackupJobsInput.add_member(:by_complete_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ByCompleteBefore', traits: {"smithy.api#httpQuery" => "completeBefore"}))
    ListBackupJobsInput.add_member(:by_parent_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ByParentJobId', traits: {"smithy.api#httpQuery" => "parentJobId"}))
    ListBackupJobsInput.add_member(:by_message_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ByMessageCategory', traits: {"smithy.api#httpQuery" => "messageCategory"}))
    ListBackupJobsInput.type = Types::ListBackupJobsInput
    ListBackupJobsOutput.add_member(:backup_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupJobsList, location_name: 'BackupJobs'))
    ListBackupJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListBackupJobsOutput.type = Types::ListBackupJobsOutput
    ListBackupPlanTemplatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBackupPlanTemplatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBackupPlanTemplatesInput.type = Types::ListBackupPlanTemplatesInput
    ListBackupPlanTemplatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListBackupPlanTemplatesOutput.add_member(:backup_plan_templates_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPlanTemplatesList, location_name: 'BackupPlanTemplatesList'))
    ListBackupPlanTemplatesOutput.type = Types::ListBackupPlanTemplatesOutput
    ListBackupPlanVersionsInput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBackupPlanVersionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBackupPlanVersionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBackupPlanVersionsInput.type = Types::ListBackupPlanVersionsInput
    ListBackupPlanVersionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListBackupPlanVersionsOutput.add_member(:backup_plan_versions_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPlanVersionsList, location_name: 'BackupPlanVersionsList'))
    ListBackupPlanVersionsOutput.type = Types::ListBackupPlanVersionsOutput
    ListBackupPlansInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBackupPlansInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBackupPlansInput.add_member(:include_deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeDeleted', traits: {"smithy.api#httpQuery" => "includeDeleted"}))
    ListBackupPlansInput.type = Types::ListBackupPlansInput
    ListBackupPlansOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListBackupPlansOutput.add_member(:backup_plans_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPlansList, location_name: 'BackupPlansList'))
    ListBackupPlansOutput.type = Types::ListBackupPlansOutput
    ListBackupSelectionsInput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBackupSelectionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBackupSelectionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBackupSelectionsInput.type = Types::ListBackupSelectionsInput
    ListBackupSelectionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListBackupSelectionsOutput.add_member(:backup_selections_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupSelectionsList, location_name: 'BackupSelectionsList'))
    ListBackupSelectionsOutput.type = Types::ListBackupSelectionsOutput
    ListBackupVaultsInput.add_member(:by_vault_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VaultType, location_name: 'ByVaultType', traits: {"smithy.api#httpQuery" => "vaultType"}))
    ListBackupVaultsInput.add_member(:by_shared, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'ByShared', traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "shared"}))
    ListBackupVaultsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBackupVaultsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBackupVaultsInput.type = Types::ListBackupVaultsInput
    ListBackupVaultsOutput.add_member(:backup_vault_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultList, location_name: 'BackupVaultList'))
    ListBackupVaultsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListBackupVaultsOutput.type = Types::ListBackupVaultsOutput
    ListCopyJobSummariesInput.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#httpQuery" => "AccountId"}))
    ListCopyJobSummariesInput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyJobStatus, location_name: 'State', traits: {"smithy.api#httpQuery" => "State"}))
    ListCopyJobSummariesInput.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#httpQuery" => "ResourceType"}))
    ListCopyJobSummariesInput.add_member(:message_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageCategory, location_name: 'MessageCategory', traits: {"smithy.api#httpQuery" => "MessageCategory"}))
    ListCopyJobSummariesInput.add_member(:aggregation_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationPeriod, location_name: 'AggregationPeriod', traits: {"smithy.api#httpQuery" => "AggregationPeriod"}))
    ListCopyJobSummariesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListCopyJobSummariesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListCopyJobSummariesInput.type = Types::ListCopyJobSummariesInput
    ListCopyJobSummariesOutput.add_member(:copy_job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyJobSummaryList, location_name: 'CopyJobSummaries'))
    ListCopyJobSummariesOutput.add_member(:aggregation_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AggregationPeriod'))
    ListCopyJobSummariesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListCopyJobSummariesOutput.type = Types::ListCopyJobSummariesOutput
    ListCopyJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCopyJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCopyJobsInput.add_member(:by_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ByResourceArn', traits: {"smithy.api#httpQuery" => "resourceArn"}))
    ListCopyJobsInput.add_member(:by_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyJobState, location_name: 'ByState', traits: {"smithy.api#httpQuery" => "state"}))
    ListCopyJobsInput.add_member(:by_created_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ByCreatedBefore', traits: {"smithy.api#httpQuery" => "createdBefore"}))
    ListCopyJobsInput.add_member(:by_created_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ByCreatedAfter', traits: {"smithy.api#httpQuery" => "createdAfter"}))
    ListCopyJobsInput.add_member(:by_resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ByResourceType', traits: {"smithy.api#httpQuery" => "resourceType"}))
    ListCopyJobsInput.add_member(:by_destination_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ByDestinationVaultArn', traits: {"smithy.api#httpQuery" => "destinationVaultArn"}))
    ListCopyJobsInput.add_member(:by_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'ByAccountId', traits: {"smithy.api#httpQuery" => "accountId"}))
    ListCopyJobsInput.add_member(:by_complete_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ByCompleteBefore', traits: {"smithy.api#httpQuery" => "completeBefore"}))
    ListCopyJobsInput.add_member(:by_complete_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ByCompleteAfter', traits: {"smithy.api#httpQuery" => "completeAfter"}))
    ListCopyJobsInput.add_member(:by_parent_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ByParentJobId', traits: {"smithy.api#httpQuery" => "parentJobId"}))
    ListCopyJobsInput.add_member(:by_message_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ByMessageCategory', traits: {"smithy.api#httpQuery" => "messageCategory"}))
    ListCopyJobsInput.type = Types::ListCopyJobsInput
    ListCopyJobsOutput.add_member(:copy_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyJobsList, location_name: 'CopyJobs'))
    ListCopyJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListCopyJobsOutput.type = Types::ListCopyJobsOutput
    ListFrameworksInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFrameworkInputs, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListFrameworksInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListFrameworksInput.type = Types::ListFrameworksInput
    ListFrameworksOutput.add_member(:frameworks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkList, location_name: 'Frameworks'))
    ListFrameworksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListFrameworksOutput.type = Types::ListFrameworksOutput
    ListIndexedRecoveryPointsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListIndexedRecoveryPointsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListIndexedRecoveryPointsInput.add_member(:source_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'SourceResourceArn', traits: {"smithy.api#httpQuery" => "sourceResourceArn"}))
    ListIndexedRecoveryPointsInput.add_member(:created_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedBefore', traits: {"smithy.api#httpQuery" => "createdBefore"}))
    ListIndexedRecoveryPointsInput.add_member(:created_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAfter', traits: {"smithy.api#httpQuery" => "createdAfter"}))
    ListIndexedRecoveryPointsInput.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#httpQuery" => "resourceType"}))
    ListIndexedRecoveryPointsInput.add_member(:index_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexStatus, location_name: 'IndexStatus', traits: {"smithy.api#httpQuery" => "indexStatus"}))
    ListIndexedRecoveryPointsInput.type = Types::ListIndexedRecoveryPointsInput
    ListIndexedRecoveryPointsOutput.add_member(:indexed_recovery_points, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexedRecoveryPointList, location_name: 'IndexedRecoveryPoints'))
    ListIndexedRecoveryPointsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListIndexedRecoveryPointsOutput.type = Types::ListIndexedRecoveryPointsOutput
    ListLegalHoldsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListLegalHoldsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListLegalHoldsInput.type = Types::ListLegalHoldsInput
    ListLegalHoldsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListLegalHoldsOutput.add_member(:legal_holds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LegalHoldsList, location_name: 'LegalHolds'))
    ListLegalHoldsOutput.type = Types::ListLegalHoldsOutput
    ListOfTags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Condition)
    ListProtectedResourcesByBackupVaultInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProtectedResourcesByBackupVaultInput.add_member(:backup_vault_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'BackupVaultAccountId', traits: {"smithy.api#httpQuery" => "backupVaultAccountId"}))
    ListProtectedResourcesByBackupVaultInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProtectedResourcesByBackupVaultInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListProtectedResourcesByBackupVaultInput.type = Types::ListProtectedResourcesByBackupVaultInput
    ListProtectedResourcesByBackupVaultOutput.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedResourcesList, location_name: 'Results'))
    ListProtectedResourcesByBackupVaultOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListProtectedResourcesByBackupVaultOutput.type = Types::ListProtectedResourcesByBackupVaultOutput
    ListProtectedResourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProtectedResourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListProtectedResourcesInput.type = Types::ListProtectedResourcesInput
    ListProtectedResourcesOutput.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedResourcesList, location_name: 'Results'))
    ListProtectedResourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListProtectedResourcesOutput.type = Types::ListProtectedResourcesOutput
    ListRecoveryPointsByBackupVaultInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecoveryPointsByBackupVaultInput.add_member(:backup_vault_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'BackupVaultAccountId', traits: {"smithy.api#httpQuery" => "backupVaultAccountId"}))
    ListRecoveryPointsByBackupVaultInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRecoveryPointsByBackupVaultInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ByResourceArn', traits: {"smithy.api#httpQuery" => "resourceArn"}))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ByResourceType', traits: {"smithy.api#httpQuery" => "resourceType"}))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_backup_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ByBackupPlanId', traits: {"smithy.api#httpQuery" => "backupPlanId"}))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_created_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ByCreatedBefore', traits: {"smithy.api#httpQuery" => "createdBefore"}))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_created_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ByCreatedAfter', traits: {"smithy.api#httpQuery" => "createdAfter"}))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_parent_recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ByParentRecoveryPointArn', traits: {"smithy.api#httpQuery" => "parentRecoveryPointArn"}))
    ListRecoveryPointsByBackupVaultInput.type = Types::ListRecoveryPointsByBackupVaultInput
    ListRecoveryPointsByBackupVaultOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListRecoveryPointsByBackupVaultOutput.add_member(:recovery_points, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPointByBackupVaultList, location_name: 'RecoveryPoints'))
    ListRecoveryPointsByBackupVaultOutput.type = Types::ListRecoveryPointsByBackupVaultOutput
    ListRecoveryPointsByLegalHoldInput.add_member(:legal_hold_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LegalHoldId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecoveryPointsByLegalHoldInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRecoveryPointsByLegalHoldInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRecoveryPointsByLegalHoldInput.type = Types::ListRecoveryPointsByLegalHoldInput
    ListRecoveryPointsByLegalHoldOutput.add_member(:recovery_points, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPointsList, location_name: 'RecoveryPoints'))
    ListRecoveryPointsByLegalHoldOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListRecoveryPointsByLegalHoldOutput.type = Types::ListRecoveryPointsByLegalHoldOutput
    ListRecoveryPointsByResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecoveryPointsByResourceInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRecoveryPointsByResourceInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRecoveryPointsByResourceInput.add_member(:managed_by_aws_backup_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'ManagedByAWSBackupOnly', traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "managedByAWSBackupOnly"}))
    ListRecoveryPointsByResourceInput.type = Types::ListRecoveryPointsByResourceInput
    ListRecoveryPointsByResourceOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListRecoveryPointsByResourceOutput.add_member(:recovery_points, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPointByResourceList, location_name: 'RecoveryPoints'))
    ListRecoveryPointsByResourceOutput.type = Types::ListRecoveryPointsByResourceOutput
    ListReportJobsInput.add_member(:by_report_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportPlanName, location_name: 'ByReportPlanName', traits: {"smithy.api#httpQuery" => "ReportPlanName"}))
    ListReportJobsInput.add_member(:by_creation_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ByCreationBefore', traits: {"smithy.api#httpQuery" => "CreationBefore"}))
    ListReportJobsInput.add_member(:by_creation_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ByCreationAfter', traits: {"smithy.api#httpQuery" => "CreationAfter"}))
    ListReportJobsInput.add_member(:by_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ByStatus', traits: {"smithy.api#httpQuery" => "Status"}))
    ListReportJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListReportJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListReportJobsInput.type = Types::ListReportJobsInput
    ListReportJobsOutput.add_member(:report_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportJobList, location_name: 'ReportJobs'))
    ListReportJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListReportJobsOutput.type = Types::ListReportJobsOutput
    ListReportPlansInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListReportPlansInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListReportPlansInput.type = Types::ListReportPlansInput
    ListReportPlansOutput.add_member(:report_plans, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportPlanList, location_name: 'ReportPlans'))
    ListReportPlansOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListReportPlansOutput.type = Types::ListReportPlansOutput
    ListRestoreAccessBackupVaultsInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRestoreAccessBackupVaultsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRestoreAccessBackupVaultsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRestoreAccessBackupVaultsInput.type = Types::ListRestoreAccessBackupVaultsInput
    ListRestoreAccessBackupVaultsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListRestoreAccessBackupVaultsOutput.add_member(:restore_access_backup_vaults, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreAccessBackupVaultList, location_name: 'RestoreAccessBackupVaults'))
    ListRestoreAccessBackupVaultsOutput.type = Types::ListRestoreAccessBackupVaultsOutput
    ListRestoreJobSummariesInput.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#httpQuery" => "AccountId"}))
    ListRestoreJobSummariesInput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreJobState, location_name: 'State', traits: {"smithy.api#httpQuery" => "State"}))
    ListRestoreJobSummariesInput.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#httpQuery" => "ResourceType"}))
    ListRestoreJobSummariesInput.add_member(:aggregation_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationPeriod, location_name: 'AggregationPeriod', traits: {"smithy.api#httpQuery" => "AggregationPeriod"}))
    ListRestoreJobSummariesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListRestoreJobSummariesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListRestoreJobSummariesInput.type = Types::ListRestoreJobSummariesInput
    ListRestoreJobSummariesOutput.add_member(:restore_job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreJobSummaryList, location_name: 'RestoreJobSummaries'))
    ListRestoreJobSummariesOutput.add_member(:aggregation_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AggregationPeriod'))
    ListRestoreJobSummariesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListRestoreJobSummariesOutput.type = Types::ListRestoreJobSummariesOutput
    ListRestoreJobsByProtectedResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRestoreJobsByProtectedResourceInput.add_member(:by_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreJobStatus, location_name: 'ByStatus', traits: {"smithy.api#httpQuery" => "status"}))
    ListRestoreJobsByProtectedResourceInput.add_member(:by_recovery_point_creation_date_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ByRecoveryPointCreationDateAfter', traits: {"smithy.api#httpQuery" => "recoveryPointCreationDateAfter"}))
    ListRestoreJobsByProtectedResourceInput.add_member(:by_recovery_point_creation_date_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ByRecoveryPointCreationDateBefore', traits: {"smithy.api#httpQuery" => "recoveryPointCreationDateBefore"}))
    ListRestoreJobsByProtectedResourceInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRestoreJobsByProtectedResourceInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRestoreJobsByProtectedResourceInput.type = Types::ListRestoreJobsByProtectedResourceInput
    ListRestoreJobsByProtectedResourceOutput.add_member(:restore_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreJobsList, location_name: 'RestoreJobs'))
    ListRestoreJobsByProtectedResourceOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListRestoreJobsByProtectedResourceOutput.type = Types::ListRestoreJobsByProtectedResourceOutput
    ListRestoreJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRestoreJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRestoreJobsInput.add_member(:by_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'ByAccountId', traits: {"smithy.api#httpQuery" => "accountId"}))
    ListRestoreJobsInput.add_member(:by_resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ByResourceType', traits: {"smithy.api#httpQuery" => "resourceType"}))
    ListRestoreJobsInput.add_member(:by_created_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ByCreatedBefore', traits: {"smithy.api#httpQuery" => "createdBefore"}))
    ListRestoreJobsInput.add_member(:by_created_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ByCreatedAfter', traits: {"smithy.api#httpQuery" => "createdAfter"}))
    ListRestoreJobsInput.add_member(:by_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreJobStatus, location_name: 'ByStatus', traits: {"smithy.api#httpQuery" => "status"}))
    ListRestoreJobsInput.add_member(:by_complete_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ByCompleteBefore', traits: {"smithy.api#httpQuery" => "completeBefore"}))
    ListRestoreJobsInput.add_member(:by_complete_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ByCompleteAfter', traits: {"smithy.api#httpQuery" => "completeAfter"}))
    ListRestoreJobsInput.add_member(:by_restore_testing_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ByRestoreTestingPlanArn', traits: {"smithy.api#httpQuery" => "restoreTestingPlanArn"}))
    ListRestoreJobsInput.type = Types::ListRestoreJobsInput
    ListRestoreJobsOutput.add_member(:restore_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreJobsList, location_name: 'RestoreJobs'))
    ListRestoreJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListRestoreJobsOutput.type = Types::ListRestoreJobsOutput
    ListRestoreTestingPlansInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRestoreTestingPlansInputMaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListRestoreTestingPlansInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListRestoreTestingPlansInput.type = Types::ListRestoreTestingPlansInput
    ListRestoreTestingPlansOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListRestoreTestingPlansOutput.add_member(:restore_testing_plans, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTestingPlans, location_name: 'RestoreTestingPlans', traits: {"smithy.api#required" => {}}))
    ListRestoreTestingPlansOutput.type = Types::ListRestoreTestingPlansOutput
    ListRestoreTestingSelectionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRestoreTestingSelectionsInputMaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListRestoreTestingSelectionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListRestoreTestingSelectionsInput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRestoreTestingSelectionsInput.type = Types::ListRestoreTestingSelectionsInput
    ListRestoreTestingSelectionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListRestoreTestingSelectionsOutput.add_member(:restore_testing_selections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTestingSelections, location_name: 'RestoreTestingSelections', traits: {"smithy.api#required" => {}}))
    ListRestoreTestingSelectionsOutput.type = Types::ListRestoreTestingSelectionsOutput
    ListTagsInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTagsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTagsInput.type = Types::ListTagsInput
    ListTagsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListTagsOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    ListTagsOutput.type = Types::ListTagsOutput
    Metadata.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataKey)
    Metadata.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataValue)
    MissingParameterValueException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    MissingParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    MissingParameterValueException.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    MissingParameterValueException.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Context'))
    MissingParameterValueException.type = Types::MissingParameterValueException
    MpaRevokeSessionStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    MpaRevokeSessionStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    MpaSessionStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    MpaSessionStatus.add_member(:approved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVED', traits: {"smithy.api#enumValue" => "APPROVED"}))
    MpaSessionStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ProtectedResource.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ResourceArn'))
    ProtectedResource.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    ProtectedResource.add_member(:last_backup_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastBackupTime'))
    ProtectedResource.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName'))
    ProtectedResource.add_member(:last_backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'LastBackupVaultArn'))
    ProtectedResource.add_member(:last_recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'LastRecoveryPointArn'))
    ProtectedResource.type = Types::ProtectedResource
    ProtectedResourceConditions.add_member(:string_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValueList, location_name: 'StringEquals'))
    ProtectedResourceConditions.add_member(:string_not_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValueList, location_name: 'StringNotEquals'))
    ProtectedResourceConditions.type = Types::ProtectedResourceConditions
    ProtectedResourcesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedResource)
    PutBackupVaultAccessPolicyInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutBackupVaultAccessPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMPolicy, location_name: 'Policy'))
    PutBackupVaultAccessPolicyInput.type = Types::PutBackupVaultAccessPolicyInput
    PutBackupVaultLockConfigurationInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutBackupVaultLockConfigurationInput.add_member(:min_retention_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'MinRetentionDays'))
    PutBackupVaultLockConfigurationInput.add_member(:max_retention_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'MaxRetentionDays'))
    PutBackupVaultLockConfigurationInput.add_member(:changeable_for_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ChangeableForDays'))
    PutBackupVaultLockConfigurationInput.type = Types::PutBackupVaultLockConfigurationInput
    PutBackupVaultNotificationsInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutBackupVaultNotificationsInput.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'SNSTopicArn', traits: {"smithy.api#required" => {}}))
    PutBackupVaultNotificationsInput.add_member(:backup_vault_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultEvents, location_name: 'BackupVaultEvents', traits: {"smithy.api#required" => {}}))
    PutBackupVaultNotificationsInput.type = Types::PutBackupVaultNotificationsInput
    PutRestoreValidationResultInput.add_member(:restore_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreJobId, location_name: 'RestoreJobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutRestoreValidationResultInput.add_member(:validation_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreValidationStatus, location_name: 'ValidationStatus', traits: {"smithy.api#required" => {}}))
    PutRestoreValidationResultInput.add_member(:validation_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ValidationStatusMessage'))
    PutRestoreValidationResultInput.type = Types::PutRestoreValidationResultInput
    RecoveryPointByBackupVault.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn'))
    RecoveryPointByBackupVault.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName'))
    RecoveryPointByBackupVault.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'BackupVaultArn'))
    RecoveryPointByBackupVault.add_member(:source_backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'SourceBackupVaultArn'))
    RecoveryPointByBackupVault.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ResourceArn'))
    RecoveryPointByBackupVault.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    RecoveryPointByBackupVault.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPointCreator, location_name: 'CreatedBy'))
    RecoveryPointByBackupVault.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'IamRoleArn'))
    RecoveryPointByBackupVault.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPointStatus, location_name: 'Status'))
    RecoveryPointByBackupVault.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage'))
    RecoveryPointByBackupVault.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    RecoveryPointByBackupVault.add_member(:initiation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'InitiationDate'))
    RecoveryPointByBackupVault.add_member(:completion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CompletionDate'))
    RecoveryPointByBackupVault.add_member(:backup_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'BackupSizeInBytes'))
    RecoveryPointByBackupVault.add_member(:calculated_lifecycle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculatedLifecycle, location_name: 'CalculatedLifecycle'))
    RecoveryPointByBackupVault.add_member(:lifecycle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Lifecycle, location_name: 'Lifecycle'))
    RecoveryPointByBackupVault.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'EncryptionKeyArn'))
    RecoveryPointByBackupVault.add_member(:is_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'IsEncrypted', traits: {"smithy.api#default" => false}))
    RecoveryPointByBackupVault.add_member(:last_restore_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastRestoreTime'))
    RecoveryPointByBackupVault.add_member(:parent_recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ParentRecoveryPointArn'))
    RecoveryPointByBackupVault.add_member(:composite_member_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CompositeMemberIdentifier'))
    RecoveryPointByBackupVault.add_member(:is_parent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'IsParent', traits: {"smithy.api#default" => false}))
    RecoveryPointByBackupVault.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName'))
    RecoveryPointByBackupVault.add_member(:vault_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VaultType, location_name: 'VaultType'))
    RecoveryPointByBackupVault.add_member(:index_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexStatus, location_name: 'IndexStatus'))
    RecoveryPointByBackupVault.add_member(:index_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IndexStatusMessage'))
    RecoveryPointByBackupVault.type = Types::RecoveryPointByBackupVault
    RecoveryPointByBackupVaultList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPointByBackupVault)
    RecoveryPointByResource.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn'))
    RecoveryPointByResource.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    RecoveryPointByResource.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPointStatus, location_name: 'Status'))
    RecoveryPointByResource.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage'))
    RecoveryPointByResource.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'EncryptionKeyArn'))
    RecoveryPointByResource.add_member(:backup_size_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'BackupSizeBytes'))
    RecoveryPointByResource.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName'))
    RecoveryPointByResource.add_member(:is_parent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'IsParent', traits: {"smithy.api#default" => false}))
    RecoveryPointByResource.add_member(:parent_recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ParentRecoveryPointArn'))
    RecoveryPointByResource.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName'))
    RecoveryPointByResource.add_member(:vault_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VaultType, location_name: 'VaultType'))
    RecoveryPointByResource.add_member(:index_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexStatus, location_name: 'IndexStatus'))
    RecoveryPointByResource.add_member(:index_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IndexStatusMessage'))
    RecoveryPointByResource.type = Types::RecoveryPointByResource
    RecoveryPointByResourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPointByResource)
    RecoveryPointCreator.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanId'))
    RecoveryPointCreator.add_member(:backup_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'BackupPlanArn'))
    RecoveryPointCreator.add_member(:backup_plan_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanVersion'))
    RecoveryPointCreator.add_member(:backup_rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupRuleId'))
    RecoveryPointCreator.type = Types::RecoveryPointCreator
    RecoveryPointMember.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn'))
    RecoveryPointMember.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ResourceArn'))
    RecoveryPointMember.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    RecoveryPointMember.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName'))
    RecoveryPointMember.type = Types::RecoveryPointMember
    RecoveryPointSelection.add_member(:vault_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VaultNames, location_name: 'VaultNames'))
    RecoveryPointSelection.add_member(:resource_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifiers, location_name: 'ResourceIdentifiers'))
    RecoveryPointSelection.add_member(:date_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateRange, location_name: 'DateRange'))
    RecoveryPointSelection.type = Types::RecoveryPointSelection
    RecoveryPointStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    RecoveryPointStatus.add_member(:partial, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTIAL', traits: {"smithy.api#enumValue" => "PARTIAL"}))
    RecoveryPointStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    RecoveryPointStatus.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    RecoveryPointStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    RecoveryPointStatus.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    RecoveryPointStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    RecoveryPointsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPointMember)
    ReportDeliveryChannel.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3BucketName', traits: {"smithy.api#required" => {}}))
    ReportDeliveryChannel.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3KeyPrefix'))
    ReportDeliveryChannel.add_member(:formats, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FormatList, location_name: 'Formats'))
    ReportDeliveryChannel.type = Types::ReportDeliveryChannel
    ReportDestination.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3BucketName'))
    ReportDestination.add_member(:s3_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'S3Keys'))
    ReportDestination.type = Types::ReportDestination
    ReportJob.add_member(:report_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportJobId, location_name: 'ReportJobId'))
    ReportJob.add_member(:report_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ReportPlanArn'))
    ReportJob.add_member(:report_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReportTemplate'))
    ReportJob.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime'))
    ReportJob.add_member(:completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CompletionTime'))
    ReportJob.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    ReportJob.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage'))
    ReportJob.add_member(:report_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportDestination, location_name: 'ReportDestination'))
    ReportJob.type = Types::ReportJob
    ReportJobList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportJob)
    ReportPlan.add_member(:report_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ReportPlanArn'))
    ReportPlan.add_member(:report_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportPlanName, location_name: 'ReportPlanName'))
    ReportPlan.add_member(:report_plan_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportPlanDescription, location_name: 'ReportPlanDescription'))
    ReportPlan.add_member(:report_setting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportSetting, location_name: 'ReportSetting'))
    ReportPlan.add_member(:report_delivery_channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportDeliveryChannel, location_name: 'ReportDeliveryChannel'))
    ReportPlan.add_member(:deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentStatus'))
    ReportPlan.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime'))
    ReportPlan.add_member(:last_attempted_execution_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastAttemptedExecutionTime'))
    ReportPlan.add_member(:last_successful_execution_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastSuccessfulExecutionTime'))
    ReportPlan.type = Types::ReportPlan
    ReportPlanList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportPlan)
    ReportSetting.add_member(:report_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReportTemplate', traits: {"smithy.api#required" => {}}))
    ReportSetting.add_member(:framework_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'FrameworkArns'))
    ReportSetting.add_member(:number_of_frameworks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfFrameworks', traits: {"smithy.api#default" => 0}))
    ReportSetting.add_member(:accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Accounts'))
    ReportSetting.add_member(:organization_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'OrganizationUnits'))
    ReportSetting.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Regions'))
    ReportSetting.type = Types::ReportSetting
    ResourceArns.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN)
    ResourceIdentifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ResourceNotFoundException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceNotFoundException.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    ResourceNotFoundException.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Context'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN)
    ResourceTypeManagementPreference.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType)
    ResourceTypeManagementPreference.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsEnabled)
    ResourceTypeOptInPreference.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType)
    ResourceTypeOptInPreference.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsEnabled)
    ResourceTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType)
    RestoreAccessBackupVaultList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreAccessBackupVaultListMember)
    RestoreAccessBackupVaultListMember.add_member(:restore_access_backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RestoreAccessBackupVaultArn'))
    RestoreAccessBackupVaultListMember.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    RestoreAccessBackupVaultListMember.add_member(:approval_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ApprovalDate'))
    RestoreAccessBackupVaultListMember.add_member(:vault_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VaultState, location_name: 'VaultState'))
    RestoreAccessBackupVaultListMember.add_member(:latest_revoke_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LatestRevokeRequest, location_name: 'LatestRevokeRequest'))
    RestoreAccessBackupVaultListMember.type = Types::RestoreAccessBackupVaultListMember
    RestoreDeletionStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    RestoreDeletionStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    RestoreDeletionStatus.add_member(:successful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESSFUL', traits: {"smithy.api#enumValue" => "SUCCESSFUL"}))
    RestoreJobCreator.add_member(:restore_testing_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RestoreTestingPlanArn'))
    RestoreJobCreator.type = Types::RestoreJobCreator
    RestoreJobState.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    RestoreJobState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    RestoreJobState.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    RestoreJobState.add_member(:aborted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABORTED', traits: {"smithy.api#enumValue" => "ABORTED"}))
    RestoreJobState.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    RestoreJobState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    RestoreJobState.add_member(:aggregate_all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AGGREGATE_ALL', traits: {"smithy.api#enumValue" => "AGGREGATE_ALL"}))
    RestoreJobState.add_member(:any, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANY', traits: {"smithy.api#enumValue" => "ANY"}))
    RestoreJobStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    RestoreJobStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    RestoreJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    RestoreJobStatus.add_member(:aborted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABORTED', traits: {"smithy.api#enumValue" => "ABORTED"}))
    RestoreJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    RestoreJobSummary.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'Region'))
    RestoreJobSummary.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    RestoreJobSummary.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreJobState, location_name: 'State'))
    RestoreJobSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    RestoreJobSummary.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Count', traits: {"smithy.api#default" => 0}))
    RestoreJobSummary.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime'))
    RestoreJobSummary.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime'))
    RestoreJobSummary.type = Types::RestoreJobSummary
    RestoreJobSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreJobSummary)
    RestoreJobsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreJobsListMember)
    RestoreJobsListMember.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    RestoreJobsListMember.add_member(:restore_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RestoreJobId'))
    RestoreJobsListMember.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn'))
    RestoreJobsListMember.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    RestoreJobsListMember.add_member(:completion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CompletionDate'))
    RestoreJobsListMember.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreJobStatus, location_name: 'Status'))
    RestoreJobsListMember.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage'))
    RestoreJobsListMember.add_member(:percent_done, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PercentDone'))
    RestoreJobsListMember.add_member(:backup_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'BackupSizeInBytes'))
    RestoreJobsListMember.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'IamRoleArn'))
    RestoreJobsListMember.add_member(:expected_completion_time_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ExpectedCompletionTimeMinutes'))
    RestoreJobsListMember.add_member(:created_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'CreatedResourceArn'))
    RestoreJobsListMember.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    RestoreJobsListMember.add_member(:recovery_point_creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RecoveryPointCreationDate'))
    RestoreJobsListMember.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreJobCreator, location_name: 'CreatedBy'))
    RestoreJobsListMember.add_member(:validation_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreValidationStatus, location_name: 'ValidationStatus'))
    RestoreJobsListMember.add_member(:validation_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ValidationStatusMessage'))
    RestoreJobsListMember.add_member(:deletion_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDeletionStatus, location_name: 'DeletionStatus'))
    RestoreJobsListMember.add_member(:deletion_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeletionStatusMessage'))
    RestoreJobsListMember.type = Types::RestoreJobsListMember
    RestoreTestingPlanForCreate.add_member(:recovery_point_selection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTestingRecoveryPointSelection, location_name: 'RecoveryPointSelection', traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForCreate.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanName', traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForCreate.add_member(:schedule_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ScheduleExpression', traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForCreate.add_member(:schedule_expression_timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ScheduleExpressionTimezone'))
    RestoreTestingPlanForCreate.add_member(:start_window_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StartWindowHours', traits: {"smithy.api#default" => 0}))
    RestoreTestingPlanForCreate.type = Types::RestoreTestingPlanForCreate
    RestoreTestingPlanForGet.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForGet.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'CreatorRequestId'))
    RestoreTestingPlanForGet.add_member(:last_execution_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastExecutionTime'))
    RestoreTestingPlanForGet.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdateTime'))
    RestoreTestingPlanForGet.add_member(:recovery_point_selection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTestingRecoveryPointSelection, location_name: 'RecoveryPointSelection', traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForGet.add_member(:restore_testing_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanArn', traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForGet.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanName', traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForGet.add_member(:schedule_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ScheduleExpression', traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForGet.add_member(:schedule_expression_timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ScheduleExpressionTimezone'))
    RestoreTestingPlanForGet.add_member(:start_window_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StartWindowHours', traits: {"smithy.api#default" => 0}))
    RestoreTestingPlanForGet.type = Types::RestoreTestingPlanForGet
    RestoreTestingPlanForList.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForList.add_member(:last_execution_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastExecutionTime'))
    RestoreTestingPlanForList.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdateTime'))
    RestoreTestingPlanForList.add_member(:restore_testing_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanArn', traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForList.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanName', traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForList.add_member(:schedule_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ScheduleExpression', traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForList.add_member(:schedule_expression_timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ScheduleExpressionTimezone'))
    RestoreTestingPlanForList.add_member(:start_window_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StartWindowHours', traits: {"smithy.api#default" => 0}))
    RestoreTestingPlanForList.type = Types::RestoreTestingPlanForList
    RestoreTestingPlanForUpdate.add_member(:recovery_point_selection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTestingRecoveryPointSelection, location_name: 'RecoveryPointSelection'))
    RestoreTestingPlanForUpdate.add_member(:schedule_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ScheduleExpression'))
    RestoreTestingPlanForUpdate.add_member(:schedule_expression_timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ScheduleExpressionTimezone'))
    RestoreTestingPlanForUpdate.add_member(:start_window_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StartWindowHours', traits: {"smithy.api#default" => 0}))
    RestoreTestingPlanForUpdate.type = Types::RestoreTestingPlanForUpdate
    RestoreTestingPlans.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTestingPlanForList)
    RestoreTestingRecoveryPointSelection.add_member(:algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTestingRecoveryPointSelectionAlgorithm, location_name: 'Algorithm'))
    RestoreTestingRecoveryPointSelection.add_member(:exclude_vaults, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'ExcludeVaults'))
    RestoreTestingRecoveryPointSelection.add_member(:include_vaults, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'IncludeVaults'))
    RestoreTestingRecoveryPointSelection.add_member(:recovery_point_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTestingRecoveryPointTypeList, location_name: 'RecoveryPointTypes'))
    RestoreTestingRecoveryPointSelection.add_member(:selection_window_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SelectionWindowDays', traits: {"smithy.api#default" => 0}))
    RestoreTestingRecoveryPointSelection.type = Types::RestoreTestingRecoveryPointSelection
    RestoreTestingRecoveryPointSelectionAlgorithm.add_member(:latest_within_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LATEST_WITHIN_WINDOW', traits: {"smithy.api#enumValue" => "LATEST_WITHIN_WINDOW"}))
    RestoreTestingRecoveryPointSelectionAlgorithm.add_member(:random_within_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RANDOM_WITHIN_WINDOW', traits: {"smithy.api#enumValue" => "RANDOM_WITHIN_WINDOW"}))
    RestoreTestingRecoveryPointType.add_member(:continuous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTINUOUS', traits: {"smithy.api#enumValue" => "CONTINUOUS"}))
    RestoreTestingRecoveryPointType.add_member(:snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNAPSHOT', traits: {"smithy.api#enumValue" => "SNAPSHOT"}))
    RestoreTestingRecoveryPointTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTestingRecoveryPointType)
    RestoreTestingSelectionForCreate.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'IamRoleArn', traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForCreate.add_member(:protected_resource_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'ProtectedResourceArns'))
    RestoreTestingSelectionForCreate.add_member(:protected_resource_conditions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedResourceConditions, location_name: 'ProtectedResourceConditions'))
    RestoreTestingSelectionForCreate.add_member(:protected_resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ProtectedResourceType', traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForCreate.add_member(:restore_metadata_overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringMap, location_name: 'RestoreMetadataOverrides'))
    RestoreTestingSelectionForCreate.add_member(:restore_testing_selection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingSelectionName', traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForCreate.add_member(:validation_window_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ValidationWindowHours', traits: {"smithy.api#default" => 0}))
    RestoreTestingSelectionForCreate.type = Types::RestoreTestingSelectionForCreate
    RestoreTestingSelectionForGet.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForGet.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'CreatorRequestId'))
    RestoreTestingSelectionForGet.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'IamRoleArn', traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForGet.add_member(:protected_resource_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'ProtectedResourceArns'))
    RestoreTestingSelectionForGet.add_member(:protected_resource_conditions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedResourceConditions, location_name: 'ProtectedResourceConditions'))
    RestoreTestingSelectionForGet.add_member(:protected_resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ProtectedResourceType', traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForGet.add_member(:restore_metadata_overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringMap, location_name: 'RestoreMetadataOverrides'))
    RestoreTestingSelectionForGet.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanName', traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForGet.add_member(:restore_testing_selection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingSelectionName', traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForGet.add_member(:validation_window_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ValidationWindowHours', traits: {"smithy.api#default" => 0}))
    RestoreTestingSelectionForGet.type = Types::RestoreTestingSelectionForGet
    RestoreTestingSelectionForList.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForList.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'IamRoleArn', traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForList.add_member(:protected_resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ProtectedResourceType', traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForList.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanName', traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForList.add_member(:restore_testing_selection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingSelectionName', traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForList.add_member(:validation_window_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ValidationWindowHours', traits: {"smithy.api#default" => 0}))
    RestoreTestingSelectionForList.type = Types::RestoreTestingSelectionForList
    RestoreTestingSelectionForUpdate.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'IamRoleArn'))
    RestoreTestingSelectionForUpdate.add_member(:protected_resource_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'ProtectedResourceArns'))
    RestoreTestingSelectionForUpdate.add_member(:protected_resource_conditions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedResourceConditions, location_name: 'ProtectedResourceConditions'))
    RestoreTestingSelectionForUpdate.add_member(:restore_metadata_overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringMap, location_name: 'RestoreMetadataOverrides'))
    RestoreTestingSelectionForUpdate.add_member(:validation_window_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ValidationWindowHours', traits: {"smithy.api#default" => 0}))
    RestoreTestingSelectionForUpdate.type = Types::RestoreTestingSelectionForUpdate
    RestoreTestingSelections.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTestingSelectionForList)
    RestoreValidationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    RestoreValidationStatus.add_member(:successful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESSFUL', traits: {"smithy.api#enumValue" => "SUCCESSFUL"}))
    RestoreValidationStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMED_OUT', traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    RestoreValidationStatus.add_member(:validating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATING', traits: {"smithy.api#enumValue" => "VALIDATING"}))
    RevokeRestoreAccessBackupVaultInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RevokeRestoreAccessBackupVaultInput.add_member(:restore_access_backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RestoreAccessBackupVaultArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RevokeRestoreAccessBackupVaultInput.add_member(:requester_comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequesterComment, location_name: 'RequesterComment', traits: {"smithy.api#httpQuery" => "requesterComment"}))
    RevokeRestoreAccessBackupVaultInput.type = Types::RevokeRestoreAccessBackupVaultInput
    SensitiveStringMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    SensitiveStringMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ServiceUnavailableException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceUnavailableException.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    ServiceUnavailableException.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Context'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartBackupJobInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#required" => {}}))
    StartBackupJobInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    StartBackupJobInput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'IamRoleArn', traits: {"smithy.api#required" => {}}))
    StartBackupJobInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdempotencyToken', traits: {"smithy.api#idempotencyToken" => {}}))
    StartBackupJobInput.add_member(:start_window_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WindowMinutes, location_name: 'StartWindowMinutes'))
    StartBackupJobInput.add_member(:complete_window_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WindowMinutes, location_name: 'CompleteWindowMinutes'))
    StartBackupJobInput.add_member(:lifecycle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Lifecycle, location_name: 'Lifecycle'))
    StartBackupJobInput.add_member(:recovery_point_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'RecoveryPointTags'))
    StartBackupJobInput.add_member(:backup_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupOptions, location_name: 'BackupOptions'))
    StartBackupJobInput.add_member(:index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Index, location_name: 'Index'))
    StartBackupJobInput.type = Types::StartBackupJobInput
    StartBackupJobOutput.add_member(:backup_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupJobId'))
    StartBackupJobOutput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn'))
    StartBackupJobOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    StartBackupJobOutput.add_member(:is_parent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'IsParent', traits: {"smithy.api#default" => false}))
    StartBackupJobOutput.type = Types::StartBackupJobOutput
    StartCopyJobInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn', traits: {"smithy.api#required" => {}}))
    StartCopyJobInput.add_member(:source_backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'SourceBackupVaultName', traits: {"smithy.api#required" => {}}))
    StartCopyJobInput.add_member(:destination_backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'DestinationBackupVaultArn', traits: {"smithy.api#required" => {}}))
    StartCopyJobInput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'IamRoleArn', traits: {"smithy.api#required" => {}}))
    StartCopyJobInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdempotencyToken', traits: {"smithy.api#idempotencyToken" => {}}))
    StartCopyJobInput.add_member(:lifecycle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Lifecycle, location_name: 'Lifecycle'))
    StartCopyJobInput.type = Types::StartCopyJobInput
    StartCopyJobOutput.add_member(:copy_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CopyJobId'))
    StartCopyJobOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    StartCopyJobOutput.add_member(:is_parent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'IsParent', traits: {"smithy.api#default" => false}))
    StartCopyJobOutput.type = Types::StartCopyJobOutput
    StartReportJobInput.add_member(:report_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportPlanName, location_name: 'ReportPlanName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartReportJobInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdempotencyToken', traits: {"smithy.api#idempotencyToken" => {}}))
    StartReportJobInput.type = Types::StartReportJobInput
    StartReportJobOutput.add_member(:report_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportJobId, location_name: 'ReportJobId'))
    StartReportJobOutput.type = Types::StartReportJobOutput
    StartRestoreJobInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn', traits: {"smithy.api#required" => {}}))
    StartRestoreJobInput.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#required" => {}}))
    StartRestoreJobInput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'IamRoleArn'))
    StartRestoreJobInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdempotencyToken', traits: {"smithy.api#idempotencyToken" => {}}))
    StartRestoreJobInput.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    StartRestoreJobInput.add_member(:copy_source_tags_to_restored_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'CopySourceTagsToRestoredResource', traits: {"smithy.api#default" => false}))
    StartRestoreJobInput.type = Types::StartRestoreJobInput
    StartRestoreJobOutput.add_member(:restore_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreJobId, location_name: 'RestoreJobId'))
    StartRestoreJobOutput.type = Types::StartRestoreJobOutput
    StopBackupJobInput.add_member(:backup_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupJobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopBackupJobInput.type = Types::StopBackupJobInput
    StorageClass.add_member(:warm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARM', traits: {"smithy.api#enumValue" => "WARM"}))
    StorageClass.add_member(:cold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COLD', traits: {"smithy.api#enumValue" => "COLD"}))
    StorageClass.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    Tags.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_key_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeyList', traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateBackupPlanInput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBackupPlanInput.add_member(:backup_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPlanInput, location_name: 'BackupPlan', traits: {"smithy.api#required" => {}}))
    UpdateBackupPlanInput.type = Types::UpdateBackupPlanInput
    UpdateBackupPlanOutput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupPlanId'))
    UpdateBackupPlanOutput.add_member(:backup_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'BackupPlanArn'))
    UpdateBackupPlanOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate'))
    UpdateBackupPlanOutput.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VersionId'))
    UpdateBackupPlanOutput.add_member(:advanced_backup_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedBackupSettings, location_name: 'AdvancedBackupSettings'))
    UpdateBackupPlanOutput.type = Types::UpdateBackupPlanOutput
    UpdateFrameworkInput.add_member(:framework_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkName, location_name: 'FrameworkName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFrameworkInput.add_member(:framework_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: 'FrameworkDescription'))
    UpdateFrameworkInput.add_member(:framework_controls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkControls, location_name: 'FrameworkControls'))
    UpdateFrameworkInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdempotencyToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateFrameworkInput.type = Types::UpdateFrameworkInput
    UpdateFrameworkOutput.add_member(:framework_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkName, location_name: 'FrameworkName'))
    UpdateFrameworkOutput.add_member(:framework_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'FrameworkArn'))
    UpdateFrameworkOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime'))
    UpdateFrameworkOutput.type = Types::UpdateFrameworkOutput
    UpdateGlobalSettingsInput.add_member(:global_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSettings, location_name: 'GlobalSettings'))
    UpdateGlobalSettingsInput.type = Types::UpdateGlobalSettingsInput
    UpdateRecoveryPointIndexSettingsInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecoveryPointIndexSettingsInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecoveryPointIndexSettingsInput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'IamRoleArn'))
    UpdateRecoveryPointIndexSettingsInput.add_member(:index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Index, location_name: 'Index', traits: {"smithy.api#required" => {}}))
    UpdateRecoveryPointIndexSettingsInput.type = Types::UpdateRecoveryPointIndexSettingsInput
    UpdateRecoveryPointIndexSettingsOutput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName'))
    UpdateRecoveryPointIndexSettingsOutput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn'))
    UpdateRecoveryPointIndexSettingsOutput.add_member(:index_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexStatus, location_name: 'IndexStatus'))
    UpdateRecoveryPointIndexSettingsOutput.add_member(:index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Index, location_name: 'Index'))
    UpdateRecoveryPointIndexSettingsOutput.type = Types::UpdateRecoveryPointIndexSettingsOutput
    UpdateRecoveryPointLifecycleInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupVaultName, location_name: 'BackupVaultName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecoveryPointLifecycleInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecoveryPointLifecycleInput.add_member(:lifecycle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Lifecycle, location_name: 'Lifecycle'))
    UpdateRecoveryPointLifecycleInput.type = Types::UpdateRecoveryPointLifecycleInput
    UpdateRecoveryPointLifecycleOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'BackupVaultArn'))
    UpdateRecoveryPointLifecycleOutput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'RecoveryPointArn'))
    UpdateRecoveryPointLifecycleOutput.add_member(:lifecycle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Lifecycle, location_name: 'Lifecycle'))
    UpdateRecoveryPointLifecycleOutput.add_member(:calculated_lifecycle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculatedLifecycle, location_name: 'CalculatedLifecycle'))
    UpdateRecoveryPointLifecycleOutput.type = Types::UpdateRecoveryPointLifecycleOutput
    UpdateRegionSettingsInput.add_member(:resource_type_opt_in_preference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeOptInPreference, location_name: 'ResourceTypeOptInPreference'))
    UpdateRegionSettingsInput.add_member(:resource_type_management_preference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeManagementPreference, location_name: 'ResourceTypeManagementPreference'))
    UpdateRegionSettingsInput.type = Types::UpdateRegionSettingsInput
    UpdateReportPlanInput.add_member(:report_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportPlanName, location_name: 'ReportPlanName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReportPlanInput.add_member(:report_plan_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportPlanDescription, location_name: 'ReportPlanDescription'))
    UpdateReportPlanInput.add_member(:report_delivery_channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportDeliveryChannel, location_name: 'ReportDeliveryChannel'))
    UpdateReportPlanInput.add_member(:report_setting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportSetting, location_name: 'ReportSetting'))
    UpdateReportPlanInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdempotencyToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateReportPlanInput.type = Types::UpdateReportPlanInput
    UpdateReportPlanOutput.add_member(:report_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportPlanName, location_name: 'ReportPlanName'))
    UpdateReportPlanOutput.add_member(:report_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ReportPlanArn'))
    UpdateReportPlanOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime'))
    UpdateReportPlanOutput.type = Types::UpdateReportPlanOutput
    UpdateRestoreTestingPlanInput.add_member(:restore_testing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTestingPlanForUpdate, location_name: 'RestoreTestingPlan', traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingPlanInput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRestoreTestingPlanInput.type = Types::UpdateRestoreTestingPlanInput
    UpdateRestoreTestingPlanOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingPlanOutput.add_member(:restore_testing_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanArn', traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingPlanOutput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanName', traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingPlanOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingPlanOutput.type = Types::UpdateRestoreTestingPlanOutput
    UpdateRestoreTestingSelectionInput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRestoreTestingSelectionInput.add_member(:restore_testing_selection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTestingSelectionForUpdate, location_name: 'RestoreTestingSelection', traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingSelectionInput.add_member(:restore_testing_selection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingSelectionName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRestoreTestingSelectionInput.type = Types::UpdateRestoreTestingSelectionInput
    UpdateRestoreTestingSelectionOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingSelectionOutput.add_member(:restore_testing_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanArn', traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingSelectionOutput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingPlanName', traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingSelectionOutput.add_member(:restore_testing_selection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RestoreTestingSelectionName', traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingSelectionOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingSelectionOutput.type = Types::UpdateRestoreTestingSelectionOutput
    VaultNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    VaultState.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    VaultState.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    VaultState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    VaultType.add_member(:backup_vault, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACKUP_VAULT', traits: {"smithy.api#enumValue" => "BACKUP_VAULT"}))
    VaultType.add_member(:logically_air_gapped_backup_vault, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOGICALLY_AIR_GAPPED_BACKUP_VAULT', traits: {"smithy.api#enumValue" => "LOGICALLY_AIR_GAPPED_BACKUP_VAULT"}))
    VaultType.add_member(:restore_access_backup_vault, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTORE_ACCESS_BACKUP_VAULT', traits: {"smithy.api#enumValue" => "RESTORE_ACCESS_BACKUP_VAULT"}))
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    StringMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    StringMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)

    CryoControllerUserManager = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.backup#CryoControllerUserManager"
      service.name = "CryoControllerUserManager"
      service.version = "2018-11-15"
      service.traits = {"aws.api#service" => {"sdkId" => "Backup", "arnNamespace" => "backup", "cloudFormationName" => "Backup", "cloudTrailEventSource" => "backup.amazonaws.com", "endpointPrefix" => "backup"}, "aws.auth#sigv4" => {"name" => "backup"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Backup"}
      service.add_operation(:associate_backup_vault_mpa_approval_team, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#AssociateBackupVaultMpaApprovalTeam"
        operation.name = "AssociateBackupVaultMpaApprovalTeam"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateBackupVaultMpaApprovalTeamInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/backup-vaults/{BackupVaultName}/mpaApprovalTeam", "code" => 204}}
      end)
      service.add_operation(:cancel_legal_hold, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CancelLegalHold"
        operation.name = "CancelLegalHold"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelLegalHoldInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelLegalHoldOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/legal-holds/{LegalHoldId}", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_backup_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateBackupPlan"
        operation.name = "CreateBackupPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackupPlanInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackupPlanOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/backup/plans", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_backup_selection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateBackupSelection"
        operation.name = "CreateBackupSelection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackupSelectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackupSelectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/backup/plans/{BackupPlanId}/selections", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_backup_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateBackupVault"
        operation.name = "CreateBackupVault"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackupVaultInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackupVaultOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/backup-vaults/{BackupVaultName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_framework, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateFramework"
        operation.name = "CreateFramework"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFrameworkInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFrameworkOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/audit/frameworks", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_legal_hold, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateLegalHold"
        operation.name = "CreateLegalHold"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLegalHoldInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLegalHoldOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/legal-holds", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_logically_air_gapped_backup_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateLogicallyAirGappedBackupVault"
        operation.name = "CreateLogicallyAirGappedBackupVault"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLogicallyAirGappedBackupVaultInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLogicallyAirGappedBackupVaultOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/logically-air-gapped-backup-vaults/{BackupVaultName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_report_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateReportPlan"
        operation.name = "CreateReportPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReportPlanInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReportPlanOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/audit/report-plans", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_restore_access_backup_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateRestoreAccessBackupVault"
        operation.name = "CreateRestoreAccessBackupVault"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRestoreAccessBackupVaultInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRestoreAccessBackupVaultOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restore-access-backup-vaults", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_restore_testing_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateRestoreTestingPlan"
        operation.name = "CreateRestoreTestingPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRestoreTestingPlanInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRestoreTestingPlanOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restore-testing/plans", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_restore_testing_selection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateRestoreTestingSelection"
        operation.name = "CreateRestoreTestingSelection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRestoreTestingSelectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRestoreTestingSelectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restore-testing/plans/{RestoreTestingPlanName}/selections", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_backup_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteBackupPlan"
        operation.name = "DeleteBackupPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackupPlanInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackupPlanOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/backup/plans/{BackupPlanId}", "code" => 200}}
      end)
      service.add_operation(:delete_backup_selection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteBackupSelection"
        operation.name = "DeleteBackupSelection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackupSelectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/backup/plans/{BackupPlanId}/selections/{SelectionId}", "code" => 200}}
      end)
      service.add_operation(:delete_backup_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteBackupVault"
        operation.name = "DeleteBackupVault"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackupVaultInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/backup-vaults/{BackupVaultName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_backup_vault_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteBackupVaultAccessPolicy"
        operation.name = "DeleteBackupVaultAccessPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackupVaultAccessPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/backup-vaults/{BackupVaultName}/access-policy", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_backup_vault_lock_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteBackupVaultLockConfiguration"
        operation.name = "DeleteBackupVaultLockConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackupVaultLockConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/backup-vaults/{BackupVaultName}/vault-lock", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_backup_vault_notifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteBackupVaultNotifications"
        operation.name = "DeleteBackupVaultNotifications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackupVaultNotificationsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/backup-vaults/{BackupVaultName}/notification-configuration", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_framework, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteFramework"
        operation.name = "DeleteFramework"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFrameworkInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/audit/frameworks/{FrameworkName}", "code" => 200}}
      end)
      service.add_operation(:delete_recovery_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteRecoveryPoint"
        operation.name = "DeleteRecoveryPoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRecoveryPointInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_report_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteReportPlan"
        operation.name = "DeleteReportPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReportPlanInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/audit/report-plans/{ReportPlanName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_restore_testing_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteRestoreTestingPlan"
        operation.name = "DeleteRestoreTestingPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRestoreTestingPlanInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restore-testing/plans/{RestoreTestingPlanName}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_restore_testing_selection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteRestoreTestingSelection"
        operation.name = "DeleteRestoreTestingSelection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRestoreTestingSelectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_backup_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeBackupJob"
        operation.name = "DescribeBackupJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBackupJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBackupJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-jobs/{BackupJobId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_backup_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeBackupVault"
        operation.name = "DescribeBackupVault"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBackupVaultInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBackupVaultOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-vaults/{BackupVaultName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_copy_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeCopyJob"
        operation.name = "DescribeCopyJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCopyJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCopyJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/copy-jobs/{CopyJobId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_framework, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeFramework"
        operation.name = "DescribeFramework"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFrameworkInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFrameworkOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/audit/frameworks/{FrameworkName}", "code" => 200}}
      end)
      service.add_operation(:describe_global_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeGlobalSettings"
        operation.name = "DescribeGlobalSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGlobalSettingsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGlobalSettingsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-settings", "code" => 200}}
      end)
      service.add_operation(:describe_protected_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeProtectedResource"
        operation.name = "DescribeProtectedResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProtectedResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProtectedResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resources/{ResourceArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_recovery_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeRecoveryPoint"
        operation.name = "DescribeRecoveryPoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecoveryPointInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecoveryPointOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_region_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeRegionSettings"
        operation.name = "DescribeRegionSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegionSettingsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegionSettingsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/account-settings", "code" => 200}}
      end)
      service.add_operation(:describe_report_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeReportJob"
        operation.name = "DescribeReportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReportJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReportJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/audit/report-jobs/{ReportJobId}", "code" => 200}}
      end)
      service.add_operation(:describe_report_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeReportPlan"
        operation.name = "DescribeReportPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReportPlanInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReportPlanOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/audit/report-plans/{ReportPlanName}", "code" => 200}}
      end)
      service.add_operation(:describe_restore_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeRestoreJob"
        operation.name = "DescribeRestoreJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRestoreJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRestoreJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restore-jobs/{RestoreJobId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_backup_vault_mpa_approval_team, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DisassociateBackupVaultMpaApprovalTeam"
        operation.name = "DisassociateBackupVaultMpaApprovalTeam"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateBackupVaultMpaApprovalTeamInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backup-vaults/{BackupVaultName}/mpaApprovalTeam?delete", "code" => 204}}
      end)
      service.add_operation(:disassociate_recovery_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DisassociateRecoveryPoint"
        operation.name = "DisassociateRecoveryPoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateRecoveryPointInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/disassociate", "code" => 200}}
      end)
      service.add_operation(:disassociate_recovery_point_from_parent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DisassociateRecoveryPointFromParent"
        operation.name = "DisassociateRecoveryPointFromParent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateRecoveryPointFromParentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/parentAssociation", "code" => 204}}
      end)
      service.add_operation(:export_backup_plan_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ExportBackupPlanTemplate"
        operation.name = "ExportBackupPlanTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportBackupPlanTemplateInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportBackupPlanTemplateOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup/plans/{BackupPlanId}/toTemplate", "code" => 200}}
      end)
      service.add_operation(:get_backup_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetBackupPlan"
        operation.name = "GetBackupPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackupPlanInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackupPlanOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup/plans/{BackupPlanId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_backup_plan_from_json, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetBackupPlanFromJSON"
        operation.name = "GetBackupPlanFromJSON"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackupPlanFromJSONInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackupPlanFromJSONOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backup/template/json/toPlan", "code" => 200}}
      end)
      service.add_operation(:get_backup_plan_from_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetBackupPlanFromTemplate"
        operation.name = "GetBackupPlanFromTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackupPlanFromTemplateInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackupPlanFromTemplateOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup/template/plans/{BackupPlanTemplateId}/toPlan", "code" => 200}}
      end)
      service.add_operation(:get_backup_selection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetBackupSelection"
        operation.name = "GetBackupSelection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackupSelectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackupSelectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup/plans/{BackupPlanId}/selections/{SelectionId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_backup_vault_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetBackupVaultAccessPolicy"
        operation.name = "GetBackupVaultAccessPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackupVaultAccessPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackupVaultAccessPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-vaults/{BackupVaultName}/access-policy", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_backup_vault_notifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetBackupVaultNotifications"
        operation.name = "GetBackupVaultNotifications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackupVaultNotificationsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackupVaultNotificationsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-vaults/{BackupVaultName}/notification-configuration", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_legal_hold, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetLegalHold"
        operation.name = "GetLegalHold"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLegalHoldInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLegalHoldOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/legal-holds/{LegalHoldId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_recovery_point_index_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetRecoveryPointIndexDetails"
        operation.name = "GetRecoveryPointIndexDetails"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecoveryPointIndexDetailsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecoveryPointIndexDetailsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/index", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_recovery_point_restore_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetRecoveryPointRestoreMetadata"
        operation.name = "GetRecoveryPointRestoreMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecoveryPointRestoreMetadataInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecoveryPointRestoreMetadataOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/restore-metadata", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_restore_job_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetRestoreJobMetadata"
        operation.name = "GetRestoreJobMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRestoreJobMetadataInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRestoreJobMetadataOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restore-jobs/{RestoreJobId}/metadata", "code" => 200}}
      end)
      service.add_operation(:get_restore_testing_inferred_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetRestoreTestingInferredMetadata"
        operation.name = "GetRestoreTestingInferredMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRestoreTestingInferredMetadataInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRestoreTestingInferredMetadataOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restore-testing/inferred-metadata", "code" => 200}}
      end)
      service.add_operation(:get_restore_testing_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetRestoreTestingPlan"
        operation.name = "GetRestoreTestingPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRestoreTestingPlanInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRestoreTestingPlanOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restore-testing/plans/{RestoreTestingPlanName}", "code" => 200}}
      end)
      service.add_operation(:get_restore_testing_selection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetRestoreTestingSelection"
        operation.name = "GetRestoreTestingSelection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRestoreTestingSelectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRestoreTestingSelectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}", "code" => 200}}
      end)
      service.add_operation(:get_supported_resource_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetSupportedResourceTypes"
        operation.name = "GetSupportedResourceTypes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSupportedResourceTypesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/supported-resource-types", "code" => 200}}
      end)
      service.add_operation(:list_backup_job_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListBackupJobSummaries"
        operation.name = "ListBackupJobSummaries"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBackupJobSummariesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBackupJobSummariesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/audit/backup-job-summaries", "code" => 200}}
        operation[:paginator] = Paginators::ListBackupJobSummaries.new
      end)
      service.add_operation(:list_backup_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListBackupJobs"
        operation.name = "ListBackupJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBackupJobsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBackupJobsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-jobs", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListBackupJobs.new
      end)
      service.add_operation(:list_backup_plan_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListBackupPlanTemplates"
        operation.name = "ListBackupPlanTemplates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBackupPlanTemplatesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBackupPlanTemplatesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup/template/plans", "code" => 200}}
        operation[:paginator] = Paginators::ListBackupPlanTemplates.new
      end)
      service.add_operation(:list_backup_plan_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListBackupPlanVersions"
        operation.name = "ListBackupPlanVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBackupPlanVersionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBackupPlanVersionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup/plans/{BackupPlanId}/versions", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListBackupPlanVersions.new
      end)
      service.add_operation(:list_backup_plans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListBackupPlans"
        operation.name = "ListBackupPlans"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBackupPlansInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBackupPlansOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup/plans", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListBackupPlans.new
      end)
      service.add_operation(:list_backup_selections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListBackupSelections"
        operation.name = "ListBackupSelections"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBackupSelectionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBackupSelectionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup/plans/{BackupPlanId}/selections", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListBackupSelections.new
      end)
      service.add_operation(:list_backup_vaults, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListBackupVaults"
        operation.name = "ListBackupVaults"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBackupVaultsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBackupVaultsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-vaults", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListBackupVaults.new
      end)
      service.add_operation(:list_copy_job_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListCopyJobSummaries"
        operation.name = "ListCopyJobSummaries"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCopyJobSummariesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCopyJobSummariesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/audit/copy-job-summaries", "code" => 200}}
        operation[:paginator] = Paginators::ListCopyJobSummaries.new
      end)
      service.add_operation(:list_copy_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListCopyJobs"
        operation.name = "ListCopyJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCopyJobsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCopyJobsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/copy-jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListCopyJobs.new
      end)
      service.add_operation(:list_frameworks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListFrameworks"
        operation.name = "ListFrameworks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFrameworksInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFrameworksOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/audit/frameworks", "code" => 200}}
        operation[:paginator] = Paginators::ListFrameworks.new
      end)
      service.add_operation(:list_indexed_recovery_points, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListIndexedRecoveryPoints"
        operation.name = "ListIndexedRecoveryPoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexedRecoveryPointsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexedRecoveryPointsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/indexes/recovery-point", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListIndexedRecoveryPoints.new
      end)
      service.add_operation(:list_legal_holds, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListLegalHolds"
        operation.name = "ListLegalHolds"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLegalHoldsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLegalHoldsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/legal-holds", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListLegalHolds.new
      end)
      service.add_operation(:list_protected_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListProtectedResources"
        operation.name = "ListProtectedResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProtectedResourcesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProtectedResourcesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resources", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListProtectedResources.new
      end)
      service.add_operation(:list_protected_resources_by_backup_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListProtectedResourcesByBackupVault"
        operation.name = "ListProtectedResourcesByBackupVault"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProtectedResourcesByBackupVaultInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProtectedResourcesByBackupVaultOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-vaults/{BackupVaultName}/resources", "code" => 200}}
        operation[:paginator] = Paginators::ListProtectedResourcesByBackupVault.new
      end)
      service.add_operation(:list_recovery_points_by_backup_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListRecoveryPointsByBackupVault"
        operation.name = "ListRecoveryPointsByBackupVault"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecoveryPointsByBackupVaultInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecoveryPointsByBackupVaultOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-vaults/{BackupVaultName}/recovery-points", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListRecoveryPointsByBackupVault.new
      end)
      service.add_operation(:list_recovery_points_by_legal_hold, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListRecoveryPointsByLegalHold"
        operation.name = "ListRecoveryPointsByLegalHold"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecoveryPointsByLegalHoldInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecoveryPointsByLegalHoldOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/legal-holds/{LegalHoldId}/recovery-points", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListRecoveryPointsByLegalHold.new
      end)
      service.add_operation(:list_recovery_points_by_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListRecoveryPointsByResource"
        operation.name = "ListRecoveryPointsByResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecoveryPointsByResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecoveryPointsByResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resources/{ResourceArn}/recovery-points", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListRecoveryPointsByResource.new
      end)
      service.add_operation(:list_report_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListReportJobs"
        operation.name = "ListReportJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReportJobsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReportJobsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/audit/report-jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListReportJobs.new
      end)
      service.add_operation(:list_report_plans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListReportPlans"
        operation.name = "ListReportPlans"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReportPlansInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReportPlansOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/audit/report-plans", "code" => 200}}
        operation[:paginator] = Paginators::ListReportPlans.new
      end)
      service.add_operation(:list_restore_access_backup_vaults, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListRestoreAccessBackupVaults"
        operation.name = "ListRestoreAccessBackupVaults"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRestoreAccessBackupVaultsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRestoreAccessBackupVaultsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/logically-air-gapped-backup-vaults/{BackupVaultName}/restore-access-backup-vaults", "code" => 200}}
        operation[:paginator] = Paginators::ListRestoreAccessBackupVaults.new
      end)
      service.add_operation(:list_restore_job_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListRestoreJobSummaries"
        operation.name = "ListRestoreJobSummaries"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRestoreJobSummariesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRestoreJobSummariesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/audit/restore-job-summaries", "code" => 200}}
        operation[:paginator] = Paginators::ListRestoreJobSummaries.new
      end)
      service.add_operation(:list_restore_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListRestoreJobs"
        operation.name = "ListRestoreJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRestoreJobsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRestoreJobsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restore-jobs", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListRestoreJobs.new
      end)
      service.add_operation(:list_restore_jobs_by_protected_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListRestoreJobsByProtectedResource"
        operation.name = "ListRestoreJobsByProtectedResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRestoreJobsByProtectedResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRestoreJobsByProtectedResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resources/{ResourceArn}/restore-jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListRestoreJobsByProtectedResource.new
      end)
      service.add_operation(:list_restore_testing_plans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListRestoreTestingPlans"
        operation.name = "ListRestoreTestingPlans"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRestoreTestingPlansInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRestoreTestingPlansOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restore-testing/plans", "code" => 200}}
        operation[:paginator] = Paginators::ListRestoreTestingPlans.new
      end)
      service.add_operation(:list_restore_testing_selections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListRestoreTestingSelections"
        operation.name = "ListRestoreTestingSelections"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRestoreTestingSelectionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRestoreTestingSelectionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restore-testing/plans/{RestoreTestingPlanName}/selections", "code" => 200}}
        operation[:paginator] = Paginators::ListRestoreTestingSelections.new
      end)
      service.add_operation(:list_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListTags"
        operation.name = "ListTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListTags.new
      end)
      service.add_operation(:put_backup_vault_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#PutBackupVaultAccessPolicy"
        operation.name = "PutBackupVaultAccessPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutBackupVaultAccessPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/backup-vaults/{BackupVaultName}/access-policy", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_backup_vault_lock_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#PutBackupVaultLockConfiguration"
        operation.name = "PutBackupVaultLockConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutBackupVaultLockConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/backup-vaults/{BackupVaultName}/vault-lock", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_backup_vault_notifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#PutBackupVaultNotifications"
        operation.name = "PutBackupVaultNotifications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutBackupVaultNotificationsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/backup-vaults/{BackupVaultName}/notification-configuration", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_restore_validation_result, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#PutRestoreValidationResult"
        operation.name = "PutRestoreValidationResult"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutRestoreValidationResultInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restore-jobs/{RestoreJobId}/validations", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:revoke_restore_access_backup_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#RevokeRestoreAccessBackupVault"
        operation.name = "RevokeRestoreAccessBackupVault"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeRestoreAccessBackupVaultInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/logically-air-gapped-backup-vaults/{BackupVaultName}/restore-access-backup-vaults/{RestoreAccessBackupVaultArn}", "code" => 200}}
      end)
      service.add_operation(:start_backup_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#StartBackupJob"
        operation.name = "StartBackupJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartBackupJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartBackupJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/backup-jobs", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_copy_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#StartCopyJob"
        operation.name = "StartCopyJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCopyJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCopyJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/copy-jobs", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_report_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#StartReportJob"
        operation.name = "StartReportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartReportJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartReportJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/audit/report-jobs/{ReportPlanName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_restore_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#StartRestoreJob"
        operation.name = "StartRestoreJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartRestoreJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartRestoreJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restore-jobs", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_backup_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#StopBackupJob"
        operation.name = "StopBackupJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopBackupJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backup-jobs/{BackupJobId}", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/untag/{ResourceArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_backup_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UpdateBackupPlan"
        operation.name = "UpdateBackupPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackupPlanInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackupPlanOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backup/plans/{BackupPlanId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_framework, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UpdateFramework"
        operation.name = "UpdateFramework"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFrameworkInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFrameworkOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/audit/frameworks/{FrameworkName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_global_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UpdateGlobalSettings"
        operation.name = "UpdateGlobalSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGlobalSettingsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/global-settings", "code" => 200}}
      end)
      service.add_operation(:update_recovery_point_index_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UpdateRecoveryPointIndexSettings"
        operation.name = "UpdateRecoveryPointIndexSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRecoveryPointIndexSettingsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRecoveryPointIndexSettingsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/index", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_recovery_point_lifecycle, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UpdateRecoveryPointLifecycle"
        operation.name = "UpdateRecoveryPointLifecycle"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRecoveryPointLifecycleInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRecoveryPointLifecycleOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_region_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UpdateRegionSettings"
        operation.name = "UpdateRegionSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRegionSettingsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/account-settings", "code" => 200}}
      end)
      service.add_operation(:update_report_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UpdateReportPlan"
        operation.name = "UpdateReportPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReportPlanInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReportPlanOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/audit/report-plans/{ReportPlanName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_restore_testing_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UpdateRestoreTestingPlan"
        operation.name = "UpdateRestoreTestingPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRestoreTestingPlanInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRestoreTestingPlanOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restore-testing/plans/{RestoreTestingPlanName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_restore_testing_selection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UpdateRestoreTestingSelection"
        operation.name = "UpdateRestoreTestingSelection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRestoreTestingSelectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRestoreTestingSelectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}", "code" => 200}, "smithy.api#idempotent" => {}}
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
