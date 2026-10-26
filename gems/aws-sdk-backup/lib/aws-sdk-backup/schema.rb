# frozen_string_literal: true

# This is generated code!

module Aws::Backup
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#ARN", name: "ARN")
    AccessPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#AccessPointArn", name: "AccessPointArn", traits: {"smithy.api#pattern" => "^(arn:aws[a-z-]*:backup:[a-z-\\d]+:\\d{12}:accesspoint/)[\\da-z]{1}[\\da-z-]{1,48}[\\da-z]{1}(?<!-s3alias)(?<!-ext-s3alias)$"})
    AccessPointMetadataMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.backup#AccessPointMetadataMap", name: "AccessPointMetadataMap", traits: {"smithy.api#sensitive" => {}})
    AccessPointMetadataMapKeyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#AccessPointMetadataMapKeyString", name: "AccessPointMetadataMapKeyString", traits: {"smithy.api#length" => {"min" => 1}})
    AccessPointMetadataMapValueString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#AccessPointMetadataMapValueString", name: "AccessPointMetadataMapValueString", traits: {"smithy.api#length" => {"min" => 1}})
    AccessPointName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#AccessPointName", name: "AccessPointName", traits: {"smithy.api#length" => {"min" => 3, "max" => 50}, "smithy.api#pattern" => "^[\\da-z]{1}[\\da-z-]{1,48}[\\da-z]{1}(?<!-s3alias)(?<!-ext-s3alias)$"})
    AccessPointPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#AccessPointPolicy", name: "AccessPointPolicy", traits: {"smithy.api#length" => {"min" => 1, "max" => 200000}})
    AccessPointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#AccessPointStatus", name: "AccessPointStatus")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#AccountId", name: "AccountId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    AdvancedBackupSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#AdvancedBackupSetting", name: "AdvancedBackupSetting")
    AdvancedBackupSettings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#AdvancedBackupSettings", name: "AdvancedBackupSettings")
    AggregatedScanResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#AggregatedScanResult", name: "AggregatedScanResult")
    AggregationPeriod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#AggregationPeriod", name: "AggregationPeriod")
    AlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#AlreadyExistsException", name: "AlreadyExistsException", traits: {"smithy.api#error" => "client"})
    AssociateBackupVaultMpaApprovalTeamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#AssociateBackupVaultMpaApprovalTeamInput", name: "AssociateBackupVaultMpaApprovalTeamInput")
    BackupAccessPoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#BackupAccessPoints", name: "BackupAccessPoints")
    BackupJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#BackupJob", name: "BackupJob")
    BackupJobChildJobsInState = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.backup#BackupJobChildJobsInState", name: "BackupJobChildJobsInState")
    BackupJobState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#BackupJobState", name: "BackupJobState")
    BackupJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#BackupJobStatus", name: "BackupJobStatus")
    BackupJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#BackupJobSummary", name: "BackupJobSummary")
    BackupJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#BackupJobSummaryList", name: "BackupJobSummaryList")
    BackupJobsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#BackupJobsList", name: "BackupJobsList")
    BackupOptionKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#BackupOptionKey", name: "BackupOptionKey", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_\\.]{1,50}$"})
    BackupOptionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#BackupOptionValue", name: "BackupOptionValue", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_\\.]{1,50}$"})
    BackupOptions = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.backup#BackupOptions", name: "BackupOptions")
    BackupPlan = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#BackupPlan", name: "BackupPlan")
    BackupPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#BackupPlanInput", name: "BackupPlanInput")
    BackupPlanName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#BackupPlanName", name: "BackupPlanName")
    BackupPlanTemplatesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#BackupPlanTemplatesList", name: "BackupPlanTemplatesList")
    BackupPlanTemplatesListMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#BackupPlanTemplatesListMember", name: "BackupPlanTemplatesListMember")
    BackupPlanVersionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#BackupPlanVersionsList", name: "BackupPlanVersionsList")
    BackupPlansList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#BackupPlansList", name: "BackupPlansList")
    BackupPlansListMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#BackupPlansListMember", name: "BackupPlansListMember")
    BackupRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#BackupRule", name: "BackupRule")
    BackupRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#BackupRuleInput", name: "BackupRuleInput")
    BackupRuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#BackupRuleName", name: "BackupRuleName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_\\.]{1,50}$"})
    BackupRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#BackupRules", name: "BackupRules")
    BackupRulesInput = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#BackupRulesInput", name: "BackupRulesInput")
    BackupSelection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#BackupSelection", name: "BackupSelection")
    BackupSelectionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#BackupSelectionName", name: "BackupSelectionName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_\\.]{1,50}$"})
    BackupSelectionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#BackupSelectionsList", name: "BackupSelectionsList")
    BackupSelectionsListMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#BackupSelectionsListMember", name: "BackupSelectionsListMember")
    BackupVaultArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#BackupVaultArn", name: "BackupVaultArn")
    BackupVaultEvent = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#BackupVaultEvent", name: "BackupVaultEvent")
    BackupVaultEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#BackupVaultEvents", name: "BackupVaultEvents")
    BackupVaultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#BackupVaultList", name: "BackupVaultList")
    BackupVaultListMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#BackupVaultListMember", name: "BackupVaultListMember")
    BackupVaultName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#BackupVaultName", name: "BackupVaultName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]{2,50}$"})
    BackupVaultNameOrWildcard = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#BackupVaultNameOrWildcard", name: "BackupVaultNameOrWildcard", traits: {"smithy.api#pattern" => "^(\\*|[a-zA-Z0-9\\-\\_]{2,50})$"})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.backup#Boolean", name: "Boolean")
    Boolean2 = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.backup#Boolean2", name: "Boolean2", traits: {"smithy.api#default" => false})
    CalculatedLifecycle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CalculatedLifecycle", name: "CalculatedLifecycle")
    CancelLegalHoldInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CancelLegalHoldInput", name: "CancelLegalHoldInput")
    CancelLegalHoldOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CancelLegalHoldOutput", name: "CancelLegalHoldOutput")
    ComplianceResourceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#ComplianceResourceIdList", name: "ComplianceResourceIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Condition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#Condition", name: "Condition")
    ConditionKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#ConditionKey", name: "ConditionKey")
    ConditionParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ConditionParameter", name: "ConditionParameter")
    ConditionParameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#ConditionParameters", name: "ConditionParameters")
    ConditionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#ConditionType", name: "ConditionType")
    ConditionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#ConditionValue", name: "ConditionValue")
    Conditions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#Conditions", name: "Conditions")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ConflictException", name: "ConflictException", traits: {"aws.protocols#awsQueryError" => {"code" => "ConflictException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ControlInputParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ControlInputParameter", name: "ControlInputParameter")
    ControlInputParameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#ControlInputParameters", name: "ControlInputParameters")
    ControlName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#ControlName", name: "ControlName")
    ControlScope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ControlScope", name: "ControlScope")
    CopyAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CopyAction", name: "CopyAction")
    CopyActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#CopyActions", name: "CopyActions")
    CopyJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CopyJob", name: "CopyJob")
    CopyJobChildJobsInState = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.backup#CopyJobChildJobsInState", name: "CopyJobChildJobsInState")
    CopyJobState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#CopyJobState", name: "CopyJobState")
    CopyJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#CopyJobStatus", name: "CopyJobStatus")
    CopyJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CopyJobSummary", name: "CopyJobSummary")
    CopyJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#CopyJobSummaryList", name: "CopyJobSummaryList")
    CopyJobsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#CopyJobsList", name: "CopyJobsList")
    CreateBackupAccessPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateBackupAccessPointRequest", name: "CreateBackupAccessPointRequest")
    CreateBackupAccessPointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateBackupAccessPointResponse", name: "CreateBackupAccessPointResponse")
    CreateBackupPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateBackupPlanInput", name: "CreateBackupPlanInput")
    CreateBackupPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateBackupPlanOutput", name: "CreateBackupPlanOutput")
    CreateBackupSelectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateBackupSelectionInput", name: "CreateBackupSelectionInput")
    CreateBackupSelectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateBackupSelectionOutput", name: "CreateBackupSelectionOutput")
    CreateBackupVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateBackupVaultInput", name: "CreateBackupVaultInput")
    CreateBackupVaultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateBackupVaultOutput", name: "CreateBackupVaultOutput")
    CreateFrameworkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateFrameworkInput", name: "CreateFrameworkInput")
    CreateFrameworkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateFrameworkOutput", name: "CreateFrameworkOutput")
    CreateLegalHoldInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateLegalHoldInput", name: "CreateLegalHoldInput")
    CreateLegalHoldOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateLegalHoldOutput", name: "CreateLegalHoldOutput")
    CreateLogicallyAirGappedBackupVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateLogicallyAirGappedBackupVaultInput", name: "CreateLogicallyAirGappedBackupVaultInput")
    CreateLogicallyAirGappedBackupVaultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateLogicallyAirGappedBackupVaultOutput", name: "CreateLogicallyAirGappedBackupVaultOutput")
    CreateReportPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateReportPlanInput", name: "CreateReportPlanInput")
    CreateReportPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateReportPlanOutput", name: "CreateReportPlanOutput")
    CreateRestoreAccessBackupVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateRestoreAccessBackupVaultInput", name: "CreateRestoreAccessBackupVaultInput")
    CreateRestoreAccessBackupVaultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateRestoreAccessBackupVaultOutput", name: "CreateRestoreAccessBackupVaultOutput")
    CreateRestoreTestingPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateRestoreTestingPlanInput", name: "CreateRestoreTestingPlanInput")
    CreateRestoreTestingPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateRestoreTestingPlanOutput", name: "CreateRestoreTestingPlanOutput")
    CreateRestoreTestingSelectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateRestoreTestingSelectionInput", name: "CreateRestoreTestingSelectionInput")
    CreateRestoreTestingSelectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateRestoreTestingSelectionOutput", name: "CreateRestoreTestingSelectionOutput")
    CreateTieringConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateTieringConfigurationInput", name: "CreateTieringConfigurationInput")
    CreateTieringConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#CreateTieringConfigurationOutput", name: "CreateTieringConfigurationOutput")
    CreatorRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#CreatorRequestId", name: "CreatorRequestId")
    CronExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#CronExpression", name: "CronExpression")
    DateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DateRange", name: "DateRange")
    DeleteBackupAccessPointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DeleteBackupAccessPointInput", name: "DeleteBackupAccessPointInput")
    DeleteBackupPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DeleteBackupPlanInput", name: "DeleteBackupPlanInput")
    DeleteBackupPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DeleteBackupPlanOutput", name: "DeleteBackupPlanOutput")
    DeleteBackupSelectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DeleteBackupSelectionInput", name: "DeleteBackupSelectionInput")
    DeleteBackupVaultAccessPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DeleteBackupVaultAccessPolicyInput", name: "DeleteBackupVaultAccessPolicyInput")
    DeleteBackupVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DeleteBackupVaultInput", name: "DeleteBackupVaultInput")
    DeleteBackupVaultLockConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DeleteBackupVaultLockConfigurationInput", name: "DeleteBackupVaultLockConfigurationInput")
    DeleteBackupVaultNotificationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DeleteBackupVaultNotificationsInput", name: "DeleteBackupVaultNotificationsInput")
    DeleteFrameworkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DeleteFrameworkInput", name: "DeleteFrameworkInput")
    DeleteRecoveryPointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DeleteRecoveryPointInput", name: "DeleteRecoveryPointInput")
    DeleteReportPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DeleteReportPlanInput", name: "DeleteReportPlanInput")
    DeleteRestoreTestingPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DeleteRestoreTestingPlanInput", name: "DeleteRestoreTestingPlanInput")
    DeleteRestoreTestingSelectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DeleteRestoreTestingSelectionInput", name: "DeleteRestoreTestingSelectionInput")
    DeleteTieringConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DeleteTieringConfigurationInput", name: "DeleteTieringConfigurationInput")
    DeleteTieringConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DeleteTieringConfigurationOutput", name: "DeleteTieringConfigurationOutput")
    DependencyFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DependencyFailureException", name: "DependencyFailureException", traits: {"smithy.api#error" => "server"})
    DescribeBackupAccessPointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeBackupAccessPointInput", name: "DescribeBackupAccessPointInput")
    DescribeBackupAccessPointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeBackupAccessPointResponse", name: "DescribeBackupAccessPointResponse")
    DescribeBackupJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeBackupJobInput", name: "DescribeBackupJobInput")
    DescribeBackupJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeBackupJobOutput", name: "DescribeBackupJobOutput")
    DescribeBackupVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeBackupVaultInput", name: "DescribeBackupVaultInput")
    DescribeBackupVaultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeBackupVaultOutput", name: "DescribeBackupVaultOutput")
    DescribeCopyJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeCopyJobInput", name: "DescribeCopyJobInput")
    DescribeCopyJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeCopyJobOutput", name: "DescribeCopyJobOutput")
    DescribeFrameworkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeFrameworkInput", name: "DescribeFrameworkInput")
    DescribeFrameworkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeFrameworkOutput", name: "DescribeFrameworkOutput")
    DescribeGlobalSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeGlobalSettingsInput", name: "DescribeGlobalSettingsInput")
    DescribeGlobalSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeGlobalSettingsOutput", name: "DescribeGlobalSettingsOutput")
    DescribeProtectedResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeProtectedResourceInput", name: "DescribeProtectedResourceInput")
    DescribeProtectedResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeProtectedResourceOutput", name: "DescribeProtectedResourceOutput")
    DescribeRecoveryPointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeRecoveryPointInput", name: "DescribeRecoveryPointInput")
    DescribeRecoveryPointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeRecoveryPointOutput", name: "DescribeRecoveryPointOutput")
    DescribeRegionSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeRegionSettingsInput", name: "DescribeRegionSettingsInput")
    DescribeRegionSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeRegionSettingsOutput", name: "DescribeRegionSettingsOutput")
    DescribeReportJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeReportJobInput", name: "DescribeReportJobInput")
    DescribeReportJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeReportJobOutput", name: "DescribeReportJobOutput")
    DescribeReportPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeReportPlanInput", name: "DescribeReportPlanInput")
    DescribeReportPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeReportPlanOutput", name: "DescribeReportPlanOutput")
    DescribeRestoreJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeRestoreJobInput", name: "DescribeRestoreJobInput")
    DescribeRestoreJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeRestoreJobOutput", name: "DescribeRestoreJobOutput")
    DescribeScanJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeScanJobInput", name: "DescribeScanJobInput")
    DescribeScanJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DescribeScanJobOutput", name: "DescribeScanJobOutput")
    DisassociateBackupVaultMpaApprovalTeamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DisassociateBackupVaultMpaApprovalTeamInput", name: "DisassociateBackupVaultMpaApprovalTeamInput")
    DisassociateRecoveryPointFromParentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DisassociateRecoveryPointFromParentInput", name: "DisassociateRecoveryPointFromParentInput")
    DisassociateRecoveryPointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#DisassociateRecoveryPointInput", name: "DisassociateRecoveryPointInput")
    EncryptionKeyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#EncryptionKeyType", name: "EncryptionKeyType")
    ExportBackupPlanTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ExportBackupPlanTemplateInput", name: "ExportBackupPlanTemplateInput")
    ExportBackupPlanTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ExportBackupPlanTemplateOutput", name: "ExportBackupPlanTemplateOutput")
    FormatList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#FormatList", name: "FormatList")
    Framework = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#Framework", name: "Framework")
    FrameworkControl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#FrameworkControl", name: "FrameworkControl")
    FrameworkControls = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#FrameworkControls", name: "FrameworkControls")
    FrameworkDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#FrameworkDescription", name: "FrameworkDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    FrameworkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#FrameworkList", name: "FrameworkList")
    FrameworkName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#FrameworkName", name: "FrameworkName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z][_a-zA-Z0-9]*$"})
    GetBackupPlanFromJSONInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetBackupPlanFromJSONInput", name: "GetBackupPlanFromJSONInput")
    GetBackupPlanFromJSONOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetBackupPlanFromJSONOutput", name: "GetBackupPlanFromJSONOutput")
    GetBackupPlanFromTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetBackupPlanFromTemplateInput", name: "GetBackupPlanFromTemplateInput")
    GetBackupPlanFromTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetBackupPlanFromTemplateOutput", name: "GetBackupPlanFromTemplateOutput")
    GetBackupPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetBackupPlanInput", name: "GetBackupPlanInput")
    GetBackupPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetBackupPlanOutput", name: "GetBackupPlanOutput")
    GetBackupSelectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetBackupSelectionInput", name: "GetBackupSelectionInput")
    GetBackupSelectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetBackupSelectionOutput", name: "GetBackupSelectionOutput")
    GetBackupVaultAccessPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetBackupVaultAccessPolicyInput", name: "GetBackupVaultAccessPolicyInput")
    GetBackupVaultAccessPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetBackupVaultAccessPolicyOutput", name: "GetBackupVaultAccessPolicyOutput")
    GetBackupVaultNotificationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetBackupVaultNotificationsInput", name: "GetBackupVaultNotificationsInput")
    GetBackupVaultNotificationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetBackupVaultNotificationsOutput", name: "GetBackupVaultNotificationsOutput")
    GetLegalHoldInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetLegalHoldInput", name: "GetLegalHoldInput")
    GetLegalHoldOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetLegalHoldOutput", name: "GetLegalHoldOutput")
    GetPITRMalwareScanResultsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetPITRMalwareScanResultsInput", name: "GetPITRMalwareScanResultsInput")
    GetPITRMalwareScanResultsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetPITRMalwareScanResultsOutput", name: "GetPITRMalwareScanResultsOutput")
    GetRecoveryPointIndexDetailsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetRecoveryPointIndexDetailsInput", name: "GetRecoveryPointIndexDetailsInput")
    GetRecoveryPointIndexDetailsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetRecoveryPointIndexDetailsOutput", name: "GetRecoveryPointIndexDetailsOutput")
    GetRecoveryPointRestoreMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetRecoveryPointRestoreMetadataInput", name: "GetRecoveryPointRestoreMetadataInput")
    GetRecoveryPointRestoreMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetRecoveryPointRestoreMetadataOutput", name: "GetRecoveryPointRestoreMetadataOutput")
    GetRestoreJobMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetRestoreJobMetadataInput", name: "GetRestoreJobMetadataInput")
    GetRestoreJobMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetRestoreJobMetadataOutput", name: "GetRestoreJobMetadataOutput")
    GetRestoreTestingInferredMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetRestoreTestingInferredMetadataInput", name: "GetRestoreTestingInferredMetadataInput")
    GetRestoreTestingInferredMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetRestoreTestingInferredMetadataOutput", name: "GetRestoreTestingInferredMetadataOutput")
    GetRestoreTestingPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetRestoreTestingPlanInput", name: "GetRestoreTestingPlanInput")
    GetRestoreTestingPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetRestoreTestingPlanOutput", name: "GetRestoreTestingPlanOutput")
    GetRestoreTestingSelectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetRestoreTestingSelectionInput", name: "GetRestoreTestingSelectionInput")
    GetRestoreTestingSelectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetRestoreTestingSelectionOutput", name: "GetRestoreTestingSelectionOutput")
    GetSupportedResourceTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetSupportedResourceTypesOutput", name: "GetSupportedResourceTypesOutput")
    GetTieringConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetTieringConfigurationInput", name: "GetTieringConfigurationInput")
    GetTieringConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#GetTieringConfigurationOutput", name: "GetTieringConfigurationOutput")
    GlobalSettings = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.backup#GlobalSettings", name: "GlobalSettings")
    GlobalSettingsName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#GlobalSettingsName", name: "GlobalSettingsName")
    GlobalSettingsValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#GlobalSettingsValue", name: "GlobalSettingsValue")
    IAMPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#IAMPolicy", name: "IAMPolicy")
    IAMRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#IAMRoleArn", name: "IAMRoleArn")
    Index = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#Index", name: "Index")
    IndexAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#IndexAction", name: "IndexAction")
    IndexActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#IndexActions", name: "IndexActions")
    IndexStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#IndexStatus", name: "IndexStatus")
    IndexedRecoveryPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#IndexedRecoveryPoint", name: "IndexedRecoveryPoint")
    IndexedRecoveryPointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#IndexedRecoveryPointList", name: "IndexedRecoveryPointList")
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#InvalidParameterValueException", name: "InvalidParameterValueException", traits: {"smithy.api#error" => "client"})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client"})
    InvalidResourceStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#InvalidResourceStateException", name: "InvalidResourceStateException", traits: {"smithy.api#error" => "client"})
    IsEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.backup#IsEnabled", name: "IsEnabled", traits: {"smithy.api#default" => false})
    KeyValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#KeyValue", name: "KeyValue")
    KeyValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#KeyValueList", name: "KeyValueList")
    LatestMpaApprovalTeamUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#LatestMpaApprovalTeamUpdate", name: "LatestMpaApprovalTeamUpdate")
    LatestRevokeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#LatestRevokeRequest", name: "LatestRevokeRequest")
    LegalHold = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#LegalHold", name: "LegalHold")
    LegalHoldStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#LegalHoldStatus", name: "LegalHoldStatus")
    LegalHoldsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#LegalHoldsList", name: "LegalHoldsList")
    Lifecycle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#Lifecycle", name: "Lifecycle")
    LifecycleDeleteAfterEvent = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#LifecycleDeleteAfterEvent", name: "LifecycleDeleteAfterEvent")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListAccessPointsMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListAccessPointsMember", name: "ListAccessPointsMember")
    ListBackupAccessPointsByRecoveryPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListBackupAccessPointsByRecoveryPointRequest", name: "ListBackupAccessPointsByRecoveryPointRequest")
    ListBackupAccessPointsByRecoveryPointRequestMaxResultsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.backup#ListBackupAccessPointsByRecoveryPointRequestMaxResultsInteger", name: "ListBackupAccessPointsByRecoveryPointRequestMaxResultsInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListBackupAccessPointsByRecoveryPointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListBackupAccessPointsByRecoveryPointResponse", name: "ListBackupAccessPointsByRecoveryPointResponse")
    ListBackupAccessPointsByResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListBackupAccessPointsByResourceRequest", name: "ListBackupAccessPointsByResourceRequest")
    ListBackupAccessPointsByResourceRequestMaxResultsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.backup#ListBackupAccessPointsByResourceRequestMaxResultsInteger", name: "ListBackupAccessPointsByResourceRequestMaxResultsInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListBackupAccessPointsByResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListBackupAccessPointsByResourceResponse", name: "ListBackupAccessPointsByResourceResponse")
    ListBackupAccessPointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListBackupAccessPointsRequest", name: "ListBackupAccessPointsRequest")
    ListBackupAccessPointsRequestMaxResultsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.backup#ListBackupAccessPointsRequestMaxResultsInteger", name: "ListBackupAccessPointsRequestMaxResultsInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListBackupAccessPointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListBackupAccessPointsResponse", name: "ListBackupAccessPointsResponse")
    ListBackupJobSummariesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListBackupJobSummariesInput", name: "ListBackupJobSummariesInput")
    ListBackupJobSummariesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListBackupJobSummariesOutput", name: "ListBackupJobSummariesOutput")
    ListBackupJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListBackupJobsInput", name: "ListBackupJobsInput")
    ListBackupJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListBackupJobsOutput", name: "ListBackupJobsOutput")
    ListBackupPlanTemplatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListBackupPlanTemplatesInput", name: "ListBackupPlanTemplatesInput")
    ListBackupPlanTemplatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListBackupPlanTemplatesOutput", name: "ListBackupPlanTemplatesOutput")
    ListBackupPlanVersionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListBackupPlanVersionsInput", name: "ListBackupPlanVersionsInput")
    ListBackupPlanVersionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListBackupPlanVersionsOutput", name: "ListBackupPlanVersionsOutput")
    ListBackupPlansInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListBackupPlansInput", name: "ListBackupPlansInput")
    ListBackupPlansOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListBackupPlansOutput", name: "ListBackupPlansOutput")
    ListBackupSelectionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListBackupSelectionsInput", name: "ListBackupSelectionsInput")
    ListBackupSelectionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListBackupSelectionsOutput", name: "ListBackupSelectionsOutput")
    ListBackupVaultsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListBackupVaultsInput", name: "ListBackupVaultsInput")
    ListBackupVaultsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListBackupVaultsOutput", name: "ListBackupVaultsOutput")
    ListCopyJobSummariesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListCopyJobSummariesInput", name: "ListCopyJobSummariesInput")
    ListCopyJobSummariesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListCopyJobSummariesOutput", name: "ListCopyJobSummariesOutput")
    ListCopyJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListCopyJobsInput", name: "ListCopyJobsInput")
    ListCopyJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListCopyJobsOutput", name: "ListCopyJobsOutput")
    ListFrameworksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListFrameworksInput", name: "ListFrameworksInput")
    ListFrameworksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListFrameworksOutput", name: "ListFrameworksOutput")
    ListIndexedRecoveryPointsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListIndexedRecoveryPointsInput", name: "ListIndexedRecoveryPointsInput")
    ListIndexedRecoveryPointsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListIndexedRecoveryPointsOutput", name: "ListIndexedRecoveryPointsOutput")
    ListLegalHoldsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListLegalHoldsInput", name: "ListLegalHoldsInput")
    ListLegalHoldsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListLegalHoldsOutput", name: "ListLegalHoldsOutput")
    ListOfTags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#ListOfTags", name: "ListOfTags")
    ListProtectedResourcesByBackupVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListProtectedResourcesByBackupVaultInput", name: "ListProtectedResourcesByBackupVaultInput")
    ListProtectedResourcesByBackupVaultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListProtectedResourcesByBackupVaultOutput", name: "ListProtectedResourcesByBackupVaultOutput")
    ListProtectedResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListProtectedResourcesInput", name: "ListProtectedResourcesInput")
    ListProtectedResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListProtectedResourcesOutput", name: "ListProtectedResourcesOutput")
    ListRecoveryPointsByBackupVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListRecoveryPointsByBackupVaultInput", name: "ListRecoveryPointsByBackupVaultInput")
    ListRecoveryPointsByBackupVaultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListRecoveryPointsByBackupVaultOutput", name: "ListRecoveryPointsByBackupVaultOutput")
    ListRecoveryPointsByLegalHoldInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListRecoveryPointsByLegalHoldInput", name: "ListRecoveryPointsByLegalHoldInput")
    ListRecoveryPointsByLegalHoldOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListRecoveryPointsByLegalHoldOutput", name: "ListRecoveryPointsByLegalHoldOutput")
    ListRecoveryPointsByResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListRecoveryPointsByResourceInput", name: "ListRecoveryPointsByResourceInput")
    ListRecoveryPointsByResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListRecoveryPointsByResourceOutput", name: "ListRecoveryPointsByResourceOutput")
    ListReportJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListReportJobsInput", name: "ListReportJobsInput")
    ListReportJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListReportJobsOutput", name: "ListReportJobsOutput")
    ListReportPlansInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListReportPlansInput", name: "ListReportPlansInput")
    ListReportPlansOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListReportPlansOutput", name: "ListReportPlansOutput")
    ListRestoreAccessBackupVaultsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListRestoreAccessBackupVaultsInput", name: "ListRestoreAccessBackupVaultsInput")
    ListRestoreAccessBackupVaultsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListRestoreAccessBackupVaultsOutput", name: "ListRestoreAccessBackupVaultsOutput")
    ListRestoreJobSummariesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListRestoreJobSummariesInput", name: "ListRestoreJobSummariesInput")
    ListRestoreJobSummariesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListRestoreJobSummariesOutput", name: "ListRestoreJobSummariesOutput")
    ListRestoreJobsByProtectedResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListRestoreJobsByProtectedResourceInput", name: "ListRestoreJobsByProtectedResourceInput")
    ListRestoreJobsByProtectedResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListRestoreJobsByProtectedResourceOutput", name: "ListRestoreJobsByProtectedResourceOutput")
    ListRestoreJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListRestoreJobsInput", name: "ListRestoreJobsInput")
    ListRestoreJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListRestoreJobsOutput", name: "ListRestoreJobsOutput")
    ListRestoreTestingPlansInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListRestoreTestingPlansInput", name: "ListRestoreTestingPlansInput")
    ListRestoreTestingPlansInputMaxResultsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.backup#ListRestoreTestingPlansInputMaxResultsInteger", name: "ListRestoreTestingPlansInputMaxResultsInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListRestoreTestingPlansOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListRestoreTestingPlansOutput", name: "ListRestoreTestingPlansOutput")
    ListRestoreTestingSelectionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListRestoreTestingSelectionsInput", name: "ListRestoreTestingSelectionsInput")
    ListRestoreTestingSelectionsInputMaxResultsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.backup#ListRestoreTestingSelectionsInputMaxResultsInteger", name: "ListRestoreTestingSelectionsInputMaxResultsInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListRestoreTestingSelectionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListRestoreTestingSelectionsOutput", name: "ListRestoreTestingSelectionsOutput")
    ListScanJobSummariesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListScanJobSummariesInput", name: "ListScanJobSummariesInput")
    ListScanJobSummariesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListScanJobSummariesOutput", name: "ListScanJobSummariesOutput")
    ListScanJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListScanJobsInput", name: "ListScanJobsInput")
    ListScanJobsInputMaxResultsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.backup#ListScanJobsInputMaxResultsInteger", name: "ListScanJobsInputMaxResultsInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListScanJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListScanJobsOutput", name: "ListScanJobsOutput")
    ListTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListTagsInput", name: "ListTagsInput")
    ListTagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListTagsOutput", name: "ListTagsOutput")
    ListTieringConfigurationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListTieringConfigurationsInput", name: "ListTieringConfigurationsInput")
    ListTieringConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ListTieringConfigurationsOutput", name: "ListTieringConfigurationsOutput")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.backup#Long", name: "Long")
    Long2 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.backup#Long2", name: "Long2", traits: {"smithy.api#default" => 0})
    MalwareScanner = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#MalwareScanner", name: "MalwareScanner")
    MaxFrameworkInputs = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.backup#MaxFrameworkInputs", name: "MaxFrameworkInputs", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.backup#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxScheduledRunsPreview = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.backup#MaxScheduledRunsPreview", name: "MaxScheduledRunsPreview", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 10}})
    MessageCategory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#MessageCategory", name: "MessageCategory")
    Metadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.backup#Metadata", name: "Metadata", traits: {"smithy.api#sensitive" => {}})
    MetadataKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#MetadataKey", name: "MetadataKey")
    MetadataValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#MetadataValue", name: "MetadataValue")
    MissingParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#MissingParameterValueException", name: "MissingParameterValueException", traits: {"smithy.api#error" => "client"})
    MpaRevokeSessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#MpaRevokeSessionStatus", name: "MpaRevokeSessionStatus")
    MpaSessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#MpaSessionStatus", name: "MpaSessionStatus")
    ParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#ParameterName", name: "ParameterName")
    ParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#ParameterValue", name: "ParameterValue")
    ProtectedResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ProtectedResource", name: "ProtectedResource")
    ProtectedResourceConditions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ProtectedResourceConditions", name: "ProtectedResourceConditions")
    ProtectedResourcesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#ProtectedResourcesList", name: "ProtectedResourcesList")
    PutBackupVaultAccessPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#PutBackupVaultAccessPolicyInput", name: "PutBackupVaultAccessPolicyInput")
    PutBackupVaultLockConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#PutBackupVaultLockConfigurationInput", name: "PutBackupVaultLockConfigurationInput")
    PutBackupVaultNotificationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#PutBackupVaultNotificationsInput", name: "PutBackupVaultNotificationsInput")
    PutRestoreValidationResultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#PutRestoreValidationResultInput", name: "PutRestoreValidationResultInput")
    RecoveryPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#RecoveryPointArn", name: "RecoveryPointArn", traits: {"smithy.api#pattern" => "^(arn:aws[a-z-]*:[a-z-\\d]+:[a-z-\\d]+:).+$"})
    RecoveryPointByBackupVault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#RecoveryPointByBackupVault", name: "RecoveryPointByBackupVault")
    RecoveryPointByBackupVaultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#RecoveryPointByBackupVaultList", name: "RecoveryPointByBackupVaultList")
    RecoveryPointByResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#RecoveryPointByResource", name: "RecoveryPointByResource")
    RecoveryPointByResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#RecoveryPointByResourceList", name: "RecoveryPointByResourceList")
    RecoveryPointCreator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#RecoveryPointCreator", name: "RecoveryPointCreator")
    RecoveryPointMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#RecoveryPointMember", name: "RecoveryPointMember")
    RecoveryPointSelection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#RecoveryPointSelection", name: "RecoveryPointSelection")
    RecoveryPointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#RecoveryPointStatus", name: "RecoveryPointStatus")
    RecoveryPointsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#RecoveryPointsList", name: "RecoveryPointsList")
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#Region", name: "Region")
    ReportDeliveryChannel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ReportDeliveryChannel", name: "ReportDeliveryChannel")
    ReportDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ReportDestination", name: "ReportDestination")
    ReportJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ReportJob", name: "ReportJob")
    ReportJobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#ReportJobId", name: "ReportJobId")
    ReportJobList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#ReportJobList", name: "ReportJobList")
    ReportPlan = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ReportPlan", name: "ReportPlan")
    ReportPlanDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#ReportPlanDescription", name: "ReportPlanDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    ReportPlanList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#ReportPlanList", name: "ReportPlanList")
    ReportPlanName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#ReportPlanName", name: "ReportPlanName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z][_a-zA-Z0-9]*$"})
    ReportSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ReportSetting", name: "ReportSetting")
    RequesterComment = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#RequesterComment", name: "RequesterComment", traits: {"smithy.api#sensitive" => {}})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#ResourceArn", name: "ResourceArn", traits: {"smithy.api#pattern" => "^(arn:aws[a-z-]*:[a-z-\\d]+:).+$"})
    ResourceArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#ResourceArns", name: "ResourceArns")
    ResourceIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#ResourceIdentifiers", name: "ResourceIdentifiers")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    ResourceSelection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ResourceSelection", name: "ResourceSelection")
    ResourceSelections = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#ResourceSelections", name: "ResourceSelections")
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#ResourceType", name: "ResourceType", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_\\.]{1,50}$"})
    ResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#ResourceTypeList", name: "ResourceTypeList")
    ResourceTypeManagementPreference = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.backup#ResourceTypeManagementPreference", name: "ResourceTypeManagementPreference")
    ResourceTypeOptInPreference = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.backup#ResourceTypeOptInPreference", name: "ResourceTypeOptInPreference")
    ResourceTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#ResourceTypes", name: "ResourceTypes")
    RestoreAccessBackupVaultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#RestoreAccessBackupVaultList", name: "RestoreAccessBackupVaultList")
    RestoreAccessBackupVaultListMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#RestoreAccessBackupVaultListMember", name: "RestoreAccessBackupVaultListMember")
    RestoreDeletionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#RestoreDeletionStatus", name: "RestoreDeletionStatus")
    RestoreJobCreator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#RestoreJobCreator", name: "RestoreJobCreator")
    RestoreJobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#RestoreJobId", name: "RestoreJobId")
    RestoreJobState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#RestoreJobState", name: "RestoreJobState")
    RestoreJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#RestoreJobStatus", name: "RestoreJobStatus")
    RestoreJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#RestoreJobSummary", name: "RestoreJobSummary")
    RestoreJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#RestoreJobSummaryList", name: "RestoreJobSummaryList")
    RestoreJobsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#RestoreJobsList", name: "RestoreJobsList")
    RestoreJobsListMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#RestoreJobsListMember", name: "RestoreJobsListMember")
    RestoreTestingPlanForCreate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#RestoreTestingPlanForCreate", name: "RestoreTestingPlanForCreate")
    RestoreTestingPlanForGet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#RestoreTestingPlanForGet", name: "RestoreTestingPlanForGet")
    RestoreTestingPlanForList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#RestoreTestingPlanForList", name: "RestoreTestingPlanForList")
    RestoreTestingPlanForUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#RestoreTestingPlanForUpdate", name: "RestoreTestingPlanForUpdate")
    RestoreTestingPlans = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#RestoreTestingPlans", name: "RestoreTestingPlans")
    RestoreTestingRecoveryPointSelection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#RestoreTestingRecoveryPointSelection", name: "RestoreTestingRecoveryPointSelection")
    RestoreTestingRecoveryPointSelectionAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#RestoreTestingRecoveryPointSelectionAlgorithm", name: "RestoreTestingRecoveryPointSelectionAlgorithm")
    RestoreTestingRecoveryPointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#RestoreTestingRecoveryPointType", name: "RestoreTestingRecoveryPointType")
    RestoreTestingRecoveryPointTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#RestoreTestingRecoveryPointTypeList", name: "RestoreTestingRecoveryPointTypeList")
    RestoreTestingSelectionForCreate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#RestoreTestingSelectionForCreate", name: "RestoreTestingSelectionForCreate")
    RestoreTestingSelectionForGet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#RestoreTestingSelectionForGet", name: "RestoreTestingSelectionForGet")
    RestoreTestingSelectionForList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#RestoreTestingSelectionForList", name: "RestoreTestingSelectionForList")
    RestoreTestingSelectionForUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#RestoreTestingSelectionForUpdate", name: "RestoreTestingSelectionForUpdate")
    RestoreTestingSelections = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#RestoreTestingSelections", name: "RestoreTestingSelections")
    RestoreValidationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#RestoreValidationStatus", name: "RestoreValidationStatus")
    RevokeRestoreAccessBackupVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#RevokeRestoreAccessBackupVaultInput", name: "RevokeRestoreAccessBackupVaultInput")
    RuleExecutionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#RuleExecutionType", name: "RuleExecutionType")
    ScanAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ScanAction", name: "ScanAction")
    ScanActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#ScanActions", name: "ScanActions")
    ScanFinding = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#ScanFinding", name: "ScanFinding")
    ScanFindings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#ScanFindings", name: "ScanFindings")
    ScanJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ScanJob", name: "ScanJob")
    ScanJobCreator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ScanJobCreator", name: "ScanJobCreator")
    ScanJobState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#ScanJobState", name: "ScanJobState")
    ScanJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#ScanJobStatus", name: "ScanJobStatus")
    ScanJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ScanJobSummary", name: "ScanJobSummary")
    ScanJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#ScanJobSummaryList", name: "ScanJobSummaryList")
    ScanJobs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#ScanJobs", name: "ScanJobs")
    ScanMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#ScanMode", name: "ScanMode")
    ScanResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#ScanResourceType", name: "ScanResourceType")
    ScanResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ScanResult", name: "ScanResult")
    ScanResultInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ScanResultInfo", name: "ScanResultInfo")
    ScanResultStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#ScanResultStatus", name: "ScanResultStatus")
    ScanResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#ScanResults", name: "ScanResults", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    ScanSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ScanSetting", name: "ScanSetting")
    ScanSettings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#ScanSettings", name: "ScanSettings")
    ScanState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#ScanState", name: "ScanState")
    ScheduledPlanExecutionMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ScheduledPlanExecutionMember", name: "ScheduledPlanExecutionMember")
    ScheduledRunsPreview = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#ScheduledRunsPreview", name: "ScheduledRunsPreview")
    SensitiveStringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.backup#SensitiveStringMap", name: "SensitiveStringMap", traits: {"smithy.api#sensitive" => {}})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server"})
    StartBackupJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#StartBackupJobInput", name: "StartBackupJobInput")
    StartBackupJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#StartBackupJobOutput", name: "StartBackupJobOutput")
    StartCopyJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#StartCopyJobInput", name: "StartCopyJobInput")
    StartCopyJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#StartCopyJobOutput", name: "StartCopyJobOutput")
    StartReportJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#StartReportJobInput", name: "StartReportJobInput")
    StartReportJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#StartReportJobOutput", name: "StartReportJobOutput")
    StartRestoreJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#StartRestoreJobInput", name: "StartRestoreJobInput")
    StartRestoreJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#StartRestoreJobOutput", name: "StartRestoreJobOutput")
    StartScanJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#StartScanJobInput", name: "StartScanJobInput")
    StartScanJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#StartScanJobOutput", name: "StartScanJobOutput")
    StopBackupJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#StopBackupJobInput", name: "StopBackupJobInput")
    StorageClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#StorageClass", name: "StorageClass")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#TagKey", name: "TagKey")
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#TagKeyList", name: "TagKeyList", traits: {"smithy.api#sensitive" => {}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.backup#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#sensitive" => {}})
    TagMapKeyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#TagMapKeyString", name: "TagMapKeyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagMapValueString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#TagMapValueString", name: "TagMapValueString", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#TagResourceInput", name: "TagResourceInput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#TagValue", name: "TagValue")
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.backup#Tags", name: "Tags", traits: {"smithy.api#sensitive" => {}})
    TieringConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#TieringConfiguration", name: "TieringConfiguration")
    TieringConfigurationInputForCreate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#TieringConfigurationInputForCreate", name: "TieringConfigurationInputForCreate")
    TieringConfigurationInputForUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#TieringConfigurationInputForUpdate", name: "TieringConfigurationInputForUpdate")
    TieringConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#TieringConfigurationName", name: "TieringConfigurationName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_]{1,200}$"})
    TieringConfigurationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#TieringConfigurationsList", name: "TieringConfigurationsList")
    TieringConfigurationsListMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#TieringConfigurationsListMember", name: "TieringConfigurationsListMember")
    TieringDownSettingsInDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.backup#TieringDownSettingsInDays", name: "TieringDownSettingsInDays", traits: {"smithy.api#range" => {"min" => 60, "max" => 36500}})
    Timezone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#Timezone", name: "Timezone")
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#UntagResourceInput", name: "UntagResourceInput")
    UpdateBackupPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#UpdateBackupPlanInput", name: "UpdateBackupPlanInput")
    UpdateBackupPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#UpdateBackupPlanOutput", name: "UpdateBackupPlanOutput")
    UpdateFrameworkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#UpdateFrameworkInput", name: "UpdateFrameworkInput")
    UpdateFrameworkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#UpdateFrameworkOutput", name: "UpdateFrameworkOutput")
    UpdateGlobalSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#UpdateGlobalSettingsInput", name: "UpdateGlobalSettingsInput")
    UpdateRecoveryPointIndexSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#UpdateRecoveryPointIndexSettingsInput", name: "UpdateRecoveryPointIndexSettingsInput")
    UpdateRecoveryPointIndexSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#UpdateRecoveryPointIndexSettingsOutput", name: "UpdateRecoveryPointIndexSettingsOutput")
    UpdateRecoveryPointLifecycleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#UpdateRecoveryPointLifecycleInput", name: "UpdateRecoveryPointLifecycleInput")
    UpdateRecoveryPointLifecycleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#UpdateRecoveryPointLifecycleOutput", name: "UpdateRecoveryPointLifecycleOutput")
    UpdateRegionSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#UpdateRegionSettingsInput", name: "UpdateRegionSettingsInput")
    UpdateReportPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#UpdateReportPlanInput", name: "UpdateReportPlanInput")
    UpdateReportPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#UpdateReportPlanOutput", name: "UpdateReportPlanOutput")
    UpdateRestoreTestingPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#UpdateRestoreTestingPlanInput", name: "UpdateRestoreTestingPlanInput")
    UpdateRestoreTestingPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#UpdateRestoreTestingPlanOutput", name: "UpdateRestoreTestingPlanOutput")
    UpdateRestoreTestingSelectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#UpdateRestoreTestingSelectionInput", name: "UpdateRestoreTestingSelectionInput")
    UpdateRestoreTestingSelectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#UpdateRestoreTestingSelectionOutput", name: "UpdateRestoreTestingSelectionOutput")
    UpdateTieringConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#UpdateTieringConfigurationInput", name: "UpdateTieringConfigurationInput")
    UpdateTieringConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backup#UpdateTieringConfigurationOutput", name: "UpdateTieringConfigurationOutput")
    VaultNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#VaultNames", name: "VaultNames")
    VaultState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#VaultState", name: "VaultState")
    VaultType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backup#VaultType", name: "VaultType")
    WindowMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.backup#WindowMinutes", name: "WindowMinutes")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.backup#integer", name: "Integer", traits: {"smithy.api#default" => 0})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backup#string", name: "String")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backup#stringList", name: "StringList")
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.backup#stringMap", name: "StringMap")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.backup#timestamp", name: "Timestamp")

    AccessPointMetadataMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointMetadataMapKeyString, name: "key"))
    AccessPointMetadataMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointMetadataMapValueString, name: "value"))
    AccessPointStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    AccessPointStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    AccessPointStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    AccessPointStatus.add_member(:disassociated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISASSOCIATED", traits: {"smithy.api#enumValue" => "DISASSOCIATED"}))
    AccessPointStatus.add_member(:disassociating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISASSOCIATING", traits: {"smithy.api#enumValue" => "DISASSOCIATING"}))
    AccessPointStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    AccessPointStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AdvancedBackupSetting.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    AdvancedBackupSetting.add_member(:backup_options, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupOptions, name: "BackupOptions"))
    AdvancedBackupSetting.type = Types::AdvancedBackupSetting
    AdvancedBackupSettings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedBackupSetting, name: "member"))
    AggregatedScanResult.add_member(:failed_scan, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "FailedScan"))
    AggregatedScanResult.add_member(:findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanFindings, name: "Findings"))
    AggregatedScanResult.add_member(:last_computed, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastComputed"))
    AggregatedScanResult.type = Types::AggregatedScanResult
    AggregationPeriod.add_member(:one_day, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE_DAY", traits: {"smithy.api#enumValue" => "ONE_DAY"}))
    AggregationPeriod.add_member(:seven_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEVEN_DAYS", traits: {"smithy.api#enumValue" => "SEVEN_DAYS"}))
    AggregationPeriod.add_member(:fourteen_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOURTEEN_DAYS", traits: {"smithy.api#enumValue" => "FOURTEEN_DAYS"}))
    AlreadyExistsException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    AlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AlreadyExistsException.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatorRequestId"))
    AlreadyExistsException.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    AlreadyExistsException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    AlreadyExistsException.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Context"))
    AlreadyExistsException.type = Types::AlreadyExistsException
    AssociateBackupVaultMpaApprovalTeamInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateBackupVaultMpaApprovalTeamInput.add_member(:mpa_approval_team_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "MpaApprovalTeamArn", traits: {"smithy.api#required" => {}}))
    AssociateBackupVaultMpaApprovalTeamInput.add_member(:requester_comment, ::Smithy::Schema::Shapes::MemberShape.new(target: RequesterComment, name: "RequesterComment"))
    AssociateBackupVaultMpaApprovalTeamInput.type = Types::AssociateBackupVaultMpaApprovalTeamInput
    BackupAccessPoints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAccessPointsMember, name: "member"))
    BackupJob.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    BackupJob.add_member(:backup_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupJobId"))
    BackupJob.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName"))
    BackupJob.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupVaultArn"))
    BackupJob.add_member(:vault_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VaultType"))
    BackupJob.add_member(:vault_lock_state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VaultLockState"))
    BackupJob.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn"))
    BackupJob.add_member(:recovery_point_lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: Lifecycle, name: "RecoveryPointLifecycle"))
    BackupJob.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "EncryptionKeyArn"))
    BackupJob.add_member(:is_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "IsEncrypted", traits: {"smithy.api#default" => false}))
    BackupJob.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ResourceArn"))
    BackupJob.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    BackupJob.add_member(:completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CompletionDate"))
    BackupJob.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupJobState, name: "State"))
    BackupJob.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusMessage"))
    BackupJob.add_member(:percent_done, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PercentDone"))
    BackupJob.add_member(:backup_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "BackupSizeInBytes"))
    BackupJob.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "IamRoleArn"))
    BackupJob.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointCreator, name: "CreatedBy"))
    BackupJob.add_member(:expected_completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExpectedCompletionDate"))
    BackupJob.add_member(:start_by, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartBy"))
    BackupJob.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    BackupJob.add_member(:bytes_transferred, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "BytesTransferred"))
    BackupJob.add_member(:backup_options, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupOptions, name: "BackupOptions"))
    BackupJob.add_member(:backup_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupType"))
    BackupJob.add_member(:parent_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParentJobId"))
    BackupJob.add_member(:is_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "IsParent", traits: {"smithy.api#default" => false}))
    BackupJob.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName"))
    BackupJob.add_member(:initiation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "InitiationDate"))
    BackupJob.add_member(:message_category, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MessageCategory"))
    BackupJob.type = Types::BackupJob
    BackupJobChildJobsInState.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupJobState, name: "key"))
    BackupJobChildJobsInState.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "value"))
    BackupJobState.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    BackupJobState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    BackupJobState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    BackupJobState.add_member(:aborting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABORTING", traits: {"smithy.api#enumValue" => "ABORTING"}))
    BackupJobState.add_member(:aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABORTED", traits: {"smithy.api#enumValue" => "ABORTED"}))
    BackupJobState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    BackupJobState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    BackupJobState.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    BackupJobState.add_member(:partial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIAL", traits: {"smithy.api#enumValue" => "PARTIAL"}))
    BackupJobStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    BackupJobStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    BackupJobStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    BackupJobStatus.add_member(:aborting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABORTING", traits: {"smithy.api#enumValue" => "ABORTING"}))
    BackupJobStatus.add_member(:aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABORTED", traits: {"smithy.api#enumValue" => "ABORTED"}))
    BackupJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    BackupJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    BackupJobStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    BackupJobStatus.add_member(:partial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIAL", traits: {"smithy.api#enumValue" => "PARTIAL"}))
    BackupJobStatus.add_member(:aggregate_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGGREGATE_ALL", traits: {"smithy.api#enumValue" => "AGGREGATE_ALL"}))
    BackupJobStatus.add_member(:any, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANY", traits: {"smithy.api#enumValue" => "ANY"}))
    BackupJobSummary.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "Region"))
    BackupJobSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    BackupJobSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupJobStatus, name: "State"))
    BackupJobSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    BackupJobSummary.add_member(:message_category, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageCategory, name: "MessageCategory"))
    BackupJobSummary.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Count", traits: {"smithy.api#default" => 0}))
    BackupJobSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime"))
    BackupJobSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    BackupJobSummary.type = Types::BackupJobSummary
    BackupJobSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupJobSummary, name: "member"))
    BackupJobsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupJob, name: "member"))
    BackupOptions.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupOptionKey, name: "key"))
    BackupOptions.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupOptionValue, name: "value"))
    BackupPlan.add_member(:backup_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupPlanName, name: "BackupPlanName", traits: {"smithy.api#required" => {}}))
    BackupPlan.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupRules, name: "Rules", traits: {"smithy.api#required" => {}}))
    BackupPlan.add_member(:advanced_backup_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedBackupSettings, name: "AdvancedBackupSettings"))
    BackupPlan.add_member(:scan_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanSettings, name: "ScanSettings"))
    BackupPlan.type = Types::BackupPlan
    BackupPlanInput.add_member(:backup_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupPlanName, name: "BackupPlanName", traits: {"smithy.api#required" => {}}))
    BackupPlanInput.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupRulesInput, name: "Rules", traits: {"smithy.api#required" => {}}))
    BackupPlanInput.add_member(:advanced_backup_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedBackupSettings, name: "AdvancedBackupSettings"))
    BackupPlanInput.add_member(:scan_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanSettings, name: "ScanSettings"))
    BackupPlanInput.type = Types::BackupPlanInput
    BackupPlanTemplatesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupPlanTemplatesListMember, name: "member"))
    BackupPlanTemplatesListMember.add_member(:backup_plan_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanTemplateId"))
    BackupPlanTemplatesListMember.add_member(:backup_plan_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanTemplateName"))
    BackupPlanTemplatesListMember.type = Types::BackupPlanTemplatesListMember
    BackupPlanVersionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupPlansListMember, name: "member"))
    BackupPlansList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupPlansListMember, name: "member"))
    BackupPlansListMember.add_member(:backup_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupPlanArn"))
    BackupPlansListMember.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanId"))
    BackupPlansListMember.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    BackupPlansListMember.add_member(:deletion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "DeletionDate"))
    BackupPlansListMember.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VersionId"))
    BackupPlansListMember.add_member(:backup_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupPlanName, name: "BackupPlanName"))
    BackupPlansListMember.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatorRequestId"))
    BackupPlansListMember.add_member(:last_execution_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastExecutionDate"))
    BackupPlansListMember.add_member(:advanced_backup_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedBackupSettings, name: "AdvancedBackupSettings"))
    BackupPlansListMember.type = Types::BackupPlansListMember
    BackupRule.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupRuleName, name: "RuleName", traits: {"smithy.api#required" => {}}))
    BackupRule.add_member(:target_backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "TargetBackupVaultName", traits: {"smithy.api#required" => {}}))
    BackupRule.add_member(:target_logically_air_gapped_backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "TargetLogicallyAirGappedBackupVaultArn"))
    BackupRule.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: CronExpression, name: "ScheduleExpression"))
    BackupRule.add_member(:start_window_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: WindowMinutes, name: "StartWindowMinutes"))
    BackupRule.add_member(:completion_window_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: WindowMinutes, name: "CompletionWindowMinutes"))
    BackupRule.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: Lifecycle, name: "Lifecycle"))
    BackupRule.add_member(:recovery_point_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "RecoveryPointTags"))
    BackupRule.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RuleId"))
    BackupRule.add_member(:copy_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyActions, name: "CopyActions"))
    BackupRule.add_member(:enable_continuous_backup, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableContinuousBackup"))
    BackupRule.add_member(:schedule_expression_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: Timezone, name: "ScheduleExpressionTimezone"))
    BackupRule.add_member(:index_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexActions, name: "IndexActions"))
    BackupRule.add_member(:scan_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanActions, name: "ScanActions"))
    BackupRule.type = Types::BackupRule
    BackupRuleInput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupRuleName, name: "RuleName", traits: {"smithy.api#required" => {}}))
    BackupRuleInput.add_member(:target_backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "TargetBackupVaultName", traits: {"smithy.api#required" => {}}))
    BackupRuleInput.add_member(:target_logically_air_gapped_backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "TargetLogicallyAirGappedBackupVaultArn"))
    BackupRuleInput.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: CronExpression, name: "ScheduleExpression"))
    BackupRuleInput.add_member(:start_window_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: WindowMinutes, name: "StartWindowMinutes"))
    BackupRuleInput.add_member(:completion_window_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: WindowMinutes, name: "CompletionWindowMinutes"))
    BackupRuleInput.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: Lifecycle, name: "Lifecycle"))
    BackupRuleInput.add_member(:recovery_point_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "RecoveryPointTags"))
    BackupRuleInput.add_member(:copy_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyActions, name: "CopyActions"))
    BackupRuleInput.add_member(:enable_continuous_backup, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableContinuousBackup"))
    BackupRuleInput.add_member(:schedule_expression_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: Timezone, name: "ScheduleExpressionTimezone"))
    BackupRuleInput.add_member(:index_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexActions, name: "IndexActions"))
    BackupRuleInput.add_member(:scan_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanActions, name: "ScanActions"))
    BackupRuleInput.type = Types::BackupRuleInput
    BackupRules.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupRule, name: "member"))
    BackupRulesInput.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupRuleInput, name: "member"))
    BackupSelection.add_member(:selection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupSelectionName, name: "SelectionName", traits: {"smithy.api#required" => {}}))
    BackupSelection.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "IamRoleArn", traits: {"smithy.api#required" => {}}))
    BackupSelection.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArns, name: "Resources"))
    BackupSelection.add_member(:list_of_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfTags, name: "ListOfTags"))
    BackupSelection.add_member(:not_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArns, name: "NotResources"))
    BackupSelection.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: Conditions, name: "Conditions"))
    BackupSelection.type = Types::BackupSelection
    BackupSelectionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupSelectionsListMember, name: "member"))
    BackupSelectionsListMember.add_member(:selection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SelectionId"))
    BackupSelectionsListMember.add_member(:selection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupSelectionName, name: "SelectionName"))
    BackupSelectionsListMember.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanId"))
    BackupSelectionsListMember.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    BackupSelectionsListMember.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatorRequestId"))
    BackupSelectionsListMember.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "IamRoleArn"))
    BackupSelectionsListMember.type = Types::BackupSelectionsListMember
    BackupVaultEvent.add_member(:backup_job_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP_JOB_STARTED", traits: {"smithy.api#enumValue" => "BACKUP_JOB_STARTED"}))
    BackupVaultEvent.add_member(:backup_job_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP_JOB_COMPLETED", traits: {"smithy.api#enumValue" => "BACKUP_JOB_COMPLETED"}))
    BackupVaultEvent.add_member(:backup_job_successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP_JOB_SUCCESSFUL", traits: {"smithy.api#enumValue" => "BACKUP_JOB_SUCCESSFUL"}))
    BackupVaultEvent.add_member(:backup_job_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP_JOB_FAILED", traits: {"smithy.api#enumValue" => "BACKUP_JOB_FAILED"}))
    BackupVaultEvent.add_member(:backup_job_expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP_JOB_EXPIRED", traits: {"smithy.api#enumValue" => "BACKUP_JOB_EXPIRED"}))
    BackupVaultEvent.add_member(:restore_job_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORE_JOB_STARTED", traits: {"smithy.api#enumValue" => "RESTORE_JOB_STARTED"}))
    BackupVaultEvent.add_member(:restore_job_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORE_JOB_COMPLETED", traits: {"smithy.api#enumValue" => "RESTORE_JOB_COMPLETED"}))
    BackupVaultEvent.add_member(:restore_job_successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORE_JOB_SUCCESSFUL", traits: {"smithy.api#enumValue" => "RESTORE_JOB_SUCCESSFUL"}))
    BackupVaultEvent.add_member(:restore_job_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORE_JOB_FAILED", traits: {"smithy.api#enumValue" => "RESTORE_JOB_FAILED"}))
    BackupVaultEvent.add_member(:copy_job_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COPY_JOB_STARTED", traits: {"smithy.api#enumValue" => "COPY_JOB_STARTED"}))
    BackupVaultEvent.add_member(:copy_job_successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COPY_JOB_SUCCESSFUL", traits: {"smithy.api#enumValue" => "COPY_JOB_SUCCESSFUL"}))
    BackupVaultEvent.add_member(:copy_job_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COPY_JOB_FAILED", traits: {"smithy.api#enumValue" => "COPY_JOB_FAILED"}))
    BackupVaultEvent.add_member(:recovery_point_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOVERY_POINT_MODIFIED", traits: {"smithy.api#enumValue" => "RECOVERY_POINT_MODIFIED"}))
    BackupVaultEvent.add_member(:backup_plan_created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP_PLAN_CREATED", traits: {"smithy.api#enumValue" => "BACKUP_PLAN_CREATED"}))
    BackupVaultEvent.add_member(:backup_plan_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP_PLAN_MODIFIED", traits: {"smithy.api#enumValue" => "BACKUP_PLAN_MODIFIED"}))
    BackupVaultEvent.add_member(:s3_backup_object_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_BACKUP_OBJECT_FAILED", traits: {"smithy.api#enumValue" => "S3_BACKUP_OBJECT_FAILED"}))
    BackupVaultEvent.add_member(:s3_restore_object_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_RESTORE_OBJECT_FAILED", traits: {"smithy.api#enumValue" => "S3_RESTORE_OBJECT_FAILED"}))
    BackupVaultEvent.add_member(:continuous_backup_interrupted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUOUS_BACKUP_INTERRUPTED", traits: {"smithy.api#enumValue" => "CONTINUOUS_BACKUP_INTERRUPTED"}))
    BackupVaultEvent.add_member(:recovery_point_index_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOVERY_POINT_INDEX_COMPLETED", traits: {"smithy.api#enumValue" => "RECOVERY_POINT_INDEX_COMPLETED"}))
    BackupVaultEvent.add_member(:recovery_point_index_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOVERY_POINT_INDEX_DELETED", traits: {"smithy.api#enumValue" => "RECOVERY_POINT_INDEX_DELETED"}))
    BackupVaultEvent.add_member(:recovery_point_indexing_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOVERY_POINT_INDEXING_FAILED", traits: {"smithy.api#enumValue" => "RECOVERY_POINT_INDEXING_FAILED"}))
    BackupVaultEvent.add_member(:eks_restore_object_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_RESTORE_OBJECT_FAILED", traits: {"smithy.api#enumValue" => "EKS_RESTORE_OBJECT_FAILED"}))
    BackupVaultEvent.add_member(:eks_restore_object_skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_RESTORE_OBJECT_SKIPPED", traits: {"smithy.api#enumValue" => "EKS_RESTORE_OBJECT_SKIPPED"}))
    BackupVaultEvent.add_member(:eks_backup_object_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_BACKUP_OBJECT_FAILED", traits: {"smithy.api#enumValue" => "EKS_BACKUP_OBJECT_FAILED"}))
    BackupVaultEvent.add_member(:access_point_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_POINT_AVAILABLE", traits: {"smithy.api#enumValue" => "ACCESS_POINT_AVAILABLE"}))
    BackupVaultEvent.add_member(:access_point_creation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_POINT_CREATION_FAILED", traits: {"smithy.api#enumValue" => "ACCESS_POINT_CREATION_FAILED"}))
    BackupVaultEvent.add_member(:access_point_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_POINT_DELETED", traits: {"smithy.api#enumValue" => "ACCESS_POINT_DELETED"}))
    BackupVaultEvent.add_member(:access_point_deletion_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_POINT_DELETION_FAILED", traits: {"smithy.api#enumValue" => "ACCESS_POINT_DELETION_FAILED"}))
    BackupVaultEvent.add_member(:access_point_expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_POINT_EXPIRED", traits: {"smithy.api#enumValue" => "ACCESS_POINT_EXPIRED"}))
    BackupVaultEvent.add_member(:access_point_disassociated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_POINT_DISASSOCIATED", traits: {"smithy.api#enumValue" => "ACCESS_POINT_DISASSOCIATED"}))
    BackupVaultEvents.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultEvent, name: "member"))
    BackupVaultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultListMember, name: "member"))
    BackupVaultListMember.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName"))
    BackupVaultListMember.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupVaultArn"))
    BackupVaultListMember.add_member(:vault_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VaultType, name: "VaultType"))
    BackupVaultListMember.add_member(:vault_state, ::Smithy::Schema::Shapes::MemberShape.new(target: VaultState, name: "VaultState"))
    BackupVaultListMember.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    BackupVaultListMember.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "EncryptionKeyArn"))
    BackupVaultListMember.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatorRequestId"))
    BackupVaultListMember.add_member(:number_of_recovery_points, ::Smithy::Schema::Shapes::MemberShape.new(target: Long2, name: "NumberOfRecoveryPoints", traits: {"smithy.api#default" => 0}))
    BackupVaultListMember.add_member(:locked, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Locked"))
    BackupVaultListMember.add_member(:min_retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "MinRetentionDays"))
    BackupVaultListMember.add_member(:max_retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "MaxRetentionDays"))
    BackupVaultListMember.add_member(:lock_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LockDate"))
    BackupVaultListMember.add_member(:encryption_key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyType, name: "EncryptionKeyType"))
    BackupVaultListMember.type = Types::BackupVaultListMember
    CalculatedLifecycle.add_member(:move_to_cold_storage_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "MoveToColdStorageAt"))
    CalculatedLifecycle.add_member(:delete_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "DeleteAt"))
    CalculatedLifecycle.type = Types::CalculatedLifecycle
    CancelLegalHoldInput.add_member(:legal_hold_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LegalHoldId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelLegalHoldInput.add_member(:cancel_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CancelDescription", traits: {"smithy.api#httpQuery" => "cancelDescription", "smithy.api#required" => {}}))
    CancelLegalHoldInput.add_member(:retain_record_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "RetainRecordInDays", traits: {"smithy.api#httpQuery" => "retainRecordInDays"}))
    CancelLegalHoldInput.type = Types::CancelLegalHoldInput
    CancelLegalHoldOutput.type = Types::CancelLegalHoldOutput
    ComplianceResourceIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Condition.add_member(:condition_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionType, name: "ConditionType", traits: {"smithy.api#required" => {}}))
    Condition.add_member(:condition_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionKey, name: "ConditionKey", traits: {"smithy.api#required" => {}}))
    Condition.add_member(:condition_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionValue, name: "ConditionValue", traits: {"smithy.api#required" => {}}))
    Condition.type = Types::Condition
    ConditionParameter.add_member(:condition_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionKey, name: "ConditionKey"))
    ConditionParameter.add_member(:condition_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionValue, name: "ConditionValue"))
    ConditionParameter.type = Types::ConditionParameter
    ConditionParameters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionParameter, name: "member"))
    ConditionType.add_member(:stringequals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRINGEQUALS", traits: {"smithy.api#enumValue" => "STRINGEQUALS"}))
    Conditions.add_member(:string_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionParameters, name: "StringEquals"))
    Conditions.add_member(:string_not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionParameters, name: "StringNotEquals"))
    Conditions.add_member(:string_like, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionParameters, name: "StringLike"))
    Conditions.add_member(:string_not_like, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionParameters, name: "StringNotLike"))
    Conditions.type = Types::Conditions
    ConflictException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ConflictException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    ConflictException.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Context"))
    ConflictException.type = Types::ConflictException
    ControlInputParameter.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName, name: "ParameterName"))
    ControlInputParameter.add_member(:parameter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "ParameterValue"))
    ControlInputParameter.type = Types::ControlInputParameter
    ControlInputParameters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlInputParameter, name: "member"))
    ControlScope.add_member(:compliance_resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceResourceIdList, name: "ComplianceResourceIds"))
    ControlScope.add_member(:compliance_resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeList, name: "ComplianceResourceTypes"))
    ControlScope.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "Tags"))
    ControlScope.type = Types::ControlScope
    CopyAction.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: Lifecycle, name: "Lifecycle"))
    CopyAction.add_member(:destination_backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "DestinationBackupVaultArn", traits: {"smithy.api#required" => {}}))
    CopyAction.type = Types::CopyAction
    CopyActions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyAction, name: "member"))
    CopyJob.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    CopyJob.add_member(:copy_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CopyJobId"))
    CopyJob.add_member(:source_backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "SourceBackupVaultArn"))
    CopyJob.add_member(:source_recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "SourceRecoveryPointArn"))
    CopyJob.add_member(:destination_backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "DestinationBackupVaultArn"))
    CopyJob.add_member(:destination_vault_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DestinationVaultType"))
    CopyJob.add_member(:destination_vault_lock_state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DestinationVaultLockState"))
    CopyJob.add_member(:destination_recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "DestinationRecoveryPointArn"))
    CopyJob.add_member(:destination_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "DestinationEncryptionKeyArn"))
    CopyJob.add_member(:destination_recovery_point_lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: Lifecycle, name: "DestinationRecoveryPointLifecycle"))
    CopyJob.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ResourceArn"))
    CopyJob.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    CopyJob.add_member(:completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CompletionDate"))
    CopyJob.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyJobState, name: "State"))
    CopyJob.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusMessage"))
    CopyJob.add_member(:backup_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "BackupSizeInBytes"))
    CopyJob.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "IamRoleArn"))
    CopyJob.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointCreator, name: "CreatedBy"))
    CopyJob.add_member(:created_by_backup_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedByBackupJobId"))
    CopyJob.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    CopyJob.add_member(:parent_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParentJobId"))
    CopyJob.add_member(:is_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "IsParent", traits: {"smithy.api#default" => false}))
    CopyJob.add_member(:composite_member_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CompositeMemberIdentifier"))
    CopyJob.add_member(:number_of_child_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "NumberOfChildJobs"))
    CopyJob.add_member(:child_jobs_in_state, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyJobChildJobsInState, name: "ChildJobsInState"))
    CopyJob.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName"))
    CopyJob.add_member(:message_category, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MessageCategory"))
    CopyJob.type = Types::CopyJob
    CopyJobChildJobsInState.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyJobState, name: "key"))
    CopyJobChildJobsInState.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "value"))
    CopyJobState.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    CopyJobState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    CopyJobState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CopyJobState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CopyJobState.add_member(:partial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIAL", traits: {"smithy.api#enumValue" => "PARTIAL"}))
    CopyJobStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    CopyJobStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    CopyJobStatus.add_member(:aborting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABORTING", traits: {"smithy.api#enumValue" => "ABORTING"}))
    CopyJobStatus.add_member(:aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABORTED", traits: {"smithy.api#enumValue" => "ABORTED"}))
    CopyJobStatus.add_member(:completing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETING", traits: {"smithy.api#enumValue" => "COMPLETING"}))
    CopyJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CopyJobStatus.add_member(:failing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILING", traits: {"smithy.api#enumValue" => "FAILING"}))
    CopyJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CopyJobStatus.add_member(:partial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIAL", traits: {"smithy.api#enumValue" => "PARTIAL"}))
    CopyJobStatus.add_member(:aggregate_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGGREGATE_ALL", traits: {"smithy.api#enumValue" => "AGGREGATE_ALL"}))
    CopyJobStatus.add_member(:any, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANY", traits: {"smithy.api#enumValue" => "ANY"}))
    CopyJobSummary.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "Region"))
    CopyJobSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    CopyJobSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyJobStatus, name: "State"))
    CopyJobSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    CopyJobSummary.add_member(:message_category, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageCategory, name: "MessageCategory"))
    CopyJobSummary.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Count", traits: {"smithy.api#default" => 0}))
    CopyJobSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime"))
    CopyJobSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    CopyJobSummary.type = Types::CopyJobSummary
    CopyJobSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyJobSummary, name: "member"))
    CopyJobsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyJob, name: "member"))
    CreateBackupAccessPointRequest.add_member(:access_point_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointMetadataMap, name: "AccessPointMetadata"))
    CreateBackupAccessPointRequest.add_member(:access_point_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointPolicy, name: "AccessPointPolicy"))
    CreateBackupAccessPointRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateBackupAccessPointRequest.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointArn, name: "RecoveryPointArn", traits: {"smithy.api#required" => {}}))
    CreateBackupAccessPointRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateBackupAccessPointRequest.type = Types::CreateBackupAccessPointRequest
    CreateBackupAccessPointResponse.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointArn, name: "AccessPointArn", traits: {"smithy.api#required" => {}}))
    CreateBackupAccessPointResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    CreateBackupAccessPointResponse.type = Types::CreateBackupAccessPointResponse
    CreateBackupPlanInput.add_member(:backup_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupPlanInput, name: "BackupPlan", traits: {"smithy.api#required" => {}}))
    CreateBackupPlanInput.add_member(:backup_plan_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "BackupPlanTags"))
    CreateBackupPlanInput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateBackupPlanInput.type = Types::CreateBackupPlanInput
    CreateBackupPlanOutput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanId"))
    CreateBackupPlanOutput.add_member(:backup_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupPlanArn"))
    CreateBackupPlanOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    CreateBackupPlanOutput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VersionId"))
    CreateBackupPlanOutput.add_member(:advanced_backup_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedBackupSettings, name: "AdvancedBackupSettings"))
    CreateBackupPlanOutput.type = Types::CreateBackupPlanOutput
    CreateBackupSelectionInput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBackupSelectionInput.add_member(:backup_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupSelection, name: "BackupSelection", traits: {"smithy.api#required" => {}}))
    CreateBackupSelectionInput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateBackupSelectionInput.type = Types::CreateBackupSelectionInput
    CreateBackupSelectionOutput.add_member(:selection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SelectionId"))
    CreateBackupSelectionOutput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanId"))
    CreateBackupSelectionOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    CreateBackupSelectionOutput.type = Types::CreateBackupSelectionOutput
    CreateBackupVaultInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBackupVaultInput.add_member(:backup_vault_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "BackupVaultTags"))
    CreateBackupVaultInput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "EncryptionKeyArn"))
    CreateBackupVaultInput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateBackupVaultInput.type = Types::CreateBackupVaultInput
    CreateBackupVaultOutput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName"))
    CreateBackupVaultOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupVaultArn"))
    CreateBackupVaultOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    CreateBackupVaultOutput.type = Types::CreateBackupVaultOutput
    CreateFrameworkInput.add_member(:framework_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameworkName, name: "FrameworkName", traits: {"smithy.api#required" => {}}))
    CreateFrameworkInput.add_member(:framework_description, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameworkDescription, name: "FrameworkDescription"))
    CreateFrameworkInput.add_member(:framework_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameworkControls, name: "FrameworkControls", traits: {"smithy.api#required" => {}}))
    CreateFrameworkInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateFrameworkInput.add_member(:framework_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "FrameworkTags"))
    CreateFrameworkInput.type = Types::CreateFrameworkInput
    CreateFrameworkOutput.add_member(:framework_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameworkName, name: "FrameworkName"))
    CreateFrameworkOutput.add_member(:framework_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "FrameworkArn"))
    CreateFrameworkOutput.type = Types::CreateFrameworkOutput
    CreateLegalHoldInput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Title", traits: {"smithy.api#required" => {}}))
    CreateLegalHoldInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#required" => {}}))
    CreateLegalHoldInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateLegalHoldInput.add_member(:recovery_point_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointSelection, name: "RecoveryPointSelection"))
    CreateLegalHoldInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateLegalHoldInput.type = Types::CreateLegalHoldInput
    CreateLegalHoldOutput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Title"))
    CreateLegalHoldOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LegalHoldStatus, name: "Status"))
    CreateLegalHoldOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CreateLegalHoldOutput.add_member(:legal_hold_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LegalHoldId"))
    CreateLegalHoldOutput.add_member(:legal_hold_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "LegalHoldArn"))
    CreateLegalHoldOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    CreateLegalHoldOutput.add_member(:recovery_point_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointSelection, name: "RecoveryPointSelection"))
    CreateLegalHoldOutput.type = Types::CreateLegalHoldOutput
    CreateLogicallyAirGappedBackupVaultInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLogicallyAirGappedBackupVaultInput.add_member(:backup_vault_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "BackupVaultTags"))
    CreateLogicallyAirGappedBackupVaultInput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateLogicallyAirGappedBackupVaultInput.add_member(:min_retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "MinRetentionDays", traits: {"smithy.api#required" => {}}))
    CreateLogicallyAirGappedBackupVaultInput.add_member(:max_retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "MaxRetentionDays", traits: {"smithy.api#required" => {}}))
    CreateLogicallyAirGappedBackupVaultInput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "EncryptionKeyArn"))
    CreateLogicallyAirGappedBackupVaultInput.type = Types::CreateLogicallyAirGappedBackupVaultInput
    CreateLogicallyAirGappedBackupVaultOutput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName"))
    CreateLogicallyAirGappedBackupVaultOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupVaultArn"))
    CreateLogicallyAirGappedBackupVaultOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    CreateLogicallyAirGappedBackupVaultOutput.add_member(:vault_state, ::Smithy::Schema::Shapes::MemberShape.new(target: VaultState, name: "VaultState"))
    CreateLogicallyAirGappedBackupVaultOutput.type = Types::CreateLogicallyAirGappedBackupVaultOutput
    CreateReportPlanInput.add_member(:report_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportPlanName, name: "ReportPlanName", traits: {"smithy.api#required" => {}}))
    CreateReportPlanInput.add_member(:report_plan_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportPlanDescription, name: "ReportPlanDescription"))
    CreateReportPlanInput.add_member(:report_delivery_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDeliveryChannel, name: "ReportDeliveryChannel", traits: {"smithy.api#required" => {}}))
    CreateReportPlanInput.add_member(:report_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportSetting, name: "ReportSetting", traits: {"smithy.api#required" => {}}))
    CreateReportPlanInput.add_member(:report_plan_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "ReportPlanTags"))
    CreateReportPlanInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateReportPlanInput.type = Types::CreateReportPlanInput
    CreateReportPlanOutput.add_member(:report_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportPlanName, name: "ReportPlanName"))
    CreateReportPlanOutput.add_member(:report_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ReportPlanArn"))
    CreateReportPlanOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    CreateReportPlanOutput.type = Types::CreateReportPlanOutput
    CreateRestoreAccessBackupVaultInput.add_member(:source_backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "SourceBackupVaultArn", traits: {"smithy.api#required" => {}}))
    CreateRestoreAccessBackupVaultInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName"))
    CreateRestoreAccessBackupVaultInput.add_member(:backup_vault_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "BackupVaultTags"))
    CreateRestoreAccessBackupVaultInput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRestoreAccessBackupVaultInput.add_member(:requester_comment, ::Smithy::Schema::Shapes::MemberShape.new(target: RequesterComment, name: "RequesterComment"))
    CreateRestoreAccessBackupVaultInput.type = Types::CreateRestoreAccessBackupVaultInput
    CreateRestoreAccessBackupVaultOutput.add_member(:restore_access_backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RestoreAccessBackupVaultArn"))
    CreateRestoreAccessBackupVaultOutput.add_member(:vault_state, ::Smithy::Schema::Shapes::MemberShape.new(target: VaultState, name: "VaultState"))
    CreateRestoreAccessBackupVaultOutput.add_member(:restore_access_backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "RestoreAccessBackupVaultName"))
    CreateRestoreAccessBackupVaultOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    CreateRestoreAccessBackupVaultOutput.type = Types::CreateRestoreAccessBackupVaultOutput
    CreateRestoreTestingPlanInput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CreatorRequestId"))
    CreateRestoreTestingPlanInput.add_member(:restore_testing_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreTestingPlanForCreate, name: "RestoreTestingPlan", traits: {"smithy.api#required" => {}}))
    CreateRestoreTestingPlanInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringMap, name: "Tags"))
    CreateRestoreTestingPlanInput.type = Types::CreateRestoreTestingPlanInput
    CreateRestoreTestingPlanOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    CreateRestoreTestingPlanOutput.add_member(:restore_testing_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanArn", traits: {"smithy.api#required" => {}}))
    CreateRestoreTestingPlanOutput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanName", traits: {"smithy.api#required" => {}}))
    CreateRestoreTestingPlanOutput.type = Types::CreateRestoreTestingPlanOutput
    CreateRestoreTestingSelectionInput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CreatorRequestId"))
    CreateRestoreTestingSelectionInput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRestoreTestingSelectionInput.add_member(:restore_testing_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreTestingSelectionForCreate, name: "RestoreTestingSelection", traits: {"smithy.api#required" => {}}))
    CreateRestoreTestingSelectionInput.type = Types::CreateRestoreTestingSelectionInput
    CreateRestoreTestingSelectionOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    CreateRestoreTestingSelectionOutput.add_member(:restore_testing_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanArn", traits: {"smithy.api#required" => {}}))
    CreateRestoreTestingSelectionOutput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanName", traits: {"smithy.api#required" => {}}))
    CreateRestoreTestingSelectionOutput.add_member(:restore_testing_selection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingSelectionName", traits: {"smithy.api#required" => {}}))
    CreateRestoreTestingSelectionOutput.type = Types::CreateRestoreTestingSelectionOutput
    CreateTieringConfigurationInput.add_member(:tiering_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringConfigurationInputForCreate, name: "TieringConfiguration", traits: {"smithy.api#required" => {}}))
    CreateTieringConfigurationInput.add_member(:tiering_configuration_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "TieringConfigurationTags"))
    CreateTieringConfigurationInput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateTieringConfigurationInput.type = Types::CreateTieringConfigurationInput
    CreateTieringConfigurationOutput.add_member(:tiering_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "TieringConfigurationArn"))
    CreateTieringConfigurationOutput.add_member(:tiering_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TieringConfigurationName"))
    CreateTieringConfigurationOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    CreateTieringConfigurationOutput.type = Types::CreateTieringConfigurationOutput
    DateRange.add_member(:from_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "FromDate", traits: {"smithy.api#required" => {}}))
    DateRange.add_member(:to_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ToDate", traits: {"smithy.api#required" => {}}))
    DateRange.type = Types::DateRange
    DeleteBackupAccessPointInput.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointArn, name: "AccessPointArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackupAccessPointInput.type = Types::DeleteBackupAccessPointInput
    DeleteBackupPlanInput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackupPlanInput.type = Types::DeleteBackupPlanInput
    DeleteBackupPlanOutput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanId"))
    DeleteBackupPlanOutput.add_member(:backup_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupPlanArn"))
    DeleteBackupPlanOutput.add_member(:deletion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "DeletionDate"))
    DeleteBackupPlanOutput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VersionId"))
    DeleteBackupPlanOutput.type = Types::DeleteBackupPlanOutput
    DeleteBackupSelectionInput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackupSelectionInput.add_member(:selection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SelectionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackupSelectionInput.type = Types::DeleteBackupSelectionInput
    DeleteBackupVaultAccessPolicyInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackupVaultAccessPolicyInput.type = Types::DeleteBackupVaultAccessPolicyInput
    DeleteBackupVaultInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackupVaultInput.type = Types::DeleteBackupVaultInput
    DeleteBackupVaultLockConfigurationInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackupVaultLockConfigurationInput.type = Types::DeleteBackupVaultLockConfigurationInput
    DeleteBackupVaultNotificationsInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackupVaultNotificationsInput.type = Types::DeleteBackupVaultNotificationsInput
    DeleteFrameworkInput.add_member(:framework_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameworkName, name: "FrameworkName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFrameworkInput.type = Types::DeleteFrameworkInput
    DeleteRecoveryPointInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecoveryPointInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecoveryPointInput.type = Types::DeleteRecoveryPointInput
    DeleteReportPlanInput.add_member(:report_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportPlanName, name: "ReportPlanName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteReportPlanInput.type = Types::DeleteReportPlanInput
    DeleteRestoreTestingPlanInput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRestoreTestingPlanInput.type = Types::DeleteRestoreTestingPlanInput
    DeleteRestoreTestingSelectionInput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRestoreTestingSelectionInput.add_member(:restore_testing_selection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingSelectionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRestoreTestingSelectionInput.type = Types::DeleteRestoreTestingSelectionInput
    DeleteTieringConfigurationInput.add_member(:tiering_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringConfigurationName, name: "TieringConfigurationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTieringConfigurationInput.type = Types::DeleteTieringConfigurationInput
    DeleteTieringConfigurationOutput.type = Types::DeleteTieringConfigurationOutput
    DependencyFailureException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    DependencyFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    DependencyFailureException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    DependencyFailureException.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Context"))
    DependencyFailureException.type = Types::DependencyFailureException
    DescribeBackupAccessPointInput.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointArn, name: "AccessPointArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBackupAccessPointInput.type = Types::DescribeBackupAccessPointInput
    DescribeBackupAccessPointResponse.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointArn, name: "AccessPointArn", traits: {"smithy.api#required" => {}}))
    DescribeBackupAccessPointResponse.add_member(:access_point_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointMetadataMap, name: "AccessPointMetadata"))
    DescribeBackupAccessPointResponse.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultArn, name: "BackupVaultArn"))
    DescribeBackupAccessPointResponse.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#required" => {}}))
    DescribeBackupAccessPointResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    DescribeBackupAccessPointResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "Name", traits: {"smithy.api#required" => {}}))
    DescribeBackupAccessPointResponse.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointArn, name: "RecoveryPointArn", traits: {"smithy.api#required" => {}}))
    DescribeBackupAccessPointResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DescribeBackupAccessPointResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    DescribeBackupAccessPointResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    DescribeBackupAccessPointResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StatusMessage"))
    DescribeBackupAccessPointResponse.type = Types::DescribeBackupAccessPointResponse
    DescribeBackupJobInput.add_member(:backup_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupJobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBackupJobInput.type = Types::DescribeBackupJobInput
    DescribeBackupJobOutput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    DescribeBackupJobOutput.add_member(:backup_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupJobId"))
    DescribeBackupJobOutput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName"))
    DescribeBackupJobOutput.add_member(:recovery_point_lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: Lifecycle, name: "RecoveryPointLifecycle"))
    DescribeBackupJobOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupVaultArn"))
    DescribeBackupJobOutput.add_member(:vault_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VaultType"))
    DescribeBackupJobOutput.add_member(:vault_lock_state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VaultLockState"))
    DescribeBackupJobOutput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn"))
    DescribeBackupJobOutput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "EncryptionKeyArn"))
    DescribeBackupJobOutput.add_member(:is_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "IsEncrypted", traits: {"smithy.api#default" => false}))
    DescribeBackupJobOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ResourceArn"))
    DescribeBackupJobOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    DescribeBackupJobOutput.add_member(:completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CompletionDate"))
    DescribeBackupJobOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupJobState, name: "State"))
    DescribeBackupJobOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusMessage"))
    DescribeBackupJobOutput.add_member(:percent_done, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PercentDone"))
    DescribeBackupJobOutput.add_member(:backup_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "BackupSizeInBytes"))
    DescribeBackupJobOutput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "IamRoleArn"))
    DescribeBackupJobOutput.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointCreator, name: "CreatedBy"))
    DescribeBackupJobOutput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    DescribeBackupJobOutput.add_member(:bytes_transferred, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "BytesTransferred"))
    DescribeBackupJobOutput.add_member(:expected_completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExpectedCompletionDate"))
    DescribeBackupJobOutput.add_member(:start_by, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartBy"))
    DescribeBackupJobOutput.add_member(:backup_options, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupOptions, name: "BackupOptions"))
    DescribeBackupJobOutput.add_member(:backup_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupType"))
    DescribeBackupJobOutput.add_member(:parent_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParentJobId"))
    DescribeBackupJobOutput.add_member(:is_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "IsParent", traits: {"smithy.api#default" => false}))
    DescribeBackupJobOutput.add_member(:number_of_child_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "NumberOfChildJobs"))
    DescribeBackupJobOutput.add_member(:child_jobs_in_state, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupJobChildJobsInState, name: "ChildJobsInState"))
    DescribeBackupJobOutput.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName"))
    DescribeBackupJobOutput.add_member(:initiation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "InitiationDate"))
    DescribeBackupJobOutput.add_member(:message_category, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MessageCategory"))
    DescribeBackupJobOutput.type = Types::DescribeBackupJobOutput
    DescribeBackupVaultInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBackupVaultInput.add_member(:backup_vault_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupVaultAccountId", traits: {"smithy.api#httpQuery" => "backupVaultAccountId"}))
    DescribeBackupVaultInput.type = Types::DescribeBackupVaultInput
    DescribeBackupVaultOutput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupVaultName"))
    DescribeBackupVaultOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupVaultArn"))
    DescribeBackupVaultOutput.add_member(:vault_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VaultType, name: "VaultType"))
    DescribeBackupVaultOutput.add_member(:vault_state, ::Smithy::Schema::Shapes::MemberShape.new(target: VaultState, name: "VaultState"))
    DescribeBackupVaultOutput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "EncryptionKeyArn"))
    DescribeBackupVaultOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    DescribeBackupVaultOutput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatorRequestId"))
    DescribeBackupVaultOutput.add_member(:number_of_recovery_points, ::Smithy::Schema::Shapes::MemberShape.new(target: Long2, name: "NumberOfRecoveryPoints", traits: {"smithy.api#default" => 0}))
    DescribeBackupVaultOutput.add_member(:locked, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Locked"))
    DescribeBackupVaultOutput.add_member(:min_retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "MinRetentionDays"))
    DescribeBackupVaultOutput.add_member(:max_retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "MaxRetentionDays"))
    DescribeBackupVaultOutput.add_member(:lock_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LockDate"))
    DescribeBackupVaultOutput.add_member(:source_backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "SourceBackupVaultArn"))
    DescribeBackupVaultOutput.add_member(:mpa_approval_team_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "MpaApprovalTeamArn"))
    DescribeBackupVaultOutput.add_member(:mpa_session_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "MpaSessionArn"))
    DescribeBackupVaultOutput.add_member(:latest_mpa_approval_team_update, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestMpaApprovalTeamUpdate, name: "LatestMpaApprovalTeamUpdate"))
    DescribeBackupVaultOutput.add_member(:encryption_key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyType, name: "EncryptionKeyType"))
    DescribeBackupVaultOutput.type = Types::DescribeBackupVaultOutput
    DescribeCopyJobInput.add_member(:copy_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CopyJobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeCopyJobInput.type = Types::DescribeCopyJobInput
    DescribeCopyJobOutput.add_member(:copy_job, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyJob, name: "CopyJob"))
    DescribeCopyJobOutput.type = Types::DescribeCopyJobOutput
    DescribeFrameworkInput.add_member(:framework_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameworkName, name: "FrameworkName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeFrameworkInput.type = Types::DescribeFrameworkInput
    DescribeFrameworkOutput.add_member(:framework_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameworkName, name: "FrameworkName"))
    DescribeFrameworkOutput.add_member(:framework_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "FrameworkArn"))
    DescribeFrameworkOutput.add_member(:framework_description, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameworkDescription, name: "FrameworkDescription"))
    DescribeFrameworkOutput.add_member(:framework_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameworkControls, name: "FrameworkControls"))
    DescribeFrameworkOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeFrameworkOutput.add_member(:deployment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeploymentStatus"))
    DescribeFrameworkOutput.add_member(:framework_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FrameworkStatus"))
    DescribeFrameworkOutput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IdempotencyToken"))
    DescribeFrameworkOutput.type = Types::DescribeFrameworkOutput
    DescribeGlobalSettingsInput.type = Types::DescribeGlobalSettingsInput
    DescribeGlobalSettingsOutput.add_member(:global_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalSettings, name: "GlobalSettings"))
    DescribeGlobalSettingsOutput.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdateTime"))
    DescribeGlobalSettingsOutput.type = Types::DescribeGlobalSettingsOutput
    DescribeProtectedResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeProtectedResourceInput.type = Types::DescribeProtectedResourceInput
    DescribeProtectedResourceOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ResourceArn"))
    DescribeProtectedResourceOutput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    DescribeProtectedResourceOutput.add_member(:last_backup_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastBackupTime"))
    DescribeProtectedResourceOutput.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName"))
    DescribeProtectedResourceOutput.add_member(:last_backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "LastBackupVaultArn"))
    DescribeProtectedResourceOutput.add_member(:last_recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "LastRecoveryPointArn"))
    DescribeProtectedResourceOutput.add_member(:latest_restore_execution_time_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "LatestRestoreExecutionTimeMinutes"))
    DescribeProtectedResourceOutput.add_member(:latest_restore_job_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LatestRestoreJobCreationDate"))
    DescribeProtectedResourceOutput.add_member(:latest_restore_recovery_point_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LatestRestoreRecoveryPointCreationDate"))
    DescribeProtectedResourceOutput.type = Types::DescribeProtectedResourceOutput
    DescribeRecoveryPointInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRecoveryPointInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRecoveryPointInput.add_member(:backup_vault_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "BackupVaultAccountId", traits: {"smithy.api#httpQuery" => "backupVaultAccountId"}))
    DescribeRecoveryPointInput.type = Types::DescribeRecoveryPointInput
    DescribeRecoveryPointOutput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn"))
    DescribeRecoveryPointOutput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName"))
    DescribeRecoveryPointOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupVaultArn"))
    DescribeRecoveryPointOutput.add_member(:source_backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "SourceBackupVaultArn"))
    DescribeRecoveryPointOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ResourceArn"))
    DescribeRecoveryPointOutput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    DescribeRecoveryPointOutput.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointCreator, name: "CreatedBy"))
    DescribeRecoveryPointOutput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "IamRoleArn"))
    DescribeRecoveryPointOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointStatus, name: "Status"))
    DescribeRecoveryPointOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusMessage"))
    DescribeRecoveryPointOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    DescribeRecoveryPointOutput.add_member(:initiation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "InitiationDate"))
    DescribeRecoveryPointOutput.add_member(:completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CompletionDate"))
    DescribeRecoveryPointOutput.add_member(:backup_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "BackupSizeInBytes"))
    DescribeRecoveryPointOutput.add_member(:calculated_lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculatedLifecycle, name: "CalculatedLifecycle"))
    DescribeRecoveryPointOutput.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: Lifecycle, name: "Lifecycle"))
    DescribeRecoveryPointOutput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "EncryptionKeyArn"))
    DescribeRecoveryPointOutput.add_member(:is_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "IsEncrypted", traits: {"smithy.api#default" => false}))
    DescribeRecoveryPointOutput.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "StorageClass"))
    DescribeRecoveryPointOutput.add_member(:last_restore_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastRestoreTime"))
    DescribeRecoveryPointOutput.add_member(:parent_recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ParentRecoveryPointArn"))
    DescribeRecoveryPointOutput.add_member(:composite_member_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CompositeMemberIdentifier"))
    DescribeRecoveryPointOutput.add_member(:is_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "IsParent", traits: {"smithy.api#default" => false}))
    DescribeRecoveryPointOutput.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName"))
    DescribeRecoveryPointOutput.add_member(:vault_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VaultType, name: "VaultType"))
    DescribeRecoveryPointOutput.add_member(:index_status, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexStatus, name: "IndexStatus"))
    DescribeRecoveryPointOutput.add_member(:index_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IndexStatusMessage"))
    DescribeRecoveryPointOutput.add_member(:encryption_key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyType, name: "EncryptionKeyType"))
    DescribeRecoveryPointOutput.add_member(:scan_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanResults, name: "ScanResults"))
    DescribeRecoveryPointOutput.type = Types::DescribeRecoveryPointOutput
    DescribeRegionSettingsInput.type = Types::DescribeRegionSettingsInput
    DescribeRegionSettingsOutput.add_member(:resource_type_opt_in_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeOptInPreference, name: "ResourceTypeOptInPreference"))
    DescribeRegionSettingsOutput.add_member(:resource_type_management_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeManagementPreference, name: "ResourceTypeManagementPreference"))
    DescribeRegionSettingsOutput.type = Types::DescribeRegionSettingsOutput
    DescribeReportJobInput.add_member(:report_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportJobId, name: "ReportJobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeReportJobInput.type = Types::DescribeReportJobInput
    DescribeReportJobOutput.add_member(:report_job, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportJob, name: "ReportJob"))
    DescribeReportJobOutput.type = Types::DescribeReportJobOutput
    DescribeReportPlanInput.add_member(:report_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportPlanName, name: "ReportPlanName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeReportPlanInput.type = Types::DescribeReportPlanInput
    DescribeReportPlanOutput.add_member(:report_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportPlan, name: "ReportPlan"))
    DescribeReportPlanOutput.type = Types::DescribeReportPlanOutput
    DescribeRestoreJobInput.add_member(:restore_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreJobId, name: "RestoreJobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRestoreJobInput.type = Types::DescribeRestoreJobInput
    DescribeRestoreJobOutput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    DescribeRestoreJobOutput.add_member(:restore_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RestoreJobId"))
    DescribeRestoreJobOutput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn"))
    DescribeRestoreJobOutput.add_member(:source_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "SourceResourceArn"))
    DescribeRestoreJobOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupVaultArn"))
    DescribeRestoreJobOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    DescribeRestoreJobOutput.add_member(:completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CompletionDate"))
    DescribeRestoreJobOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreJobStatus, name: "Status"))
    DescribeRestoreJobOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusMessage"))
    DescribeRestoreJobOutput.add_member(:percent_done, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PercentDone"))
    DescribeRestoreJobOutput.add_member(:backup_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "BackupSizeInBytes"))
    DescribeRestoreJobOutput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "IamRoleArn"))
    DescribeRestoreJobOutput.add_member(:expected_completion_time_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ExpectedCompletionTimeMinutes"))
    DescribeRestoreJobOutput.add_member(:created_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "CreatedResourceArn"))
    DescribeRestoreJobOutput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    DescribeRestoreJobOutput.add_member(:recovery_point_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "RecoveryPointCreationDate"))
    DescribeRestoreJobOutput.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreJobCreator, name: "CreatedBy"))
    DescribeRestoreJobOutput.add_member(:validation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreValidationStatus, name: "ValidationStatus"))
    DescribeRestoreJobOutput.add_member(:validation_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ValidationStatusMessage"))
    DescribeRestoreJobOutput.add_member(:deletion_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreDeletionStatus, name: "DeletionStatus"))
    DescribeRestoreJobOutput.add_member(:deletion_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeletionStatusMessage"))
    DescribeRestoreJobOutput.add_member(:is_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "IsParent", traits: {"smithy.api#default" => false}))
    DescribeRestoreJobOutput.add_member(:parent_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParentJobId"))
    DescribeRestoreJobOutput.type = Types::DescribeRestoreJobOutput
    DescribeScanJobInput.add_member(:scan_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScanJobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeScanJobInput.type = Types::DescribeScanJobInput
    DescribeScanJobOutput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AccountId", traits: {"smithy.api#required" => {}}))
    DescribeScanJobOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BackupVaultArn", traits: {"smithy.api#required" => {}}))
    DescribeScanJobOutput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BackupVaultName", traits: {"smithy.api#required" => {}}))
    DescribeScanJobOutput.add_member(:completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CompletionDate"))
    DescribeScanJobOutput.add_member(:continuous_scan_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ContinuousScanEndTime"))
    DescribeScanJobOutput.add_member(:continuous_scan_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ContinuousScanStartTime"))
    DescribeScanJobOutput.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanJobCreator, name: "CreatedBy", traits: {"smithy.api#required" => {}}))
    DescribeScanJobOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreationDate", traits: {"smithy.api#required" => {}}))
    DescribeScanJobOutput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "IamRoleArn", traits: {"smithy.api#required" => {}}))
    DescribeScanJobOutput.add_member(:malware_scanner, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareScanner, name: "MalwareScanner", traits: {"smithy.api#required" => {}}))
    DescribeScanJobOutput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RecoveryPointArn", traits: {"smithy.api#required" => {}}))
    DescribeScanJobOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DescribeScanJobOutput.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceName", traits: {"smithy.api#required" => {}}))
    DescribeScanJobOutput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    DescribeScanJobOutput.add_member(:scan_base_recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScanBaseRecoveryPointArn"))
    DescribeScanJobOutput.add_member(:scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScanId"))
    DescribeScanJobOutput.add_member(:scan_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScanJobId", traits: {"smithy.api#required" => {}}))
    DescribeScanJobOutput.add_member(:scan_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanMode, name: "ScanMode", traits: {"smithy.api#required" => {}}))
    DescribeScanJobOutput.add_member(:scan_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanResultInfo, name: "ScanResult"))
    DescribeScanJobOutput.add_member(:scanner_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScannerRoleArn", traits: {"smithy.api#required" => {}}))
    DescribeScanJobOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanState, name: "State", traits: {"smithy.api#required" => {}}))
    DescribeScanJobOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StatusMessage"))
    DescribeScanJobOutput.type = Types::DescribeScanJobOutput
    DisassociateBackupVaultMpaApprovalTeamInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateBackupVaultMpaApprovalTeamInput.add_member(:requester_comment, ::Smithy::Schema::Shapes::MemberShape.new(target: RequesterComment, name: "RequesterComment"))
    DisassociateBackupVaultMpaApprovalTeamInput.type = Types::DisassociateBackupVaultMpaApprovalTeamInput
    DisassociateRecoveryPointFromParentInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateRecoveryPointFromParentInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateRecoveryPointFromParentInput.type = Types::DisassociateRecoveryPointFromParentInput
    DisassociateRecoveryPointInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateRecoveryPointInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateRecoveryPointInput.type = Types::DisassociateRecoveryPointInput
    EncryptionKeyType.add_member(:aws_owned_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_OWNED_KMS_KEY", traits: {"smithy.api#enumValue" => "AWS_OWNED_KMS_KEY"}))
    EncryptionKeyType.add_member(:customer_managed_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_MANAGED_KMS_KEY", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED_KMS_KEY"}))
    ExportBackupPlanTemplateInput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportBackupPlanTemplateInput.type = Types::ExportBackupPlanTemplateInput
    ExportBackupPlanTemplateOutput.add_member(:backup_plan_template_json, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanTemplateJson"))
    ExportBackupPlanTemplateOutput.type = Types::ExportBackupPlanTemplateOutput
    FormatList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Framework.add_member(:framework_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameworkName, name: "FrameworkName"))
    Framework.add_member(:framework_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "FrameworkArn"))
    Framework.add_member(:framework_description, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameworkDescription, name: "FrameworkDescription"))
    Framework.add_member(:number_of_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfControls", traits: {"smithy.api#default" => 0}))
    Framework.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    Framework.add_member(:deployment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeploymentStatus"))
    Framework.type = Types::Framework
    FrameworkControl.add_member(:control_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlName, name: "ControlName", traits: {"smithy.api#required" => {}}))
    FrameworkControl.add_member(:control_input_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlInputParameters, name: "ControlInputParameters"))
    FrameworkControl.add_member(:control_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlScope, name: "ControlScope"))
    FrameworkControl.type = Types::FrameworkControl
    FrameworkControls.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameworkControl, name: "member"))
    FrameworkList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Framework, name: "member"))
    GetBackupPlanFromJSONInput.add_member(:backup_plan_template_json, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanTemplateJson", traits: {"smithy.api#required" => {}}))
    GetBackupPlanFromJSONInput.type = Types::GetBackupPlanFromJSONInput
    GetBackupPlanFromJSONOutput.add_member(:backup_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupPlan, name: "BackupPlan"))
    GetBackupPlanFromJSONOutput.type = Types::GetBackupPlanFromJSONOutput
    GetBackupPlanFromTemplateInput.add_member(:backup_plan_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanTemplateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackupPlanFromTemplateInput.type = Types::GetBackupPlanFromTemplateInput
    GetBackupPlanFromTemplateOutput.add_member(:backup_plan_document, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupPlan, name: "BackupPlanDocument"))
    GetBackupPlanFromTemplateOutput.type = Types::GetBackupPlanFromTemplateOutput
    GetBackupPlanInput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackupPlanInput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VersionId", traits: {"smithy.api#httpQuery" => "versionId"}))
    GetBackupPlanInput.add_member(:max_scheduled_runs_preview, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxScheduledRunsPreview, name: "MaxScheduledRunsPreview", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "MaxScheduledRunsPreview"}))
    GetBackupPlanInput.type = Types::GetBackupPlanInput
    GetBackupPlanOutput.add_member(:backup_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupPlan, name: "BackupPlan"))
    GetBackupPlanOutput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanId"))
    GetBackupPlanOutput.add_member(:backup_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupPlanArn"))
    GetBackupPlanOutput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VersionId"))
    GetBackupPlanOutput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatorRequestId"))
    GetBackupPlanOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    GetBackupPlanOutput.add_member(:deletion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "DeletionDate"))
    GetBackupPlanOutput.add_member(:last_execution_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastExecutionDate"))
    GetBackupPlanOutput.add_member(:advanced_backup_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedBackupSettings, name: "AdvancedBackupSettings"))
    GetBackupPlanOutput.add_member(:scheduled_runs_preview, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledRunsPreview, name: "ScheduledRunsPreview"))
    GetBackupPlanOutput.type = Types::GetBackupPlanOutput
    GetBackupSelectionInput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackupSelectionInput.add_member(:selection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SelectionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackupSelectionInput.type = Types::GetBackupSelectionInput
    GetBackupSelectionOutput.add_member(:backup_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupSelection, name: "BackupSelection"))
    GetBackupSelectionOutput.add_member(:selection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SelectionId"))
    GetBackupSelectionOutput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanId"))
    GetBackupSelectionOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    GetBackupSelectionOutput.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatorRequestId"))
    GetBackupSelectionOutput.type = Types::GetBackupSelectionOutput
    GetBackupVaultAccessPolicyInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackupVaultAccessPolicyInput.type = Types::GetBackupVaultAccessPolicyInput
    GetBackupVaultAccessPolicyOutput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName"))
    GetBackupVaultAccessPolicyOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupVaultArn"))
    GetBackupVaultAccessPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMPolicy, name: "Policy"))
    GetBackupVaultAccessPolicyOutput.type = Types::GetBackupVaultAccessPolicyOutput
    GetBackupVaultNotificationsInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackupVaultNotificationsInput.type = Types::GetBackupVaultNotificationsInput
    GetBackupVaultNotificationsOutput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName"))
    GetBackupVaultNotificationsOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupVaultArn"))
    GetBackupVaultNotificationsOutput.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "SNSTopicArn"))
    GetBackupVaultNotificationsOutput.add_member(:backup_vault_events, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultEvents, name: "BackupVaultEvents"))
    GetBackupVaultNotificationsOutput.type = Types::GetBackupVaultNotificationsOutput
    GetLegalHoldInput.add_member(:legal_hold_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LegalHoldId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLegalHoldInput.type = Types::GetLegalHoldInput
    GetLegalHoldOutput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Title"))
    GetLegalHoldOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LegalHoldStatus, name: "Status"))
    GetLegalHoldOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    GetLegalHoldOutput.add_member(:cancel_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CancelDescription"))
    GetLegalHoldOutput.add_member(:legal_hold_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LegalHoldId"))
    GetLegalHoldOutput.add_member(:legal_hold_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "LegalHoldArn"))
    GetLegalHoldOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    GetLegalHoldOutput.add_member(:cancellation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CancellationDate"))
    GetLegalHoldOutput.add_member(:retain_record_until, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "RetainRecordUntil"))
    GetLegalHoldOutput.add_member(:recovery_point_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointSelection, name: "RecoveryPointSelection"))
    GetLegalHoldOutput.type = Types::GetLegalHoldOutput
    GetPITRMalwareScanResultsInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RecoveryPointArn", traits: {"smithy.api#httpQuery" => "RecoveryPointArn", "smithy.api#required" => {}}))
    GetPITRMalwareScanResultsInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BackupVaultName", traits: {"smithy.api#httpQuery" => "BackupVaultName", "smithy.api#required" => {}}))
    GetPITRMalwareScanResultsInput.add_member(:scan_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ScanEndTime", traits: {"smithy.api#httpQuery" => "ScanEndTime", "smithy.api#required" => {}}))
    GetPITRMalwareScanResultsInput.add_member(:malware_scanner, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareScanner, name: "MalwareScanner", traits: {"smithy.api#httpQuery" => "MalwareScanner", "smithy.api#required" => {}}))
    GetPITRMalwareScanResultsInput.type = Types::GetPITRMalwareScanResultsInput
    GetPITRMalwareScanResultsOutput.add_member(:scan_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ScanEndTime", traits: {"smithy.api#required" => {}}))
    GetPITRMalwareScanResultsOutput.add_member(:scan_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanResultInfo, name: "ScanResult", traits: {"smithy.api#required" => {}}))
    GetPITRMalwareScanResultsOutput.add_member(:last_scan_job_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastScanJobTime"))
    GetPITRMalwareScanResultsOutput.add_member(:scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScanId"))
    GetPITRMalwareScanResultsOutput.add_member(:scan_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanMode, name: "ScanMode"))
    GetPITRMalwareScanResultsOutput.type = Types::GetPITRMalwareScanResultsOutput
    GetRecoveryPointIndexDetailsInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecoveryPointIndexDetailsInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecoveryPointIndexDetailsInput.type = Types::GetRecoveryPointIndexDetailsInput
    GetRecoveryPointIndexDetailsOutput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn"))
    GetRecoveryPointIndexDetailsOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupVaultArn"))
    GetRecoveryPointIndexDetailsOutput.add_member(:source_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "SourceResourceArn"))
    GetRecoveryPointIndexDetailsOutput.add_member(:index_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "IndexCreationDate"))
    GetRecoveryPointIndexDetailsOutput.add_member(:index_deletion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "IndexDeletionDate"))
    GetRecoveryPointIndexDetailsOutput.add_member(:index_completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "IndexCompletionDate"))
    GetRecoveryPointIndexDetailsOutput.add_member(:index_status, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexStatus, name: "IndexStatus"))
    GetRecoveryPointIndexDetailsOutput.add_member(:index_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IndexStatusMessage"))
    GetRecoveryPointIndexDetailsOutput.add_member(:total_items_indexed, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TotalItemsIndexed"))
    GetRecoveryPointIndexDetailsOutput.type = Types::GetRecoveryPointIndexDetailsOutput
    GetRecoveryPointRestoreMetadataInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecoveryPointRestoreMetadataInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecoveryPointRestoreMetadataInput.add_member(:backup_vault_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "BackupVaultAccountId", traits: {"smithy.api#httpQuery" => "backupVaultAccountId"}))
    GetRecoveryPointRestoreMetadataInput.type = Types::GetRecoveryPointRestoreMetadataInput
    GetRecoveryPointRestoreMetadataOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupVaultArn"))
    GetRecoveryPointRestoreMetadataOutput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn"))
    GetRecoveryPointRestoreMetadataOutput.add_member(:restore_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "RestoreMetadata"))
    GetRecoveryPointRestoreMetadataOutput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    GetRecoveryPointRestoreMetadataOutput.type = Types::GetRecoveryPointRestoreMetadataOutput
    GetRestoreJobMetadataInput.add_member(:restore_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreJobId, name: "RestoreJobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRestoreJobMetadataInput.type = Types::GetRestoreJobMetadataInput
    GetRestoreJobMetadataOutput.add_member(:restore_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreJobId, name: "RestoreJobId"))
    GetRestoreJobMetadataOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata"))
    GetRestoreJobMetadataOutput.type = Types::GetRestoreJobMetadataOutput
    GetRestoreTestingInferredMetadataInput.add_member(:backup_vault_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BackupVaultAccountId", traits: {"smithy.api#httpQuery" => "BackupVaultAccountId"}))
    GetRestoreTestingInferredMetadataInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BackupVaultName", traits: {"smithy.api#httpQuery" => "BackupVaultName", "smithy.api#required" => {}}))
    GetRestoreTestingInferredMetadataInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RecoveryPointArn", traits: {"smithy.api#httpQuery" => "RecoveryPointArn", "smithy.api#required" => {}}))
    GetRestoreTestingInferredMetadataInput.type = Types::GetRestoreTestingInferredMetadataInput
    GetRestoreTestingInferredMetadataOutput.add_member(:inferred_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "InferredMetadata", traits: {"smithy.api#required" => {}}))
    GetRestoreTestingInferredMetadataOutput.type = Types::GetRestoreTestingInferredMetadataOutput
    GetRestoreTestingPlanInput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRestoreTestingPlanInput.type = Types::GetRestoreTestingPlanInput
    GetRestoreTestingPlanOutput.add_member(:restore_testing_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreTestingPlanForGet, name: "RestoreTestingPlan", traits: {"smithy.api#required" => {}}))
    GetRestoreTestingPlanOutput.type = Types::GetRestoreTestingPlanOutput
    GetRestoreTestingSelectionInput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRestoreTestingSelectionInput.add_member(:restore_testing_selection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingSelectionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRestoreTestingSelectionInput.type = Types::GetRestoreTestingSelectionInput
    GetRestoreTestingSelectionOutput.add_member(:restore_testing_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreTestingSelectionForGet, name: "RestoreTestingSelection", traits: {"smithy.api#required" => {}}))
    GetRestoreTestingSelectionOutput.type = Types::GetRestoreTestingSelectionOutput
    GetSupportedResourceTypesOutput.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypes, name: "ResourceTypes"))
    GetSupportedResourceTypesOutput.type = Types::GetSupportedResourceTypesOutput
    GetTieringConfigurationInput.add_member(:tiering_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringConfigurationName, name: "TieringConfigurationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTieringConfigurationInput.type = Types::GetTieringConfigurationInput
    GetTieringConfigurationOutput.add_member(:tiering_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringConfiguration, name: "TieringConfiguration"))
    GetTieringConfigurationOutput.type = Types::GetTieringConfigurationOutput
    GlobalSettings.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalSettingsName, name: "key"))
    GlobalSettings.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalSettingsValue, name: "value"))
    Index.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    Index.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    IndexAction.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypes, name: "ResourceTypes"))
    IndexAction.type = Types::IndexAction
    IndexActions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexAction, name: "member"))
    IndexStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    IndexStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    IndexStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    IndexStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    IndexedRecoveryPoint.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn"))
    IndexedRecoveryPoint.add_member(:source_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "SourceResourceArn"))
    IndexedRecoveryPoint.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "IamRoleArn"))
    IndexedRecoveryPoint.add_member(:backup_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "BackupCreationDate"))
    IndexedRecoveryPoint.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    IndexedRecoveryPoint.add_member(:index_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "IndexCreationDate"))
    IndexedRecoveryPoint.add_member(:index_status, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexStatus, name: "IndexStatus"))
    IndexedRecoveryPoint.add_member(:index_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IndexStatusMessage"))
    IndexedRecoveryPoint.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupVaultArn"))
    IndexedRecoveryPoint.type = Types::IndexedRecoveryPoint
    IndexedRecoveryPointList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexedRecoveryPoint, name: "member"))
    InvalidParameterValueException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidParameterValueException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    InvalidParameterValueException.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Context"))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    InvalidRequestException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidRequestException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    InvalidRequestException.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Context"))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidResourceStateException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    InvalidResourceStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidResourceStateException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    InvalidResourceStateException.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Context"))
    InvalidResourceStateException.type = Types::InvalidResourceStateException
    KeyValue.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Key", traits: {"smithy.api#required" => {}}))
    KeyValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Value", traits: {"smithy.api#required" => {}}))
    KeyValue.type = Types::KeyValue
    KeyValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValue, name: "member"))
    LatestMpaApprovalTeamUpdate.add_member(:mpa_session_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "MpaSessionArn"))
    LatestMpaApprovalTeamUpdate.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MpaSessionStatus, name: "Status"))
    LatestMpaApprovalTeamUpdate.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusMessage"))
    LatestMpaApprovalTeamUpdate.add_member(:initiation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "InitiationDate"))
    LatestMpaApprovalTeamUpdate.add_member(:expiry_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExpiryDate"))
    LatestMpaApprovalTeamUpdate.type = Types::LatestMpaApprovalTeamUpdate
    LatestRevokeRequest.add_member(:mpa_session_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MpaSessionArn"))
    LatestRevokeRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MpaRevokeSessionStatus, name: "Status"))
    LatestRevokeRequest.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusMessage"))
    LatestRevokeRequest.add_member(:initiation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "InitiationDate"))
    LatestRevokeRequest.add_member(:expiry_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExpiryDate"))
    LatestRevokeRequest.type = Types::LatestRevokeRequest
    LegalHold.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Title"))
    LegalHold.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LegalHoldStatus, name: "Status"))
    LegalHold.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    LegalHold.add_member(:legal_hold_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LegalHoldId"))
    LegalHold.add_member(:legal_hold_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "LegalHoldArn"))
    LegalHold.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    LegalHold.add_member(:cancellation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CancellationDate"))
    LegalHold.type = Types::LegalHold
    LegalHoldStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    LegalHoldStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    LegalHoldStatus.add_member(:canceling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELING", traits: {"smithy.api#enumValue" => "CANCELING"}))
    LegalHoldStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    LegalHoldsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LegalHold, name: "member"))
    Lifecycle.add_member(:move_to_cold_storage_after_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "MoveToColdStorageAfterDays"))
    Lifecycle.add_member(:delete_after_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "DeleteAfterDays"))
    Lifecycle.add_member(:opt_in_to_archive_for_supported_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "OptInToArchiveForSupportedResources"))
    Lifecycle.add_member(:delete_after_event, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleDeleteAfterEvent, name: "DeleteAfterEvent"))
    Lifecycle.type = Types::Lifecycle
    LifecycleDeleteAfterEvent.add_member(:delete_after_copy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_AFTER_COPY", traits: {"smithy.api#enumValue" => "DELETE_AFTER_COPY"}))
    LimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    LimitExceededException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    LimitExceededException.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Context"))
    LimitExceededException.type = Types::LimitExceededException
    ListAccessPointsMember.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointArn, name: "AccessPointArn", traits: {"smithy.api#required" => {}}))
    ListAccessPointsMember.add_member(:access_point_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointMetadataMap, name: "AccessPointMetadata", traits: {"smithy.api#required" => {}}))
    ListAccessPointsMember.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultArn, name: "BackupVaultArn"))
    ListAccessPointsMember.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#required" => {}}))
    ListAccessPointsMember.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    ListAccessPointsMember.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "Name", traits: {"smithy.api#required" => {}}))
    ListAccessPointsMember.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointArn, name: "RecoveryPointArn", traits: {"smithy.api#required" => {}}))
    ListAccessPointsMember.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListAccessPointsMember.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ListAccessPointsMember.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    ListAccessPointsMember.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StatusMessage"))
    ListAccessPointsMember.type = Types::ListAccessPointsMember
    ListBackupAccessPointsByRecoveryPointRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListBackupAccessPointsByRecoveryPointRequestMaxResultsInteger, name: "MaxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "MaxResults"}))
    ListBackupAccessPointsByRecoveryPointRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListBackupAccessPointsByRecoveryPointRequest.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointArn, name: "RecoveryPointArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBackupAccessPointsByRecoveryPointRequest.type = Types::ListBackupAccessPointsByRecoveryPointRequest
    ListBackupAccessPointsByRecoveryPointResponse.add_member(:backup_access_points, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupAccessPoints, name: "BackupAccessPoints", traits: {"smithy.api#required" => {}}))
    ListBackupAccessPointsByRecoveryPointResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListBackupAccessPointsByRecoveryPointResponse.type = Types::ListBackupAccessPointsByRecoveryPointResponse
    ListBackupAccessPointsByResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListBackupAccessPointsByResourceRequestMaxResultsInteger, name: "MaxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "MaxResults"}))
    ListBackupAccessPointsByResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListBackupAccessPointsByResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBackupAccessPointsByResourceRequest.type = Types::ListBackupAccessPointsByResourceRequest
    ListBackupAccessPointsByResourceResponse.add_member(:backup_access_points, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupAccessPoints, name: "BackupAccessPoints", traits: {"smithy.api#required" => {}}))
    ListBackupAccessPointsByResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListBackupAccessPointsByResourceResponse.type = Types::ListBackupAccessPointsByResourceResponse
    ListBackupAccessPointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListBackupAccessPointsRequestMaxResultsInteger, name: "MaxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "MaxResults"}))
    ListBackupAccessPointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListBackupAccessPointsRequest.type = Types::ListBackupAccessPointsRequest
    ListBackupAccessPointsResponse.add_member(:backup_access_points, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupAccessPoints, name: "BackupAccessPoints", traits: {"smithy.api#required" => {}}))
    ListBackupAccessPointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListBackupAccessPointsResponse.type = Types::ListBackupAccessPointsResponse
    ListBackupJobSummariesInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpQuery" => "AccountId"}))
    ListBackupJobSummariesInput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupJobStatus, name: "State", traits: {"smithy.api#httpQuery" => "State"}))
    ListBackupJobSummariesInput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#httpQuery" => "ResourceType"}))
    ListBackupJobSummariesInput.add_member(:message_category, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageCategory, name: "MessageCategory", traits: {"smithy.api#httpQuery" => "MessageCategory"}))
    ListBackupJobSummariesInput.add_member(:aggregation_period, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationPeriod, name: "AggregationPeriod", traits: {"smithy.api#httpQuery" => "AggregationPeriod"}))
    ListBackupJobSummariesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListBackupJobSummariesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListBackupJobSummariesInput.type = Types::ListBackupJobSummariesInput
    ListBackupJobSummariesOutput.add_member(:backup_job_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupJobSummaryList, name: "BackupJobSummaries"))
    ListBackupJobSummariesOutput.add_member(:aggregation_period, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AggregationPeriod"))
    ListBackupJobSummariesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListBackupJobSummariesOutput.type = Types::ListBackupJobSummariesOutput
    ListBackupJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBackupJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBackupJobsInput.add_member(:by_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ByResourceArn", traits: {"smithy.api#httpQuery" => "resourceArn"}))
    ListBackupJobsInput.add_member(:by_state, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupJobState, name: "ByState", traits: {"smithy.api#httpQuery" => "state"}))
    ListBackupJobsInput.add_member(:by_backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "ByBackupVaultName", traits: {"smithy.api#httpQuery" => "backupVaultName"}))
    ListBackupJobsInput.add_member(:by_created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ByCreatedBefore", traits: {"smithy.api#httpQuery" => "createdBefore"}))
    ListBackupJobsInput.add_member(:by_created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ByCreatedAfter", traits: {"smithy.api#httpQuery" => "createdAfter"}))
    ListBackupJobsInput.add_member(:by_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ByResourceType", traits: {"smithy.api#httpQuery" => "resourceType"}))
    ListBackupJobsInput.add_member(:by_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ByAccountId", traits: {"smithy.api#httpQuery" => "accountId"}))
    ListBackupJobsInput.add_member(:by_complete_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ByCompleteAfter", traits: {"smithy.api#httpQuery" => "completeAfter"}))
    ListBackupJobsInput.add_member(:by_complete_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ByCompleteBefore", traits: {"smithy.api#httpQuery" => "completeBefore"}))
    ListBackupJobsInput.add_member(:by_parent_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ByParentJobId", traits: {"smithy.api#httpQuery" => "parentJobId"}))
    ListBackupJobsInput.add_member(:by_message_category, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ByMessageCategory", traits: {"smithy.api#httpQuery" => "messageCategory"}))
    ListBackupJobsInput.type = Types::ListBackupJobsInput
    ListBackupJobsOutput.add_member(:backup_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupJobsList, name: "BackupJobs"))
    ListBackupJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListBackupJobsOutput.type = Types::ListBackupJobsOutput
    ListBackupPlanTemplatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBackupPlanTemplatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBackupPlanTemplatesInput.type = Types::ListBackupPlanTemplatesInput
    ListBackupPlanTemplatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListBackupPlanTemplatesOutput.add_member(:backup_plan_templates_list, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupPlanTemplatesList, name: "BackupPlanTemplatesList"))
    ListBackupPlanTemplatesOutput.type = Types::ListBackupPlanTemplatesOutput
    ListBackupPlanVersionsInput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBackupPlanVersionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBackupPlanVersionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBackupPlanVersionsInput.type = Types::ListBackupPlanVersionsInput
    ListBackupPlanVersionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListBackupPlanVersionsOutput.add_member(:backup_plan_versions_list, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupPlanVersionsList, name: "BackupPlanVersionsList"))
    ListBackupPlanVersionsOutput.type = Types::ListBackupPlanVersionsOutput
    ListBackupPlansInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBackupPlansInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBackupPlansInput.add_member(:include_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeDeleted", traits: {"smithy.api#httpQuery" => "includeDeleted"}))
    ListBackupPlansInput.type = Types::ListBackupPlansInput
    ListBackupPlansOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListBackupPlansOutput.add_member(:backup_plans_list, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupPlansList, name: "BackupPlansList"))
    ListBackupPlansOutput.type = Types::ListBackupPlansOutput
    ListBackupSelectionsInput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBackupSelectionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBackupSelectionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBackupSelectionsInput.type = Types::ListBackupSelectionsInput
    ListBackupSelectionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListBackupSelectionsOutput.add_member(:backup_selections_list, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupSelectionsList, name: "BackupSelectionsList"))
    ListBackupSelectionsOutput.type = Types::ListBackupSelectionsOutput
    ListBackupVaultsInput.add_member(:by_vault_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VaultType, name: "ByVaultType", traits: {"smithy.api#httpQuery" => "vaultType"}))
    ListBackupVaultsInput.add_member(:by_shared, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "ByShared", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "shared"}))
    ListBackupVaultsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBackupVaultsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBackupVaultsInput.type = Types::ListBackupVaultsInput
    ListBackupVaultsOutput.add_member(:backup_vault_list, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultList, name: "BackupVaultList"))
    ListBackupVaultsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListBackupVaultsOutput.type = Types::ListBackupVaultsOutput
    ListCopyJobSummariesInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpQuery" => "AccountId"}))
    ListCopyJobSummariesInput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyJobStatus, name: "State", traits: {"smithy.api#httpQuery" => "State"}))
    ListCopyJobSummariesInput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#httpQuery" => "ResourceType"}))
    ListCopyJobSummariesInput.add_member(:message_category, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageCategory, name: "MessageCategory", traits: {"smithy.api#httpQuery" => "MessageCategory"}))
    ListCopyJobSummariesInput.add_member(:aggregation_period, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationPeriod, name: "AggregationPeriod", traits: {"smithy.api#httpQuery" => "AggregationPeriod"}))
    ListCopyJobSummariesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListCopyJobSummariesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListCopyJobSummariesInput.type = Types::ListCopyJobSummariesInput
    ListCopyJobSummariesOutput.add_member(:copy_job_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyJobSummaryList, name: "CopyJobSummaries"))
    ListCopyJobSummariesOutput.add_member(:aggregation_period, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AggregationPeriod"))
    ListCopyJobSummariesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListCopyJobSummariesOutput.type = Types::ListCopyJobSummariesOutput
    ListCopyJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCopyJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCopyJobsInput.add_member(:by_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ByResourceArn", traits: {"smithy.api#httpQuery" => "resourceArn"}))
    ListCopyJobsInput.add_member(:by_state, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyJobState, name: "ByState", traits: {"smithy.api#httpQuery" => "state"}))
    ListCopyJobsInput.add_member(:by_created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ByCreatedBefore", traits: {"smithy.api#httpQuery" => "createdBefore"}))
    ListCopyJobsInput.add_member(:by_created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ByCreatedAfter", traits: {"smithy.api#httpQuery" => "createdAfter"}))
    ListCopyJobsInput.add_member(:by_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ByResourceType", traits: {"smithy.api#httpQuery" => "resourceType"}))
    ListCopyJobsInput.add_member(:by_destination_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ByDestinationVaultArn", traits: {"smithy.api#httpQuery" => "destinationVaultArn"}))
    ListCopyJobsInput.add_member(:by_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ByAccountId", traits: {"smithy.api#httpQuery" => "accountId"}))
    ListCopyJobsInput.add_member(:by_complete_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ByCompleteBefore", traits: {"smithy.api#httpQuery" => "completeBefore"}))
    ListCopyJobsInput.add_member(:by_complete_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ByCompleteAfter", traits: {"smithy.api#httpQuery" => "completeAfter"}))
    ListCopyJobsInput.add_member(:by_parent_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ByParentJobId", traits: {"smithy.api#httpQuery" => "parentJobId"}))
    ListCopyJobsInput.add_member(:by_message_category, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ByMessageCategory", traits: {"smithy.api#httpQuery" => "messageCategory"}))
    ListCopyJobsInput.add_member(:by_source_recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BySourceRecoveryPointArn", traits: {"smithy.api#httpQuery" => "sourceRecoveryPointArn"}))
    ListCopyJobsInput.type = Types::ListCopyJobsInput
    ListCopyJobsOutput.add_member(:copy_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyJobsList, name: "CopyJobs"))
    ListCopyJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListCopyJobsOutput.type = Types::ListCopyJobsOutput
    ListFrameworksInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxFrameworkInputs, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListFrameworksInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListFrameworksInput.type = Types::ListFrameworksInput
    ListFrameworksOutput.add_member(:frameworks, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameworkList, name: "Frameworks"))
    ListFrameworksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListFrameworksOutput.type = Types::ListFrameworksOutput
    ListIndexedRecoveryPointsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListIndexedRecoveryPointsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListIndexedRecoveryPointsInput.add_member(:source_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "SourceResourceArn", traits: {"smithy.api#httpQuery" => "sourceResourceArn"}))
    ListIndexedRecoveryPointsInput.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedBefore", traits: {"smithy.api#httpQuery" => "createdBefore"}))
    ListIndexedRecoveryPointsInput.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAfter", traits: {"smithy.api#httpQuery" => "createdAfter"}))
    ListIndexedRecoveryPointsInput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#httpQuery" => "resourceType"}))
    ListIndexedRecoveryPointsInput.add_member(:index_status, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexStatus, name: "IndexStatus", traits: {"smithy.api#httpQuery" => "indexStatus"}))
    ListIndexedRecoveryPointsInput.type = Types::ListIndexedRecoveryPointsInput
    ListIndexedRecoveryPointsOutput.add_member(:indexed_recovery_points, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexedRecoveryPointList, name: "IndexedRecoveryPoints"))
    ListIndexedRecoveryPointsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListIndexedRecoveryPointsOutput.type = Types::ListIndexedRecoveryPointsOutput
    ListLegalHoldsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListLegalHoldsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListLegalHoldsInput.type = Types::ListLegalHoldsInput
    ListLegalHoldsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListLegalHoldsOutput.add_member(:legal_holds, ::Smithy::Schema::Shapes::MemberShape.new(target: LegalHoldsList, name: "LegalHolds"))
    ListLegalHoldsOutput.type = Types::ListLegalHoldsOutput
    ListOfTags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "member"))
    ListProtectedResourcesByBackupVaultInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProtectedResourcesByBackupVaultInput.add_member(:backup_vault_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "BackupVaultAccountId", traits: {"smithy.api#httpQuery" => "backupVaultAccountId"}))
    ListProtectedResourcesByBackupVaultInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProtectedResourcesByBackupVaultInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListProtectedResourcesByBackupVaultInput.type = Types::ListProtectedResourcesByBackupVaultInput
    ListProtectedResourcesByBackupVaultOutput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedResourcesList, name: "Results"))
    ListProtectedResourcesByBackupVaultOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListProtectedResourcesByBackupVaultOutput.type = Types::ListProtectedResourcesByBackupVaultOutput
    ListProtectedResourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProtectedResourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListProtectedResourcesInput.type = Types::ListProtectedResourcesInput
    ListProtectedResourcesOutput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedResourcesList, name: "Results"))
    ListProtectedResourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListProtectedResourcesOutput.type = Types::ListProtectedResourcesOutput
    ListRecoveryPointsByBackupVaultInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecoveryPointsByBackupVaultInput.add_member(:backup_vault_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "BackupVaultAccountId", traits: {"smithy.api#httpQuery" => "backupVaultAccountId"}))
    ListRecoveryPointsByBackupVaultInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRecoveryPointsByBackupVaultInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ByResourceArn", traits: {"smithy.api#httpQuery" => "resourceArn"}))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ByResourceType", traits: {"smithy.api#httpQuery" => "resourceType"}))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_backup_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ByBackupPlanId", traits: {"smithy.api#httpQuery" => "backupPlanId"}))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ByCreatedBefore", traits: {"smithy.api#httpQuery" => "createdBefore"}))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ByCreatedAfter", traits: {"smithy.api#httpQuery" => "createdAfter"}))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_parent_recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ByParentRecoveryPointArn", traits: {"smithy.api#httpQuery" => "parentRecoveryPointArn"}))
    ListRecoveryPointsByBackupVaultInput.type = Types::ListRecoveryPointsByBackupVaultInput
    ListRecoveryPointsByBackupVaultOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListRecoveryPointsByBackupVaultOutput.add_member(:recovery_points, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointByBackupVaultList, name: "RecoveryPoints"))
    ListRecoveryPointsByBackupVaultOutput.type = Types::ListRecoveryPointsByBackupVaultOutput
    ListRecoveryPointsByLegalHoldInput.add_member(:legal_hold_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LegalHoldId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecoveryPointsByLegalHoldInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRecoveryPointsByLegalHoldInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRecoveryPointsByLegalHoldInput.type = Types::ListRecoveryPointsByLegalHoldInput
    ListRecoveryPointsByLegalHoldOutput.add_member(:recovery_points, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointsList, name: "RecoveryPoints"))
    ListRecoveryPointsByLegalHoldOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListRecoveryPointsByLegalHoldOutput.type = Types::ListRecoveryPointsByLegalHoldOutput
    ListRecoveryPointsByResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecoveryPointsByResourceInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRecoveryPointsByResourceInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRecoveryPointsByResourceInput.add_member(:managed_by_aws_backup_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "ManagedByAWSBackupOnly", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "managedByAWSBackupOnly"}))
    ListRecoveryPointsByResourceInput.type = Types::ListRecoveryPointsByResourceInput
    ListRecoveryPointsByResourceOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListRecoveryPointsByResourceOutput.add_member(:recovery_points, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointByResourceList, name: "RecoveryPoints"))
    ListRecoveryPointsByResourceOutput.type = Types::ListRecoveryPointsByResourceOutput
    ListReportJobsInput.add_member(:by_report_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportPlanName, name: "ByReportPlanName", traits: {"smithy.api#httpQuery" => "ReportPlanName"}))
    ListReportJobsInput.add_member(:by_creation_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ByCreationBefore", traits: {"smithy.api#httpQuery" => "CreationBefore"}))
    ListReportJobsInput.add_member(:by_creation_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ByCreationAfter", traits: {"smithy.api#httpQuery" => "CreationAfter"}))
    ListReportJobsInput.add_member(:by_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ByStatus", traits: {"smithy.api#httpQuery" => "Status"}))
    ListReportJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListReportJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListReportJobsInput.type = Types::ListReportJobsInput
    ListReportJobsOutput.add_member(:report_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportJobList, name: "ReportJobs"))
    ListReportJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListReportJobsOutput.type = Types::ListReportJobsOutput
    ListReportPlansInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListReportPlansInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListReportPlansInput.type = Types::ListReportPlansInput
    ListReportPlansOutput.add_member(:report_plans, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportPlanList, name: "ReportPlans"))
    ListReportPlansOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListReportPlansOutput.type = Types::ListReportPlansOutput
    ListRestoreAccessBackupVaultsInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRestoreAccessBackupVaultsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRestoreAccessBackupVaultsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRestoreAccessBackupVaultsInput.type = Types::ListRestoreAccessBackupVaultsInput
    ListRestoreAccessBackupVaultsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListRestoreAccessBackupVaultsOutput.add_member(:restore_access_backup_vaults, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreAccessBackupVaultList, name: "RestoreAccessBackupVaults"))
    ListRestoreAccessBackupVaultsOutput.type = Types::ListRestoreAccessBackupVaultsOutput
    ListRestoreJobSummariesInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpQuery" => "AccountId"}))
    ListRestoreJobSummariesInput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreJobState, name: "State", traits: {"smithy.api#httpQuery" => "State"}))
    ListRestoreJobSummariesInput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#httpQuery" => "ResourceType"}))
    ListRestoreJobSummariesInput.add_member(:aggregation_period, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationPeriod, name: "AggregationPeriod", traits: {"smithy.api#httpQuery" => "AggregationPeriod"}))
    ListRestoreJobSummariesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListRestoreJobSummariesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListRestoreJobSummariesInput.type = Types::ListRestoreJobSummariesInput
    ListRestoreJobSummariesOutput.add_member(:restore_job_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreJobSummaryList, name: "RestoreJobSummaries"))
    ListRestoreJobSummariesOutput.add_member(:aggregation_period, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AggregationPeriod"))
    ListRestoreJobSummariesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListRestoreJobSummariesOutput.type = Types::ListRestoreJobSummariesOutput
    ListRestoreJobsByProtectedResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRestoreJobsByProtectedResourceInput.add_member(:by_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreJobStatus, name: "ByStatus", traits: {"smithy.api#httpQuery" => "status"}))
    ListRestoreJobsByProtectedResourceInput.add_member(:by_recovery_point_creation_date_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ByRecoveryPointCreationDateAfter", traits: {"smithy.api#httpQuery" => "recoveryPointCreationDateAfter"}))
    ListRestoreJobsByProtectedResourceInput.add_member(:by_recovery_point_creation_date_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ByRecoveryPointCreationDateBefore", traits: {"smithy.api#httpQuery" => "recoveryPointCreationDateBefore"}))
    ListRestoreJobsByProtectedResourceInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRestoreJobsByProtectedResourceInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRestoreJobsByProtectedResourceInput.type = Types::ListRestoreJobsByProtectedResourceInput
    ListRestoreJobsByProtectedResourceOutput.add_member(:restore_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreJobsList, name: "RestoreJobs"))
    ListRestoreJobsByProtectedResourceOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListRestoreJobsByProtectedResourceOutput.type = Types::ListRestoreJobsByProtectedResourceOutput
    ListRestoreJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRestoreJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRestoreJobsInput.add_member(:by_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ByAccountId", traits: {"smithy.api#httpQuery" => "accountId"}))
    ListRestoreJobsInput.add_member(:by_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ByResourceType", traits: {"smithy.api#httpQuery" => "resourceType"}))
    ListRestoreJobsInput.add_member(:by_created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ByCreatedBefore", traits: {"smithy.api#httpQuery" => "createdBefore"}))
    ListRestoreJobsInput.add_member(:by_created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ByCreatedAfter", traits: {"smithy.api#httpQuery" => "createdAfter"}))
    ListRestoreJobsInput.add_member(:by_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreJobStatus, name: "ByStatus", traits: {"smithy.api#httpQuery" => "status"}))
    ListRestoreJobsInput.add_member(:by_complete_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ByCompleteBefore", traits: {"smithy.api#httpQuery" => "completeBefore"}))
    ListRestoreJobsInput.add_member(:by_complete_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ByCompleteAfter", traits: {"smithy.api#httpQuery" => "completeAfter"}))
    ListRestoreJobsInput.add_member(:by_restore_testing_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ByRestoreTestingPlanArn", traits: {"smithy.api#httpQuery" => "restoreTestingPlanArn"}))
    ListRestoreJobsInput.add_member(:by_parent_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ByParentJobId", traits: {"smithy.api#httpQuery" => "parentJobId"}))
    ListRestoreJobsInput.type = Types::ListRestoreJobsInput
    ListRestoreJobsOutput.add_member(:restore_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreJobsList, name: "RestoreJobs"))
    ListRestoreJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListRestoreJobsOutput.type = Types::ListRestoreJobsOutput
    ListRestoreTestingPlansInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListRestoreTestingPlansInputMaxResultsInteger, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListRestoreTestingPlansInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListRestoreTestingPlansInput.type = Types::ListRestoreTestingPlansInput
    ListRestoreTestingPlansOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListRestoreTestingPlansOutput.add_member(:restore_testing_plans, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreTestingPlans, name: "RestoreTestingPlans", traits: {"smithy.api#required" => {}}))
    ListRestoreTestingPlansOutput.type = Types::ListRestoreTestingPlansOutput
    ListRestoreTestingSelectionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListRestoreTestingSelectionsInputMaxResultsInteger, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListRestoreTestingSelectionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListRestoreTestingSelectionsInput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRestoreTestingSelectionsInput.type = Types::ListRestoreTestingSelectionsInput
    ListRestoreTestingSelectionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListRestoreTestingSelectionsOutput.add_member(:restore_testing_selections, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreTestingSelections, name: "RestoreTestingSelections", traits: {"smithy.api#required" => {}}))
    ListRestoreTestingSelectionsOutput.type = Types::ListRestoreTestingSelectionsOutput
    ListScanJobSummariesInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpQuery" => "AccountId"}))
    ListScanJobSummariesInput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#httpQuery" => "ResourceType"}))
    ListScanJobSummariesInput.add_member(:malware_scanner, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareScanner, name: "MalwareScanner", traits: {"smithy.api#httpQuery" => "MalwareScanner"}))
    ListScanJobSummariesInput.add_member(:scan_result_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanResultStatus, name: "ScanResultStatus", traits: {"smithy.api#httpQuery" => "ScanResultStatus"}))
    ListScanJobSummariesInput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanJobStatus, name: "State", traits: {"smithy.api#httpQuery" => "State"}))
    ListScanJobSummariesInput.add_member(:aggregation_period, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationPeriod, name: "AggregationPeriod", traits: {"smithy.api#httpQuery" => "AggregationPeriod"}))
    ListScanJobSummariesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListScanJobSummariesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListScanJobSummariesInput.type = Types::ListScanJobSummariesInput
    ListScanJobSummariesOutput.add_member(:scan_job_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanJobSummaryList, name: "ScanJobSummaries"))
    ListScanJobSummariesOutput.add_member(:aggregation_period, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AggregationPeriod"))
    ListScanJobSummariesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListScanJobSummariesOutput.type = Types::ListScanJobSummariesOutput
    ListScanJobsInput.add_member(:by_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ByAccountId", traits: {"smithy.api#httpQuery" => "ByAccountId"}))
    ListScanJobsInput.add_member(:by_backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ByBackupVaultName", traits: {"smithy.api#httpQuery" => "ByBackupVaultName"}))
    ListScanJobsInput.add_member(:by_complete_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ByCompleteAfter", traits: {"smithy.api#httpQuery" => "ByCompleteAfter"}))
    ListScanJobsInput.add_member(:by_complete_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ByCompleteBefore", traits: {"smithy.api#httpQuery" => "ByCompleteBefore"}))
    ListScanJobsInput.add_member(:by_malware_scanner, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareScanner, name: "ByMalwareScanner", traits: {"smithy.api#httpQuery" => "ByMalwareScanner"}))
    ListScanJobsInput.add_member(:by_recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ByRecoveryPointArn", traits: {"smithy.api#httpQuery" => "ByRecoveryPointArn"}))
    ListScanJobsInput.add_member(:by_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ByResourceArn", traits: {"smithy.api#httpQuery" => "ByResourceArn"}))
    ListScanJobsInput.add_member(:by_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanResourceType, name: "ByResourceType", traits: {"smithy.api#httpQuery" => "ByResourceType"}))
    ListScanJobsInput.add_member(:by_scan_result_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanResultStatus, name: "ByScanResultStatus", traits: {"smithy.api#httpQuery" => "ByScanResultStatus"}))
    ListScanJobsInput.add_member(:by_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanState, name: "ByState", traits: {"smithy.api#httpQuery" => "ByState"}))
    ListScanJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListScanJobsInputMaxResultsInteger, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListScanJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListScanJobsInput.type = Types::ListScanJobsInput
    ListScanJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListScanJobsOutput.add_member(:scan_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanJobs, name: "ScanJobs", traits: {"smithy.api#required" => {}}))
    ListScanJobsOutput.type = Types::ListScanJobsOutput
    ListTagsInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTagsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTagsInput.type = Types::ListTagsInput
    ListTagsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListTagsOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ListTagsOutput.type = Types::ListTagsOutput
    ListTieringConfigurationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTieringConfigurationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTieringConfigurationsInput.type = Types::ListTieringConfigurationsInput
    ListTieringConfigurationsOutput.add_member(:tiering_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringConfigurationsList, name: "TieringConfigurations"))
    ListTieringConfigurationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListTieringConfigurationsOutput.type = Types::ListTieringConfigurationsOutput
    MalwareScanner.add_member(:guardduty, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GUARDDUTY", traits: {"smithy.api#enumValue" => "GUARDDUTY"}))
    Metadata.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataKey, name: "key"))
    Metadata.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataValue, name: "value"))
    MissingParameterValueException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    MissingParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    MissingParameterValueException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    MissingParameterValueException.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Context"))
    MissingParameterValueException.type = Types::MissingParameterValueException
    MpaRevokeSessionStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    MpaRevokeSessionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    MpaSessionStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    MpaSessionStatus.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVED", traits: {"smithy.api#enumValue" => "APPROVED"}))
    MpaSessionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ProtectedResource.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ResourceArn"))
    ProtectedResource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ProtectedResource.add_member(:last_backup_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastBackupTime"))
    ProtectedResource.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName"))
    ProtectedResource.add_member(:last_backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "LastBackupVaultArn"))
    ProtectedResource.add_member(:last_recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "LastRecoveryPointArn"))
    ProtectedResource.type = Types::ProtectedResource
    ProtectedResourceConditions.add_member(:string_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValueList, name: "StringEquals"))
    ProtectedResourceConditions.add_member(:string_not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValueList, name: "StringNotEquals"))
    ProtectedResourceConditions.type = Types::ProtectedResourceConditions
    ProtectedResourcesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedResource, name: "member"))
    PutBackupVaultAccessPolicyInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutBackupVaultAccessPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMPolicy, name: "Policy"))
    PutBackupVaultAccessPolicyInput.type = Types::PutBackupVaultAccessPolicyInput
    PutBackupVaultLockConfigurationInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutBackupVaultLockConfigurationInput.add_member(:min_retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "MinRetentionDays"))
    PutBackupVaultLockConfigurationInput.add_member(:max_retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "MaxRetentionDays"))
    PutBackupVaultLockConfigurationInput.add_member(:changeable_for_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ChangeableForDays"))
    PutBackupVaultLockConfigurationInput.type = Types::PutBackupVaultLockConfigurationInput
    PutBackupVaultNotificationsInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutBackupVaultNotificationsInput.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "SNSTopicArn", traits: {"smithy.api#required" => {}}))
    PutBackupVaultNotificationsInput.add_member(:backup_vault_events, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultEvents, name: "BackupVaultEvents", traits: {"smithy.api#required" => {}}))
    PutBackupVaultNotificationsInput.type = Types::PutBackupVaultNotificationsInput
    PutRestoreValidationResultInput.add_member(:restore_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreJobId, name: "RestoreJobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutRestoreValidationResultInput.add_member(:validation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreValidationStatus, name: "ValidationStatus", traits: {"smithy.api#required" => {}}))
    PutRestoreValidationResultInput.add_member(:validation_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ValidationStatusMessage"))
    PutRestoreValidationResultInput.type = Types::PutRestoreValidationResultInput
    RecoveryPointByBackupVault.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn"))
    RecoveryPointByBackupVault.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName"))
    RecoveryPointByBackupVault.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupVaultArn"))
    RecoveryPointByBackupVault.add_member(:source_backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "SourceBackupVaultArn"))
    RecoveryPointByBackupVault.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ResourceArn"))
    RecoveryPointByBackupVault.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    RecoveryPointByBackupVault.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointCreator, name: "CreatedBy"))
    RecoveryPointByBackupVault.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "IamRoleArn"))
    RecoveryPointByBackupVault.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointStatus, name: "Status"))
    RecoveryPointByBackupVault.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusMessage"))
    RecoveryPointByBackupVault.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    RecoveryPointByBackupVault.add_member(:initiation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "InitiationDate"))
    RecoveryPointByBackupVault.add_member(:completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CompletionDate"))
    RecoveryPointByBackupVault.add_member(:backup_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "BackupSizeInBytes"))
    RecoveryPointByBackupVault.add_member(:calculated_lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculatedLifecycle, name: "CalculatedLifecycle"))
    RecoveryPointByBackupVault.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: Lifecycle, name: "Lifecycle"))
    RecoveryPointByBackupVault.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "EncryptionKeyArn"))
    RecoveryPointByBackupVault.add_member(:is_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "IsEncrypted", traits: {"smithy.api#default" => false}))
    RecoveryPointByBackupVault.add_member(:last_restore_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastRestoreTime"))
    RecoveryPointByBackupVault.add_member(:parent_recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ParentRecoveryPointArn"))
    RecoveryPointByBackupVault.add_member(:composite_member_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CompositeMemberIdentifier"))
    RecoveryPointByBackupVault.add_member(:is_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "IsParent", traits: {"smithy.api#default" => false}))
    RecoveryPointByBackupVault.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName"))
    RecoveryPointByBackupVault.add_member(:vault_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VaultType, name: "VaultType"))
    RecoveryPointByBackupVault.add_member(:index_status, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexStatus, name: "IndexStatus"))
    RecoveryPointByBackupVault.add_member(:index_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IndexStatusMessage"))
    RecoveryPointByBackupVault.add_member(:encryption_key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyType, name: "EncryptionKeyType"))
    RecoveryPointByBackupVault.add_member(:aggregated_scan_result, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedScanResult, name: "AggregatedScanResult"))
    RecoveryPointByBackupVault.type = Types::RecoveryPointByBackupVault
    RecoveryPointByBackupVaultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointByBackupVault, name: "member"))
    RecoveryPointByResource.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn"))
    RecoveryPointByResource.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    RecoveryPointByResource.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointStatus, name: "Status"))
    RecoveryPointByResource.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusMessage"))
    RecoveryPointByResource.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "EncryptionKeyArn"))
    RecoveryPointByResource.add_member(:backup_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "BackupSizeBytes"))
    RecoveryPointByResource.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName"))
    RecoveryPointByResource.add_member(:is_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "IsParent", traits: {"smithy.api#default" => false}))
    RecoveryPointByResource.add_member(:parent_recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ParentRecoveryPointArn"))
    RecoveryPointByResource.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName"))
    RecoveryPointByResource.add_member(:vault_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VaultType, name: "VaultType"))
    RecoveryPointByResource.add_member(:index_status, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexStatus, name: "IndexStatus"))
    RecoveryPointByResource.add_member(:index_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IndexStatusMessage"))
    RecoveryPointByResource.add_member(:encryption_key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyType, name: "EncryptionKeyType"))
    RecoveryPointByResource.add_member(:aggregated_scan_result, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedScanResult, name: "AggregatedScanResult"))
    RecoveryPointByResource.type = Types::RecoveryPointByResource
    RecoveryPointByResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointByResource, name: "member"))
    RecoveryPointCreator.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanId"))
    RecoveryPointCreator.add_member(:backup_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupPlanArn"))
    RecoveryPointCreator.add_member(:backup_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanName"))
    RecoveryPointCreator.add_member(:backup_plan_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanVersion"))
    RecoveryPointCreator.add_member(:backup_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupRuleId"))
    RecoveryPointCreator.add_member(:backup_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupRuleName"))
    RecoveryPointCreator.add_member(:backup_rule_cron, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupRuleCron"))
    RecoveryPointCreator.add_member(:backup_rule_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupRuleTimezone"))
    RecoveryPointCreator.type = Types::RecoveryPointCreator
    RecoveryPointMember.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn"))
    RecoveryPointMember.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ResourceArn"))
    RecoveryPointMember.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    RecoveryPointMember.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName"))
    RecoveryPointMember.type = Types::RecoveryPointMember
    RecoveryPointSelection.add_member(:vault_names, ::Smithy::Schema::Shapes::MemberShape.new(target: VaultNames, name: "VaultNames"))
    RecoveryPointSelection.add_member(:resource_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifiers, name: "ResourceIdentifiers"))
    RecoveryPointSelection.add_member(:date_range, ::Smithy::Schema::Shapes::MemberShape.new(target: DateRange, name: "DateRange"))
    RecoveryPointSelection.type = Types::RecoveryPointSelection
    RecoveryPointStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    RecoveryPointStatus.add_member(:partial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIAL", traits: {"smithy.api#enumValue" => "PARTIAL"}))
    RecoveryPointStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    RecoveryPointStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    RecoveryPointStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    RecoveryPointStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    RecoveryPointStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    RecoveryPointsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointMember, name: "member"))
    ReportDeliveryChannel.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3BucketName", traits: {"smithy.api#required" => {}}))
    ReportDeliveryChannel.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3KeyPrefix"))
    ReportDeliveryChannel.add_member(:formats, ::Smithy::Schema::Shapes::MemberShape.new(target: FormatList, name: "Formats"))
    ReportDeliveryChannel.type = Types::ReportDeliveryChannel
    ReportDestination.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3BucketName"))
    ReportDestination.add_member(:s3_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "S3Keys"))
    ReportDestination.type = Types::ReportDestination
    ReportJob.add_member(:report_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportJobId, name: "ReportJobId"))
    ReportJob.add_member(:report_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ReportPlanArn"))
    ReportJob.add_member(:report_template, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReportTemplate"))
    ReportJob.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    ReportJob.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CompletionTime"))
    ReportJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    ReportJob.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusMessage"))
    ReportJob.add_member(:report_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestination, name: "ReportDestination"))
    ReportJob.type = Types::ReportJob
    ReportJobList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportJob, name: "member"))
    ReportPlan.add_member(:report_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ReportPlanArn"))
    ReportPlan.add_member(:report_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportPlanName, name: "ReportPlanName"))
    ReportPlan.add_member(:report_plan_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportPlanDescription, name: "ReportPlanDescription"))
    ReportPlan.add_member(:report_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportSetting, name: "ReportSetting"))
    ReportPlan.add_member(:report_delivery_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDeliveryChannel, name: "ReportDeliveryChannel"))
    ReportPlan.add_member(:deployment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeploymentStatus"))
    ReportPlan.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    ReportPlan.add_member(:last_attempted_execution_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastAttemptedExecutionTime"))
    ReportPlan.add_member(:last_successful_execution_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastSuccessfulExecutionTime"))
    ReportPlan.type = Types::ReportPlan
    ReportPlanList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportPlan, name: "member"))
    ReportSetting.add_member(:report_template, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReportTemplate", traits: {"smithy.api#required" => {}}))
    ReportSetting.add_member(:framework_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "FrameworkArns"))
    ReportSetting.add_member(:number_of_frameworks, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfFrameworks", traits: {"smithy.api#default" => 0}))
    ReportSetting.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Accounts"))
    ReportSetting.add_member(:organization_units, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "OrganizationUnits"))
    ReportSetting.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Regions"))
    ReportSetting.type = Types::ReportSetting
    ResourceArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "member"))
    ResourceIdentifiers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ResourceNotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceNotFoundException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    ResourceNotFoundException.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Context"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceSelection.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArns, name: "Resources", traits: {"smithy.api#required" => {}}))
    ResourceSelection.add_member(:tiering_down_settings_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringDownSettingsInDays, name: "TieringDownSettingsInDays", traits: {"smithy.api#required" => {}}))
    ResourceSelection.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ResourceSelection.type = Types::ResourceSelection
    ResourceSelections.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSelection, name: "member"))
    ResourceTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "member"))
    ResourceTypeManagementPreference.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "key"))
    ResourceTypeManagementPreference.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: IsEnabled, name: "value"))
    ResourceTypeOptInPreference.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "key"))
    ResourceTypeOptInPreference.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: IsEnabled, name: "value"))
    ResourceTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "member"))
    RestoreAccessBackupVaultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreAccessBackupVaultListMember, name: "member"))
    RestoreAccessBackupVaultListMember.add_member(:restore_access_backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RestoreAccessBackupVaultArn"))
    RestoreAccessBackupVaultListMember.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    RestoreAccessBackupVaultListMember.add_member(:approval_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ApprovalDate"))
    RestoreAccessBackupVaultListMember.add_member(:vault_state, ::Smithy::Schema::Shapes::MemberShape.new(target: VaultState, name: "VaultState"))
    RestoreAccessBackupVaultListMember.add_member(:latest_revoke_request, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestRevokeRequest, name: "LatestRevokeRequest"))
    RestoreAccessBackupVaultListMember.type = Types::RestoreAccessBackupVaultListMember
    RestoreDeletionStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    RestoreDeletionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RestoreDeletionStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESSFUL", traits: {"smithy.api#enumValue" => "SUCCESSFUL"}))
    RestoreJobCreator.add_member(:restore_testing_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RestoreTestingPlanArn"))
    RestoreJobCreator.type = Types::RestoreJobCreator
    RestoreJobState.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    RestoreJobState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    RestoreJobState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    RestoreJobState.add_member(:aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABORTED", traits: {"smithy.api#enumValue" => "ABORTED"}))
    RestoreJobState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    RestoreJobState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RestoreJobState.add_member(:aggregate_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGGREGATE_ALL", traits: {"smithy.api#enumValue" => "AGGREGATE_ALL"}))
    RestoreJobState.add_member(:any, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANY", traits: {"smithy.api#enumValue" => "ANY"}))
    RestoreJobStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    RestoreJobStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    RestoreJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    RestoreJobStatus.add_member(:aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABORTED", traits: {"smithy.api#enumValue" => "ABORTED"}))
    RestoreJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RestoreJobSummary.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "Region"))
    RestoreJobSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    RestoreJobSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreJobState, name: "State"))
    RestoreJobSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    RestoreJobSummary.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Count", traits: {"smithy.api#default" => 0}))
    RestoreJobSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime"))
    RestoreJobSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    RestoreJobSummary.type = Types::RestoreJobSummary
    RestoreJobSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreJobSummary, name: "member"))
    RestoreJobsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreJobsListMember, name: "member"))
    RestoreJobsListMember.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    RestoreJobsListMember.add_member(:restore_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RestoreJobId"))
    RestoreJobsListMember.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn"))
    RestoreJobsListMember.add_member(:source_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "SourceResourceArn"))
    RestoreJobsListMember.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupVaultArn"))
    RestoreJobsListMember.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    RestoreJobsListMember.add_member(:completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CompletionDate"))
    RestoreJobsListMember.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreJobStatus, name: "Status"))
    RestoreJobsListMember.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusMessage"))
    RestoreJobsListMember.add_member(:percent_done, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PercentDone"))
    RestoreJobsListMember.add_member(:backup_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "BackupSizeInBytes"))
    RestoreJobsListMember.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "IamRoleArn"))
    RestoreJobsListMember.add_member(:expected_completion_time_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ExpectedCompletionTimeMinutes"))
    RestoreJobsListMember.add_member(:created_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "CreatedResourceArn"))
    RestoreJobsListMember.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    RestoreJobsListMember.add_member(:recovery_point_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "RecoveryPointCreationDate"))
    RestoreJobsListMember.add_member(:is_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "IsParent", traits: {"smithy.api#default" => false}))
    RestoreJobsListMember.add_member(:parent_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParentJobId"))
    RestoreJobsListMember.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreJobCreator, name: "CreatedBy"))
    RestoreJobsListMember.add_member(:validation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreValidationStatus, name: "ValidationStatus"))
    RestoreJobsListMember.add_member(:validation_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ValidationStatusMessage"))
    RestoreJobsListMember.add_member(:deletion_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreDeletionStatus, name: "DeletionStatus"))
    RestoreJobsListMember.add_member(:deletion_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeletionStatusMessage"))
    RestoreJobsListMember.type = Types::RestoreJobsListMember
    RestoreTestingPlanForCreate.add_member(:recovery_point_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreTestingRecoveryPointSelection, name: "RecoveryPointSelection", traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForCreate.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanName", traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForCreate.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScheduleExpression", traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForCreate.add_member(:schedule_expression_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScheduleExpressionTimezone"))
    RestoreTestingPlanForCreate.add_member(:start_window_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "StartWindowHours", traits: {"smithy.api#default" => 0}))
    RestoreTestingPlanForCreate.type = Types::RestoreTestingPlanForCreate
    RestoreTestingPlanForGet.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForGet.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CreatorRequestId"))
    RestoreTestingPlanForGet.add_member(:last_execution_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastExecutionTime"))
    RestoreTestingPlanForGet.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdateTime"))
    RestoreTestingPlanForGet.add_member(:recovery_point_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreTestingRecoveryPointSelection, name: "RecoveryPointSelection", traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForGet.add_member(:restore_testing_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanArn", traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForGet.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanName", traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForGet.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScheduleExpression", traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForGet.add_member(:schedule_expression_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScheduleExpressionTimezone"))
    RestoreTestingPlanForGet.add_member(:start_window_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "StartWindowHours", traits: {"smithy.api#default" => 0}))
    RestoreTestingPlanForGet.type = Types::RestoreTestingPlanForGet
    RestoreTestingPlanForList.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForList.add_member(:last_execution_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastExecutionTime"))
    RestoreTestingPlanForList.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdateTime"))
    RestoreTestingPlanForList.add_member(:restore_testing_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanArn", traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForList.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanName", traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForList.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScheduleExpression", traits: {"smithy.api#required" => {}}))
    RestoreTestingPlanForList.add_member(:schedule_expression_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScheduleExpressionTimezone"))
    RestoreTestingPlanForList.add_member(:start_window_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "StartWindowHours", traits: {"smithy.api#default" => 0}))
    RestoreTestingPlanForList.type = Types::RestoreTestingPlanForList
    RestoreTestingPlanForUpdate.add_member(:recovery_point_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreTestingRecoveryPointSelection, name: "RecoveryPointSelection"))
    RestoreTestingPlanForUpdate.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScheduleExpression"))
    RestoreTestingPlanForUpdate.add_member(:schedule_expression_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScheduleExpressionTimezone"))
    RestoreTestingPlanForUpdate.add_member(:start_window_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "StartWindowHours", traits: {"smithy.api#default" => 0}))
    RestoreTestingPlanForUpdate.type = Types::RestoreTestingPlanForUpdate
    RestoreTestingPlans.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreTestingPlanForList, name: "member"))
    RestoreTestingRecoveryPointSelection.add_member(:algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreTestingRecoveryPointSelectionAlgorithm, name: "Algorithm"))
    RestoreTestingRecoveryPointSelection.add_member(:exclude_vaults, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ExcludeVaults"))
    RestoreTestingRecoveryPointSelection.add_member(:include_vaults, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "IncludeVaults"))
    RestoreTestingRecoveryPointSelection.add_member(:recovery_point_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreTestingRecoveryPointTypeList, name: "RecoveryPointTypes"))
    RestoreTestingRecoveryPointSelection.add_member(:selection_window_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "SelectionWindowDays", traits: {"smithy.api#default" => 0}))
    RestoreTestingRecoveryPointSelection.type = Types::RestoreTestingRecoveryPointSelection
    RestoreTestingRecoveryPointSelectionAlgorithm.add_member(:latest_within_window, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LATEST_WITHIN_WINDOW", traits: {"smithy.api#enumValue" => "LATEST_WITHIN_WINDOW"}))
    RestoreTestingRecoveryPointSelectionAlgorithm.add_member(:random_within_window, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RANDOM_WITHIN_WINDOW", traits: {"smithy.api#enumValue" => "RANDOM_WITHIN_WINDOW"}))
    RestoreTestingRecoveryPointType.add_member(:continuous, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUOUS", traits: {"smithy.api#enumValue" => "CONTINUOUS"}))
    RestoreTestingRecoveryPointType.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNAPSHOT", traits: {"smithy.api#enumValue" => "SNAPSHOT"}))
    RestoreTestingRecoveryPointTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreTestingRecoveryPointType, name: "member"))
    RestoreTestingSelectionForCreate.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "IamRoleArn", traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForCreate.add_member(:protected_resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ProtectedResourceArns"))
    RestoreTestingSelectionForCreate.add_member(:protected_resource_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedResourceConditions, name: "ProtectedResourceConditions"))
    RestoreTestingSelectionForCreate.add_member(:protected_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ProtectedResourceType", traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForCreate.add_member(:restore_metadata_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringMap, name: "RestoreMetadataOverrides"))
    RestoreTestingSelectionForCreate.add_member(:restore_testing_selection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingSelectionName", traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForCreate.add_member(:validation_window_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ValidationWindowHours", traits: {"smithy.api#default" => 0}))
    RestoreTestingSelectionForCreate.type = Types::RestoreTestingSelectionForCreate
    RestoreTestingSelectionForGet.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForGet.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CreatorRequestId"))
    RestoreTestingSelectionForGet.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "IamRoleArn", traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForGet.add_member(:protected_resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ProtectedResourceArns"))
    RestoreTestingSelectionForGet.add_member(:protected_resource_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedResourceConditions, name: "ProtectedResourceConditions"))
    RestoreTestingSelectionForGet.add_member(:protected_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ProtectedResourceType", traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForGet.add_member(:restore_metadata_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringMap, name: "RestoreMetadataOverrides"))
    RestoreTestingSelectionForGet.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanName", traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForGet.add_member(:restore_testing_selection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingSelectionName", traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForGet.add_member(:validation_window_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ValidationWindowHours", traits: {"smithy.api#default" => 0}))
    RestoreTestingSelectionForGet.type = Types::RestoreTestingSelectionForGet
    RestoreTestingSelectionForList.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForList.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "IamRoleArn", traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForList.add_member(:protected_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ProtectedResourceType", traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForList.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanName", traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForList.add_member(:restore_testing_selection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingSelectionName", traits: {"smithy.api#required" => {}}))
    RestoreTestingSelectionForList.add_member(:validation_window_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ValidationWindowHours", traits: {"smithy.api#default" => 0}))
    RestoreTestingSelectionForList.type = Types::RestoreTestingSelectionForList
    RestoreTestingSelectionForUpdate.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "IamRoleArn"))
    RestoreTestingSelectionForUpdate.add_member(:protected_resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ProtectedResourceArns"))
    RestoreTestingSelectionForUpdate.add_member(:protected_resource_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedResourceConditions, name: "ProtectedResourceConditions"))
    RestoreTestingSelectionForUpdate.add_member(:restore_metadata_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringMap, name: "RestoreMetadataOverrides"))
    RestoreTestingSelectionForUpdate.add_member(:validation_window_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ValidationWindowHours", traits: {"smithy.api#default" => 0}))
    RestoreTestingSelectionForUpdate.type = Types::RestoreTestingSelectionForUpdate
    RestoreTestingSelections.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreTestingSelectionForList, name: "member"))
    RestoreValidationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RestoreValidationStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESSFUL", traits: {"smithy.api#enumValue" => "SUCCESSFUL"}))
    RestoreValidationStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    RestoreValidationStatus.add_member(:validating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATING", traits: {"smithy.api#enumValue" => "VALIDATING"}))
    RevokeRestoreAccessBackupVaultInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RevokeRestoreAccessBackupVaultInput.add_member(:restore_access_backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RestoreAccessBackupVaultArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RevokeRestoreAccessBackupVaultInput.add_member(:requester_comment, ::Smithy::Schema::Shapes::MemberShape.new(target: RequesterComment, name: "RequesterComment", traits: {"smithy.api#httpQuery" => "requesterComment"}))
    RevokeRestoreAccessBackupVaultInput.type = Types::RevokeRestoreAccessBackupVaultInput
    RuleExecutionType.add_member(:continuous, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUOUS", traits: {"smithy.api#enumValue" => "CONTINUOUS"}))
    RuleExecutionType.add_member(:snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNAPSHOTS", traits: {"smithy.api#enumValue" => "SNAPSHOTS"}))
    RuleExecutionType.add_member(:continuous_and_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUOUS_AND_SNAPSHOTS", traits: {"smithy.api#enumValue" => "CONTINUOUS_AND_SNAPSHOTS"}))
    ScanAction.add_member(:malware_scanner, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareScanner, name: "MalwareScanner"))
    ScanAction.add_member(:scan_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanMode, name: "ScanMode"))
    ScanAction.type = Types::ScanAction
    ScanActions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanAction, name: "member"))
    ScanFinding.add_member(:malware, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MALWARE", traits: {"smithy.api#enumValue" => "MALWARE"}))
    ScanFindings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanFinding, name: "member"))
    ScanJob.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AccountId", traits: {"smithy.api#required" => {}}))
    ScanJob.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BackupVaultArn", traits: {"smithy.api#required" => {}}))
    ScanJob.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BackupVaultName", traits: {"smithy.api#required" => {}}))
    ScanJob.add_member(:completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CompletionDate"))
    ScanJob.add_member(:continuous_scan_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ContinuousScanEndTime"))
    ScanJob.add_member(:continuous_scan_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ContinuousScanStartTime"))
    ScanJob.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanJobCreator, name: "CreatedBy", traits: {"smithy.api#required" => {}}))
    ScanJob.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreationDate", traits: {"smithy.api#required" => {}}))
    ScanJob.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "IamRoleArn", traits: {"smithy.api#required" => {}}))
    ScanJob.add_member(:malware_scanner, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareScanner, name: "MalwareScanner", traits: {"smithy.api#required" => {}}))
    ScanJob.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RecoveryPointArn", traits: {"smithy.api#required" => {}}))
    ScanJob.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ScanJob.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceName", traits: {"smithy.api#required" => {}}))
    ScanJob.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ScanJob.add_member(:scan_base_recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScanBaseRecoveryPointArn"))
    ScanJob.add_member(:scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScanId"))
    ScanJob.add_member(:scan_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScanJobId", traits: {"smithy.api#required" => {}}))
    ScanJob.add_member(:scan_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanMode, name: "ScanMode", traits: {"smithy.api#required" => {}}))
    ScanJob.add_member(:scan_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanResultInfo, name: "ScanResult"))
    ScanJob.add_member(:scanner_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScannerRoleArn", traits: {"smithy.api#required" => {}}))
    ScanJob.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanState, name: "State"))
    ScanJob.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StatusMessage"))
    ScanJob.type = Types::ScanJob
    ScanJobCreator.add_member(:backup_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BackupPlanArn", traits: {"smithy.api#required" => {}}))
    ScanJobCreator.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BackupPlanId", traits: {"smithy.api#required" => {}}))
    ScanJobCreator.add_member(:backup_plan_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BackupPlanVersion", traits: {"smithy.api#required" => {}}))
    ScanJobCreator.add_member(:backup_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BackupRuleId", traits: {"smithy.api#required" => {}}))
    ScanJobCreator.type = Types::ScanJobCreator
    ScanJobState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ScanJobState.add_member(:completed_with_issues, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED_WITH_ISSUES", traits: {"smithy.api#enumValue" => "COMPLETED_WITH_ISSUES"}))
    ScanJobState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ScanJobState.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    ScanJobStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    ScanJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ScanJobStatus.add_member(:completed_with_issues, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED_WITH_ISSUES", traits: {"smithy.api#enumValue" => "COMPLETED_WITH_ISSUES"}))
    ScanJobStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ScanJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ScanJobStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    ScanJobStatus.add_member(:aggregate_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGGREGATE_ALL", traits: {"smithy.api#enumValue" => "AGGREGATE_ALL"}))
    ScanJobStatus.add_member(:any, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANY", traits: {"smithy.api#enumValue" => "ANY"}))
    ScanJobSummary.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "Region"))
    ScanJobSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    ScanJobSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanJobStatus, name: "State"))
    ScanJobSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ScanJobSummary.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Count", traits: {"smithy.api#default" => 0}))
    ScanJobSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime"))
    ScanJobSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    ScanJobSummary.add_member(:malware_scanner, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareScanner, name: "MalwareScanner"))
    ScanJobSummary.add_member(:scan_result_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanResultStatus, name: "ScanResultStatus"))
    ScanJobSummary.type = Types::ScanJobSummary
    ScanJobSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanJobSummary, name: "member"))
    ScanJobs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanJob, name: "member"))
    ScanMode.add_member(:full_scan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL_SCAN", traits: {"smithy.api#enumValue" => "FULL_SCAN"}))
    ScanMode.add_member(:incremental_scan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCREMENTAL_SCAN", traits: {"smithy.api#enumValue" => "INCREMENTAL_SCAN"}))
    ScanResourceType.add_member(:ebs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS", traits: {"smithy.api#enumValue" => "EBS"}))
    ScanResourceType.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2", traits: {"smithy.api#enumValue" => "EC2"}))
    ScanResourceType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    ScanResult.add_member(:malware_scanner, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareScanner, name: "MalwareScanner"))
    ScanResult.add_member(:scan_job_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanJobState, name: "ScanJobState"))
    ScanResult.add_member(:last_scan_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastScanTimestamp"))
    ScanResult.add_member(:findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanFindings, name: "Findings"))
    ScanResult.type = Types::ScanResult
    ScanResultInfo.add_member(:scan_result_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanResultStatus, name: "ScanResultStatus", traits: {"smithy.api#required" => {}}))
    ScanResultInfo.type = Types::ScanResultInfo
    ScanResultStatus.add_member(:no_threats_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_THREATS_FOUND", traits: {"smithy.api#enumValue" => "NO_THREATS_FOUND"}))
    ScanResultStatus.add_member(:threats_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THREATS_FOUND", traits: {"smithy.api#enumValue" => "THREATS_FOUND"}))
    ScanResultStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    ScanResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanResult, name: "member"))
    ScanSetting.add_member(:malware_scanner, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareScanner, name: "MalwareScanner"))
    ScanSetting.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypes, name: "ResourceTypes"))
    ScanSetting.add_member(:scanner_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "ScannerRoleArn"))
    ScanSetting.type = Types::ScanSetting
    ScanSettings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanSetting, name: "member"))
    ScanState.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    ScanState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ScanState.add_member(:completed_with_issues, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED_WITH_ISSUES", traits: {"smithy.api#enumValue" => "COMPLETED_WITH_ISSUES"}))
    ScanState.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    ScanState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ScanState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ScheduledPlanExecutionMember.add_member(:execution_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExecutionTime"))
    ScheduledPlanExecutionMember.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RuleId"))
    ScheduledPlanExecutionMember.add_member(:rule_execution_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleExecutionType, name: "RuleExecutionType"))
    ScheduledPlanExecutionMember.type = Types::ScheduledPlanExecutionMember
    ScheduledRunsPreview.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledPlanExecutionMember, name: "member"))
    SensitiveStringMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    SensitiveStringMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    ServiceUnavailableException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ServiceUnavailableException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    ServiceUnavailableException.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Context"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartBackupJobInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#required" => {}}))
    StartBackupJobInput.add_member(:logically_air_gapped_backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "LogicallyAirGappedBackupVaultArn"))
    StartBackupJobInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    StartBackupJobInput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "IamRoleArn", traits: {"smithy.api#required" => {}}))
    StartBackupJobInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartBackupJobInput.add_member(:start_window_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: WindowMinutes, name: "StartWindowMinutes"))
    StartBackupJobInput.add_member(:complete_window_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: WindowMinutes, name: "CompleteWindowMinutes"))
    StartBackupJobInput.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: Lifecycle, name: "Lifecycle"))
    StartBackupJobInput.add_member(:recovery_point_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "RecoveryPointTags"))
    StartBackupJobInput.add_member(:backup_options, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupOptions, name: "BackupOptions"))
    StartBackupJobInput.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: Index, name: "Index"))
    StartBackupJobInput.type = Types::StartBackupJobInput
    StartBackupJobOutput.add_member(:backup_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupJobId"))
    StartBackupJobOutput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn"))
    StartBackupJobOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    StartBackupJobOutput.add_member(:is_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "IsParent", traits: {"smithy.api#default" => false}))
    StartBackupJobOutput.type = Types::StartBackupJobOutput
    StartCopyJobInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn", traits: {"smithy.api#required" => {}}))
    StartCopyJobInput.add_member(:source_backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "SourceBackupVaultName", traits: {"smithy.api#required" => {}}))
    StartCopyJobInput.add_member(:destination_backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "DestinationBackupVaultArn", traits: {"smithy.api#required" => {}}))
    StartCopyJobInput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "IamRoleArn", traits: {"smithy.api#required" => {}}))
    StartCopyJobInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartCopyJobInput.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: Lifecycle, name: "Lifecycle"))
    StartCopyJobInput.type = Types::StartCopyJobInput
    StartCopyJobOutput.add_member(:copy_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CopyJobId"))
    StartCopyJobOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    StartCopyJobOutput.add_member(:is_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "IsParent", traits: {"smithy.api#default" => false}))
    StartCopyJobOutput.type = Types::StartCopyJobOutput
    StartReportJobInput.add_member(:report_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportPlanName, name: "ReportPlanName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartReportJobInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartReportJobInput.type = Types::StartReportJobInput
    StartReportJobOutput.add_member(:report_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportJobId, name: "ReportJobId"))
    StartReportJobOutput.type = Types::StartReportJobOutput
    StartRestoreJobInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn", traits: {"smithy.api#required" => {}}))
    StartRestoreJobInput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata", traits: {"smithy.api#required" => {}}))
    StartRestoreJobInput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "IamRoleArn"))
    StartRestoreJobInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartRestoreJobInput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    StartRestoreJobInput.add_member(:copy_source_tags_to_restored_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "CopySourceTagsToRestoredResource", traits: {"smithy.api#default" => false}))
    StartRestoreJobInput.type = Types::StartRestoreJobInput
    StartRestoreJobOutput.add_member(:restore_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreJobId, name: "RestoreJobId"))
    StartRestoreJobOutput.type = Types::StartRestoreJobOutput
    StartScanJobInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BackupVaultName", traits: {"smithy.api#required" => {}}))
    StartScanJobInput.add_member(:continuous_scan_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ContinuousScanEndTime"))
    StartScanJobInput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "IamRoleArn", traits: {"smithy.api#required" => {}}))
    StartScanJobInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "IdempotencyToken"))
    StartScanJobInput.add_member(:malware_scanner, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareScanner, name: "MalwareScanner", traits: {"smithy.api#required" => {}}))
    StartScanJobInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RecoveryPointArn", traits: {"smithy.api#required" => {}}))
    StartScanJobInput.add_member(:scan_base_recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScanBaseRecoveryPointArn"))
    StartScanJobInput.add_member(:scan_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanMode, name: "ScanMode", traits: {"smithy.api#required" => {}}))
    StartScanJobInput.add_member(:scanner_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScannerRoleArn", traits: {"smithy.api#required" => {}}))
    StartScanJobInput.type = Types::StartScanJobInput
    StartScanJobOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreationDate", traits: {"smithy.api#required" => {}}))
    StartScanJobOutput.add_member(:scan_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScanJobId", traits: {"smithy.api#required" => {}}))
    StartScanJobOutput.type = Types::StartScanJobOutput
    StopBackupJobInput.add_member(:backup_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupJobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopBackupJobInput.type = Types::StopBackupJobInput
    StorageClass.add_member(:warm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARM", traits: {"smithy.api#enumValue" => "WARM"}))
    StorageClass.add_member(:cold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COLD", traits: {"smithy.api#enumValue" => "COLD"}))
    StorageClass.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapKeyString, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapValueString, name: "value"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TieringConfiguration.add_member(:tiering_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringConfigurationName, name: "TieringConfigurationName", traits: {"smithy.api#required" => {}}))
    TieringConfiguration.add_member(:tiering_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "TieringConfigurationArn"))
    TieringConfiguration.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultNameOrWildcard, name: "BackupVaultName", traits: {"smithy.api#required" => {}}))
    TieringConfiguration.add_member(:resource_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSelections, name: "ResourceSelection", traits: {"smithy.api#required" => {}}))
    TieringConfiguration.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId"))
    TieringConfiguration.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    TieringConfiguration.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    TieringConfiguration.type = Types::TieringConfiguration
    TieringConfigurationInputForCreate.add_member(:tiering_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringConfigurationName, name: "TieringConfigurationName", traits: {"smithy.api#required" => {}}))
    TieringConfigurationInputForCreate.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultNameOrWildcard, name: "BackupVaultName", traits: {"smithy.api#required" => {}}))
    TieringConfigurationInputForCreate.add_member(:resource_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSelections, name: "ResourceSelection", traits: {"smithy.api#required" => {}}))
    TieringConfigurationInputForCreate.type = Types::TieringConfigurationInputForCreate
    TieringConfigurationInputForUpdate.add_member(:resource_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSelections, name: "ResourceSelection", traits: {"smithy.api#required" => {}}))
    TieringConfigurationInputForUpdate.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultNameOrWildcard, name: "BackupVaultName", traits: {"smithy.api#required" => {}}))
    TieringConfigurationInputForUpdate.type = Types::TieringConfigurationInputForUpdate
    TieringConfigurationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringConfigurationsListMember, name: "member"))
    TieringConfigurationsListMember.add_member(:tiering_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "TieringConfigurationArn"))
    TieringConfigurationsListMember.add_member(:tiering_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringConfigurationName, name: "TieringConfigurationName"))
    TieringConfigurationsListMember.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultNameOrWildcard, name: "BackupVaultName"))
    TieringConfigurationsListMember.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    TieringConfigurationsListMember.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    TieringConfigurationsListMember.type = Types::TieringConfigurationsListMember
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_key_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeyList", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateBackupPlanInput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBackupPlanInput.add_member(:backup_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupPlanInput, name: "BackupPlan", traits: {"smithy.api#required" => {}}))
    UpdateBackupPlanInput.type = Types::UpdateBackupPlanInput
    UpdateBackupPlanOutput.add_member(:backup_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupPlanId"))
    UpdateBackupPlanOutput.add_member(:backup_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupPlanArn"))
    UpdateBackupPlanOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    UpdateBackupPlanOutput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VersionId"))
    UpdateBackupPlanOutput.add_member(:advanced_backup_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedBackupSettings, name: "AdvancedBackupSettings"))
    UpdateBackupPlanOutput.add_member(:scan_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanSettings, name: "ScanSettings"))
    UpdateBackupPlanOutput.type = Types::UpdateBackupPlanOutput
    UpdateFrameworkInput.add_member(:framework_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameworkName, name: "FrameworkName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFrameworkInput.add_member(:framework_description, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameworkDescription, name: "FrameworkDescription"))
    UpdateFrameworkInput.add_member(:framework_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameworkControls, name: "FrameworkControls"))
    UpdateFrameworkInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateFrameworkInput.type = Types::UpdateFrameworkInput
    UpdateFrameworkOutput.add_member(:framework_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameworkName, name: "FrameworkName"))
    UpdateFrameworkOutput.add_member(:framework_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "FrameworkArn"))
    UpdateFrameworkOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    UpdateFrameworkOutput.type = Types::UpdateFrameworkOutput
    UpdateGlobalSettingsInput.add_member(:global_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalSettings, name: "GlobalSettings"))
    UpdateGlobalSettingsInput.type = Types::UpdateGlobalSettingsInput
    UpdateRecoveryPointIndexSettingsInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecoveryPointIndexSettingsInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecoveryPointIndexSettingsInput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "IamRoleArn"))
    UpdateRecoveryPointIndexSettingsInput.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: Index, name: "Index", traits: {"smithy.api#required" => {}}))
    UpdateRecoveryPointIndexSettingsInput.type = Types::UpdateRecoveryPointIndexSettingsInput
    UpdateRecoveryPointIndexSettingsOutput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName"))
    UpdateRecoveryPointIndexSettingsOutput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn"))
    UpdateRecoveryPointIndexSettingsOutput.add_member(:index_status, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexStatus, name: "IndexStatus"))
    UpdateRecoveryPointIndexSettingsOutput.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: Index, name: "Index"))
    UpdateRecoveryPointIndexSettingsOutput.type = Types::UpdateRecoveryPointIndexSettingsOutput
    UpdateRecoveryPointLifecycleInput.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupVaultName, name: "BackupVaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecoveryPointLifecycleInput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecoveryPointLifecycleInput.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: Lifecycle, name: "Lifecycle"))
    UpdateRecoveryPointLifecycleInput.type = Types::UpdateRecoveryPointLifecycleInput
    UpdateRecoveryPointLifecycleOutput.add_member(:backup_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "BackupVaultArn"))
    UpdateRecoveryPointLifecycleOutput.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "RecoveryPointArn"))
    UpdateRecoveryPointLifecycleOutput.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: Lifecycle, name: "Lifecycle"))
    UpdateRecoveryPointLifecycleOutput.add_member(:calculated_lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculatedLifecycle, name: "CalculatedLifecycle"))
    UpdateRecoveryPointLifecycleOutput.type = Types::UpdateRecoveryPointLifecycleOutput
    UpdateRegionSettingsInput.add_member(:resource_type_opt_in_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeOptInPreference, name: "ResourceTypeOptInPreference"))
    UpdateRegionSettingsInput.add_member(:resource_type_management_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeManagementPreference, name: "ResourceTypeManagementPreference"))
    UpdateRegionSettingsInput.type = Types::UpdateRegionSettingsInput
    UpdateReportPlanInput.add_member(:report_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportPlanName, name: "ReportPlanName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReportPlanInput.add_member(:report_plan_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportPlanDescription, name: "ReportPlanDescription"))
    UpdateReportPlanInput.add_member(:report_delivery_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDeliveryChannel, name: "ReportDeliveryChannel"))
    UpdateReportPlanInput.add_member(:report_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportSetting, name: "ReportSetting"))
    UpdateReportPlanInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateReportPlanInput.type = Types::UpdateReportPlanInput
    UpdateReportPlanOutput.add_member(:report_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportPlanName, name: "ReportPlanName"))
    UpdateReportPlanOutput.add_member(:report_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ReportPlanArn"))
    UpdateReportPlanOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    UpdateReportPlanOutput.type = Types::UpdateReportPlanOutput
    UpdateRestoreTestingPlanInput.add_member(:restore_testing_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreTestingPlanForUpdate, name: "RestoreTestingPlan", traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingPlanInput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRestoreTestingPlanInput.type = Types::UpdateRestoreTestingPlanInput
    UpdateRestoreTestingPlanOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingPlanOutput.add_member(:restore_testing_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanArn", traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingPlanOutput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanName", traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingPlanOutput.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdateTime", traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingPlanOutput.type = Types::UpdateRestoreTestingPlanOutput
    UpdateRestoreTestingSelectionInput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRestoreTestingSelectionInput.add_member(:restore_testing_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreTestingSelectionForUpdate, name: "RestoreTestingSelection", traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingSelectionInput.add_member(:restore_testing_selection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingSelectionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRestoreTestingSelectionInput.type = Types::UpdateRestoreTestingSelectionInput
    UpdateRestoreTestingSelectionOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingSelectionOutput.add_member(:restore_testing_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanArn", traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingSelectionOutput.add_member(:restore_testing_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingPlanName", traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingSelectionOutput.add_member(:restore_testing_selection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RestoreTestingSelectionName", traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingSelectionOutput.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdateTime", traits: {"smithy.api#required" => {}}))
    UpdateRestoreTestingSelectionOutput.type = Types::UpdateRestoreTestingSelectionOutput
    UpdateTieringConfigurationInput.add_member(:tiering_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringConfigurationName, name: "TieringConfigurationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTieringConfigurationInput.add_member(:tiering_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringConfigurationInputForUpdate, name: "TieringConfiguration", traits: {"smithy.api#required" => {}}))
    UpdateTieringConfigurationInput.type = Types::UpdateTieringConfigurationInput
    UpdateTieringConfigurationOutput.add_member(:tiering_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "TieringConfigurationArn"))
    UpdateTieringConfigurationOutput.add_member(:tiering_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringConfigurationName, name: "TieringConfigurationName"))
    UpdateTieringConfigurationOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    UpdateTieringConfigurationOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    UpdateTieringConfigurationOutput.type = Types::UpdateTieringConfigurationOutput
    VaultNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    VaultState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    VaultState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    VaultState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    VaultType.add_member(:backup_vault, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP_VAULT", traits: {"smithy.api#enumValue" => "BACKUP_VAULT"}))
    VaultType.add_member(:logically_air_gapped_backup_vault, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOGICALLY_AIR_GAPPED_BACKUP_VAULT", traits: {"smithy.api#enumValue" => "LOGICALLY_AIR_GAPPED_BACKUP_VAULT"}))
    VaultType.add_member(:restore_access_backup_vault, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORE_ACCESS_BACKUP_VAULT", traits: {"smithy.api#enumValue" => "RESTORE_ACCESS_BACKUP_VAULT"}))
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    StringMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    StringMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))

    CryoControllerUserManager = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.backup#CryoControllerUserManager"
      service.name = "CryoControllerUserManager"
      service.version = "2018-11-15"
      service.traits = {"aws.api#service" => {"sdkId" => "Backup", "arnNamespace" => "backup", "cloudFormationName" => "Backup", "cloudTrailEventSource" => "backup.amazonaws.com", "endpointPrefix" => "backup"}, "aws.auth#sigv4" => {"name" => "backup"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Backup", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://backup-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://backup-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://backup.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://backup.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:associate_backup_vault_mpa_approval_team, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#AssociateBackupVaultMpaApprovalTeam"
        operation.name = "AssociateBackupVaultMpaApprovalTeam"
        operation.input = AssociateBackupVaultMpaApprovalTeamInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/backup-vaults/{BackupVaultName}/mpaApprovalTeam", "code" => 204}}
      end)
      service.add_operation(:cancel_legal_hold, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CancelLegalHold"
        operation.name = "CancelLegalHold"
        operation.input = CancelLegalHoldInput
        operation.output = CancelLegalHoldOutput
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidResourceStateException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/legal-holds/{LegalHoldId}", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_backup_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateBackupAccessPoint"
        operation.name = "CreateBackupAccessPoint"
        operation.input = CreateBackupAccessPointRequest
        operation.output = CreateBackupAccessPointResponse
        operation.errors << AlreadyExistsException
        operation.errors << ConflictException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/backup-access-point/create", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_backup_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateBackupPlan"
        operation.name = "CreateBackupPlan"
        operation.input = CreateBackupPlanInput
        operation.output = CreateBackupPlanOutput
        operation.errors << AlreadyExistsException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/backup/plans", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_backup_selection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateBackupSelection"
        operation.name = "CreateBackupSelection"
        operation.input = CreateBackupSelectionInput
        operation.output = CreateBackupSelectionOutput
        operation.errors << AlreadyExistsException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/backup/plans/{BackupPlanId}/selections", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_backup_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateBackupVault"
        operation.name = "CreateBackupVault"
        operation.input = CreateBackupVaultInput
        operation.output = CreateBackupVaultOutput
        operation.errors << AlreadyExistsException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/backup-vaults/{BackupVaultName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_framework, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateFramework"
        operation.name = "CreateFramework"
        operation.input = CreateFrameworkInput
        operation.output = CreateFrameworkOutput
        operation.errors << AlreadyExistsException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/audit/frameworks", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_legal_hold, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateLegalHold"
        operation.name = "CreateLegalHold"
        operation.input = CreateLegalHoldInput
        operation.output = CreateLegalHoldOutput
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/legal-holds", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_logically_air_gapped_backup_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateLogicallyAirGappedBackupVault"
        operation.name = "CreateLogicallyAirGappedBackupVault"
        operation.input = CreateLogicallyAirGappedBackupVaultInput
        operation.output = CreateLogicallyAirGappedBackupVaultOutput
        operation.errors << AlreadyExistsException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/logically-air-gapped-backup-vaults/{BackupVaultName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_report_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateReportPlan"
        operation.name = "CreateReportPlan"
        operation.input = CreateReportPlanInput
        operation.output = CreateReportPlanOutput
        operation.errors << AlreadyExistsException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/audit/report-plans", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_restore_access_backup_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateRestoreAccessBackupVault"
        operation.name = "CreateRestoreAccessBackupVault"
        operation.input = CreateRestoreAccessBackupVaultInput
        operation.output = CreateRestoreAccessBackupVaultOutput
        operation.errors << AlreadyExistsException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restore-access-backup-vaults", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_restore_testing_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateRestoreTestingPlan"
        operation.name = "CreateRestoreTestingPlan"
        operation.input = CreateRestoreTestingPlanInput
        operation.output = CreateRestoreTestingPlanOutput
        operation.errors << AlreadyExistsException
        operation.errors << ConflictException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restore-testing/plans", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_restore_testing_selection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateRestoreTestingSelection"
        operation.name = "CreateRestoreTestingSelection"
        operation.input = CreateRestoreTestingSelectionInput
        operation.output = CreateRestoreTestingSelectionOutput
        operation.errors << AlreadyExistsException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restore-testing/plans/{RestoreTestingPlanName}/selections", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_tiering_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#CreateTieringConfiguration"
        operation.name = "CreateTieringConfiguration"
        operation.input = CreateTieringConfigurationInput
        operation.output = CreateTieringConfigurationOutput
        operation.errors << AlreadyExistsException
        operation.errors << ConflictException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/tiering-configurations", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_backup_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteBackupAccessPoint"
        operation.name = "DeleteBackupAccessPoint"
        operation.input = DeleteBackupAccessPointInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/backup-access-point/delete/{AccessPointArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_backup_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteBackupPlan"
        operation.name = "DeleteBackupPlan"
        operation.input = DeleteBackupPlanInput
        operation.output = DeleteBackupPlanOutput
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/backup/plans/{BackupPlanId}", "code" => 200}}
      end)
      service.add_operation(:delete_backup_selection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteBackupSelection"
        operation.name = "DeleteBackupSelection"
        operation.input = DeleteBackupSelectionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/backup/plans/{BackupPlanId}/selections/{SelectionId}", "code" => 200}}
      end)
      service.add_operation(:delete_backup_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteBackupVault"
        operation.name = "DeleteBackupVault"
        operation.input = DeleteBackupVaultInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/backup-vaults/{BackupVaultName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_backup_vault_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteBackupVaultAccessPolicy"
        operation.name = "DeleteBackupVaultAccessPolicy"
        operation.input = DeleteBackupVaultAccessPolicyInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/backup-vaults/{BackupVaultName}/access-policy", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_backup_vault_lock_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteBackupVaultLockConfiguration"
        operation.name = "DeleteBackupVaultLockConfiguration"
        operation.input = DeleteBackupVaultLockConfigurationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/backup-vaults/{BackupVaultName}/vault-lock", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_backup_vault_notifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteBackupVaultNotifications"
        operation.name = "DeleteBackupVaultNotifications"
        operation.input = DeleteBackupVaultNotificationsInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/backup-vaults/{BackupVaultName}/notification-configuration", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_framework, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteFramework"
        operation.name = "DeleteFramework"
        operation.input = DeleteFrameworkInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/audit/frameworks/{FrameworkName}", "code" => 200}}
      end)
      service.add_operation(:delete_recovery_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteRecoveryPoint"
        operation.name = "DeleteRecoveryPoint"
        operation.input = DeleteRecoveryPointInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << InvalidResourceStateException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_report_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteReportPlan"
        operation.name = "DeleteReportPlan"
        operation.input = DeleteReportPlanInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/audit/report-plans/{ReportPlanName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_restore_testing_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteRestoreTestingPlan"
        operation.name = "DeleteRestoreTestingPlan"
        operation.input = DeleteRestoreTestingPlanInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restore-testing/plans/{RestoreTestingPlanName}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_restore_testing_selection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteRestoreTestingSelection"
        operation.name = "DeleteRestoreTestingSelection"
        operation.input = DeleteRestoreTestingSelectionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_tiering_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DeleteTieringConfiguration"
        operation.name = "DeleteTieringConfiguration"
        operation.input = DeleteTieringConfigurationInput
        operation.output = DeleteTieringConfigurationOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tiering-configurations/{TieringConfigurationName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_backup_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeBackupAccessPoint"
        operation.name = "DescribeBackupAccessPoint"
        operation.input = DescribeBackupAccessPointInput
        operation.output = DescribeBackupAccessPointResponse
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-access-point/{AccessPointArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_backup_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeBackupJob"
        operation.name = "DescribeBackupJob"
        operation.input = DescribeBackupJobInput
        operation.output = DescribeBackupJobOutput
        operation.errors << DependencyFailureException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-jobs/{BackupJobId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_backup_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeBackupVault"
        operation.name = "DescribeBackupVault"
        operation.input = DescribeBackupVaultInput
        operation.output = DescribeBackupVaultOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-vaults/{BackupVaultName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_copy_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeCopyJob"
        operation.name = "DescribeCopyJob"
        operation.input = DescribeCopyJobInput
        operation.output = DescribeCopyJobOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/copy-jobs/{CopyJobId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_framework, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeFramework"
        operation.name = "DescribeFramework"
        operation.input = DescribeFrameworkInput
        operation.output = DescribeFrameworkOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/audit/frameworks/{FrameworkName}", "code" => 200}}
      end)
      service.add_operation(:describe_global_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeGlobalSettings"
        operation.name = "DescribeGlobalSettings"
        operation.input = DescribeGlobalSettingsInput
        operation.output = DescribeGlobalSettingsOutput
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-settings", "code" => 200}}
      end)
      service.add_operation(:describe_protected_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeProtectedResource"
        operation.name = "DescribeProtectedResource"
        operation.input = DescribeProtectedResourceInput
        operation.output = DescribeProtectedResourceOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resources/{ResourceArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_recovery_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeRecoveryPoint"
        operation.name = "DescribeRecoveryPoint"
        operation.input = DescribeRecoveryPointInput
        operation.output = DescribeRecoveryPointOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_region_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeRegionSettings"
        operation.name = "DescribeRegionSettings"
        operation.input = DescribeRegionSettingsInput
        operation.output = DescribeRegionSettingsOutput
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/account-settings", "code" => 200}}
      end)
      service.add_operation(:describe_report_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeReportJob"
        operation.name = "DescribeReportJob"
        operation.input = DescribeReportJobInput
        operation.output = DescribeReportJobOutput
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/audit/report-jobs/{ReportJobId}", "code" => 200}}
      end)
      service.add_operation(:describe_report_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeReportPlan"
        operation.name = "DescribeReportPlan"
        operation.input = DescribeReportPlanInput
        operation.output = DescribeReportPlanOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/audit/report-plans/{ReportPlanName}", "code" => 200}}
      end)
      service.add_operation(:describe_restore_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeRestoreJob"
        operation.name = "DescribeRestoreJob"
        operation.input = DescribeRestoreJobInput
        operation.output = DescribeRestoreJobOutput
        operation.errors << DependencyFailureException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restore-jobs/{RestoreJobId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_scan_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DescribeScanJob"
        operation.name = "DescribeScanJob"
        operation.input = DescribeScanJobInput
        operation.output = DescribeScanJobOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/scan/jobs/{ScanJobId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_backup_vault_mpa_approval_team, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DisassociateBackupVaultMpaApprovalTeam"
        operation.name = "DisassociateBackupVaultMpaApprovalTeam"
        operation.input = DisassociateBackupVaultMpaApprovalTeamInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backup-vaults/{BackupVaultName}/mpaApprovalTeam?delete", "code" => 204}}
      end)
      service.add_operation(:disassociate_recovery_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DisassociateRecoveryPoint"
        operation.name = "DisassociateRecoveryPoint"
        operation.input = DisassociateRecoveryPointInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << InvalidResourceStateException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/disassociate", "code" => 200}}
      end)
      service.add_operation(:disassociate_recovery_point_from_parent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#DisassociateRecoveryPointFromParent"
        operation.name = "DisassociateRecoveryPointFromParent"
        operation.input = DisassociateRecoveryPointFromParentInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/parentAssociation", "code" => 204}}
      end)
      service.add_operation(:export_backup_plan_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ExportBackupPlanTemplate"
        operation.name = "ExportBackupPlanTemplate"
        operation.input = ExportBackupPlanTemplateInput
        operation.output = ExportBackupPlanTemplateOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup/plans/{BackupPlanId}/toTemplate", "code" => 200}}
      end)
      service.add_operation(:get_backup_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetBackupPlan"
        operation.name = "GetBackupPlan"
        operation.input = GetBackupPlanInput
        operation.output = GetBackupPlanOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup/plans/{BackupPlanId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_backup_plan_from_json, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetBackupPlanFromJSON"
        operation.name = "GetBackupPlanFromJSON"
        operation.input = GetBackupPlanFromJSONInput
        operation.output = GetBackupPlanFromJSONOutput
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backup/template/json/toPlan", "code" => 200}}
      end)
      service.add_operation(:get_backup_plan_from_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetBackupPlanFromTemplate"
        operation.name = "GetBackupPlanFromTemplate"
        operation.input = GetBackupPlanFromTemplateInput
        operation.output = GetBackupPlanFromTemplateOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup/template/plans/{BackupPlanTemplateId}/toPlan", "code" => 200}}
      end)
      service.add_operation(:get_backup_selection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetBackupSelection"
        operation.name = "GetBackupSelection"
        operation.input = GetBackupSelectionInput
        operation.output = GetBackupSelectionOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup/plans/{BackupPlanId}/selections/{SelectionId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_backup_vault_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetBackupVaultAccessPolicy"
        operation.name = "GetBackupVaultAccessPolicy"
        operation.input = GetBackupVaultAccessPolicyInput
        operation.output = GetBackupVaultAccessPolicyOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-vaults/{BackupVaultName}/access-policy", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_backup_vault_notifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetBackupVaultNotifications"
        operation.name = "GetBackupVaultNotifications"
        operation.input = GetBackupVaultNotificationsInput
        operation.output = GetBackupVaultNotificationsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-vaults/{BackupVaultName}/notification-configuration", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_legal_hold, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetLegalHold"
        operation.name = "GetLegalHold"
        operation.input = GetLegalHoldInput
        operation.output = GetLegalHoldOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/legal-holds/{LegalHoldId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_pitr_malware_scan_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetPITRMalwareScanResults"
        operation.name = "GetPITRMalwareScanResults"
        operation.input = GetPITRMalwareScanResultsInput
        operation.output = GetPITRMalwareScanResultsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/scan/pitr-malware-scan-results", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_recovery_point_index_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetRecoveryPointIndexDetails"
        operation.name = "GetRecoveryPointIndexDetails"
        operation.input = GetRecoveryPointIndexDetailsInput
        operation.output = GetRecoveryPointIndexDetailsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/index", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_recovery_point_restore_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetRecoveryPointRestoreMetadata"
        operation.name = "GetRecoveryPointRestoreMetadata"
        operation.input = GetRecoveryPointRestoreMetadataInput
        operation.output = GetRecoveryPointRestoreMetadataOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/restore-metadata", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_restore_job_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetRestoreJobMetadata"
        operation.name = "GetRestoreJobMetadata"
        operation.input = GetRestoreJobMetadataInput
        operation.output = GetRestoreJobMetadataOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restore-jobs/{RestoreJobId}/metadata", "code" => 200}}
      end)
      service.add_operation(:get_restore_testing_inferred_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetRestoreTestingInferredMetadata"
        operation.name = "GetRestoreTestingInferredMetadata"
        operation.input = GetRestoreTestingInferredMetadataInput
        operation.output = GetRestoreTestingInferredMetadataOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restore-testing/inferred-metadata", "code" => 200}}
      end)
      service.add_operation(:get_restore_testing_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetRestoreTestingPlan"
        operation.name = "GetRestoreTestingPlan"
        operation.input = GetRestoreTestingPlanInput
        operation.output = GetRestoreTestingPlanOutput
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restore-testing/plans/{RestoreTestingPlanName}", "code" => 200}}
      end)
      service.add_operation(:get_restore_testing_selection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetRestoreTestingSelection"
        operation.name = "GetRestoreTestingSelection"
        operation.input = GetRestoreTestingSelectionInput
        operation.output = GetRestoreTestingSelectionOutput
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}", "code" => 200}}
      end)
      service.add_operation(:get_supported_resource_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetSupportedResourceTypes"
        operation.name = "GetSupportedResourceTypes"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetSupportedResourceTypesOutput
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/supported-resource-types", "code" => 200}}
      end)
      service.add_operation(:get_tiering_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#GetTieringConfiguration"
        operation.name = "GetTieringConfiguration"
        operation.input = GetTieringConfigurationInput
        operation.output = GetTieringConfigurationOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tiering-configurations/{TieringConfigurationName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_backup_access_points, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListBackupAccessPoints"
        operation.name = "ListBackupAccessPoints"
        operation.input = ListBackupAccessPointsRequest
        operation.output = ListBackupAccessPointsResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-access-point", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBackupAccessPoints.new
      end)
      service.add_operation(:list_backup_access_points_by_recovery_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListBackupAccessPointsByRecoveryPoint"
        operation.name = "ListBackupAccessPointsByRecoveryPoint"
        operation.input = ListBackupAccessPointsByRecoveryPointRequest
        operation.output = ListBackupAccessPointsByRecoveryPointResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backup-access-point/recovery-point/{RecoveryPointArn}", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBackupAccessPointsByRecoveryPoint.new
      end)
      service.add_operation(:list_backup_access_points_by_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListBackupAccessPointsByResource"
        operation.name = "ListBackupAccessPointsByResource"
        operation.input = ListBackupAccessPointsByResourceRequest
        operation.output = ListBackupAccessPointsByResourceResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backup-access-point/resource/{ResourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBackupAccessPointsByResource.new
      end)
      service.add_operation(:list_backup_job_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListBackupJobSummaries"
        operation.name = "ListBackupJobSummaries"
        operation.input = ListBackupJobSummariesInput
        operation.output = ListBackupJobSummariesOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/audit/backup-job-summaries", "code" => 200}}
        operation[:paginator] = Paginators::ListBackupJobSummaries.new
      end)
      service.add_operation(:list_backup_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListBackupJobs"
        operation.name = "ListBackupJobs"
        operation.input = ListBackupJobsInput
        operation.output = ListBackupJobsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-jobs", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListBackupJobs.new
      end)
      service.add_operation(:list_backup_plan_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListBackupPlanTemplates"
        operation.name = "ListBackupPlanTemplates"
        operation.input = ListBackupPlanTemplatesInput
        operation.output = ListBackupPlanTemplatesOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup/template/plans", "code" => 200}}
        operation[:paginator] = Paginators::ListBackupPlanTemplates.new
      end)
      service.add_operation(:list_backup_plan_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListBackupPlanVersions"
        operation.name = "ListBackupPlanVersions"
        operation.input = ListBackupPlanVersionsInput
        operation.output = ListBackupPlanVersionsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup/plans/{BackupPlanId}/versions", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListBackupPlanVersions.new
      end)
      service.add_operation(:list_backup_plans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListBackupPlans"
        operation.name = "ListBackupPlans"
        operation.input = ListBackupPlansInput
        operation.output = ListBackupPlansOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup/plans", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListBackupPlans.new
      end)
      service.add_operation(:list_backup_selections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListBackupSelections"
        operation.name = "ListBackupSelections"
        operation.input = ListBackupSelectionsInput
        operation.output = ListBackupSelectionsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup/plans/{BackupPlanId}/selections", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListBackupSelections.new
      end)
      service.add_operation(:list_backup_vaults, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListBackupVaults"
        operation.name = "ListBackupVaults"
        operation.input = ListBackupVaultsInput
        operation.output = ListBackupVaultsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-vaults", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListBackupVaults.new
      end)
      service.add_operation(:list_copy_job_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListCopyJobSummaries"
        operation.name = "ListCopyJobSummaries"
        operation.input = ListCopyJobSummariesInput
        operation.output = ListCopyJobSummariesOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/audit/copy-job-summaries", "code" => 200}}
        operation[:paginator] = Paginators::ListCopyJobSummaries.new
      end)
      service.add_operation(:list_copy_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListCopyJobs"
        operation.name = "ListCopyJobs"
        operation.input = ListCopyJobsInput
        operation.output = ListCopyJobsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/copy-jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListCopyJobs.new
      end)
      service.add_operation(:list_frameworks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListFrameworks"
        operation.name = "ListFrameworks"
        operation.input = ListFrameworksInput
        operation.output = ListFrameworksOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/audit/frameworks", "code" => 200}}
        operation[:paginator] = Paginators::ListFrameworks.new
      end)
      service.add_operation(:list_indexed_recovery_points, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListIndexedRecoveryPoints"
        operation.name = "ListIndexedRecoveryPoints"
        operation.input = ListIndexedRecoveryPointsInput
        operation.output = ListIndexedRecoveryPointsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/indexes/recovery-point", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListIndexedRecoveryPoints.new
      end)
      service.add_operation(:list_legal_holds, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListLegalHolds"
        operation.name = "ListLegalHolds"
        operation.input = ListLegalHoldsInput
        operation.output = ListLegalHoldsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/legal-holds", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListLegalHolds.new
      end)
      service.add_operation(:list_protected_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListProtectedResources"
        operation.name = "ListProtectedResources"
        operation.input = ListProtectedResourcesInput
        operation.output = ListProtectedResourcesOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resources", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListProtectedResources.new
      end)
      service.add_operation(:list_protected_resources_by_backup_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListProtectedResourcesByBackupVault"
        operation.name = "ListProtectedResourcesByBackupVault"
        operation.input = ListProtectedResourcesByBackupVaultInput
        operation.output = ListProtectedResourcesByBackupVaultOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-vaults/{BackupVaultName}/resources", "code" => 200}}
        operation[:paginator] = Paginators::ListProtectedResourcesByBackupVault.new
      end)
      service.add_operation(:list_recovery_points_by_backup_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListRecoveryPointsByBackupVault"
        operation.name = "ListRecoveryPointsByBackupVault"
        operation.input = ListRecoveryPointsByBackupVaultInput
        operation.output = ListRecoveryPointsByBackupVaultOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backup-vaults/{BackupVaultName}/recovery-points", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListRecoveryPointsByBackupVault.new
      end)
      service.add_operation(:list_recovery_points_by_legal_hold, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListRecoveryPointsByLegalHold"
        operation.name = "ListRecoveryPointsByLegalHold"
        operation.input = ListRecoveryPointsByLegalHoldInput
        operation.output = ListRecoveryPointsByLegalHoldOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/legal-holds/{LegalHoldId}/recovery-points", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListRecoveryPointsByLegalHold.new
      end)
      service.add_operation(:list_recovery_points_by_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListRecoveryPointsByResource"
        operation.name = "ListRecoveryPointsByResource"
        operation.input = ListRecoveryPointsByResourceInput
        operation.output = ListRecoveryPointsByResourceOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resources/{ResourceArn}/recovery-points", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListRecoveryPointsByResource.new
      end)
      service.add_operation(:list_report_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListReportJobs"
        operation.name = "ListReportJobs"
        operation.input = ListReportJobsInput
        operation.output = ListReportJobsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/audit/report-jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListReportJobs.new
      end)
      service.add_operation(:list_report_plans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListReportPlans"
        operation.name = "ListReportPlans"
        operation.input = ListReportPlansInput
        operation.output = ListReportPlansOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/audit/report-plans", "code" => 200}}
        operation[:paginator] = Paginators::ListReportPlans.new
      end)
      service.add_operation(:list_restore_access_backup_vaults, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListRestoreAccessBackupVaults"
        operation.name = "ListRestoreAccessBackupVaults"
        operation.input = ListRestoreAccessBackupVaultsInput
        operation.output = ListRestoreAccessBackupVaultsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/logically-air-gapped-backup-vaults/{BackupVaultName}/restore-access-backup-vaults", "code" => 200}}
        operation[:paginator] = Paginators::ListRestoreAccessBackupVaults.new
      end)
      service.add_operation(:list_restore_job_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListRestoreJobSummaries"
        operation.name = "ListRestoreJobSummaries"
        operation.input = ListRestoreJobSummariesInput
        operation.output = ListRestoreJobSummariesOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/audit/restore-job-summaries", "code" => 200}}
        operation[:paginator] = Paginators::ListRestoreJobSummaries.new
      end)
      service.add_operation(:list_restore_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListRestoreJobs"
        operation.name = "ListRestoreJobs"
        operation.input = ListRestoreJobsInput
        operation.output = ListRestoreJobsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restore-jobs", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListRestoreJobs.new
      end)
      service.add_operation(:list_restore_jobs_by_protected_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListRestoreJobsByProtectedResource"
        operation.name = "ListRestoreJobsByProtectedResource"
        operation.input = ListRestoreJobsByProtectedResourceInput
        operation.output = ListRestoreJobsByProtectedResourceOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resources/{ResourceArn}/restore-jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListRestoreJobsByProtectedResource.new
      end)
      service.add_operation(:list_restore_testing_plans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListRestoreTestingPlans"
        operation.name = "ListRestoreTestingPlans"
        operation.input = ListRestoreTestingPlansInput
        operation.output = ListRestoreTestingPlansOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restore-testing/plans", "code" => 200}}
        operation[:paginator] = Paginators::ListRestoreTestingPlans.new
      end)
      service.add_operation(:list_restore_testing_selections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListRestoreTestingSelections"
        operation.name = "ListRestoreTestingSelections"
        operation.input = ListRestoreTestingSelectionsInput
        operation.output = ListRestoreTestingSelectionsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restore-testing/plans/{RestoreTestingPlanName}/selections", "code" => 200}}
        operation[:paginator] = Paginators::ListRestoreTestingSelections.new
      end)
      service.add_operation(:list_scan_job_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListScanJobSummaries"
        operation.name = "ListScanJobSummaries"
        operation.input = ListScanJobSummariesInput
        operation.output = ListScanJobSummariesOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/audit/scan-job-summaries", "code" => 200}}
        operation[:paginator] = Paginators::ListScanJobSummaries.new
      end)
      service.add_operation(:list_scan_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListScanJobs"
        operation.name = "ListScanJobs"
        operation.input = ListScanJobsInput
        operation.output = ListScanJobsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/scan/jobs", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListScanJobs.new
      end)
      service.add_operation(:list_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListTags"
        operation.name = "ListTags"
        operation.input = ListTagsInput
        operation.output = ListTagsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListTags.new
      end)
      service.add_operation(:list_tiering_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#ListTieringConfigurations"
        operation.name = "ListTieringConfigurations"
        operation.input = ListTieringConfigurationsInput
        operation.output = ListTieringConfigurationsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tiering-configurations", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListTieringConfigurations.new
      end)
      service.add_operation(:put_backup_vault_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#PutBackupVaultAccessPolicy"
        operation.name = "PutBackupVaultAccessPolicy"
        operation.input = PutBackupVaultAccessPolicyInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/backup-vaults/{BackupVaultName}/access-policy", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_backup_vault_lock_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#PutBackupVaultLockConfiguration"
        operation.name = "PutBackupVaultLockConfiguration"
        operation.input = PutBackupVaultLockConfigurationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/backup-vaults/{BackupVaultName}/vault-lock", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_backup_vault_notifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#PutBackupVaultNotifications"
        operation.name = "PutBackupVaultNotifications"
        operation.input = PutBackupVaultNotificationsInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/backup-vaults/{BackupVaultName}/notification-configuration", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_restore_validation_result, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#PutRestoreValidationResult"
        operation.name = "PutRestoreValidationResult"
        operation.input = PutRestoreValidationResultInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restore-jobs/{RestoreJobId}/validations", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:revoke_restore_access_backup_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#RevokeRestoreAccessBackupVault"
        operation.name = "RevokeRestoreAccessBackupVault"
        operation.input = RevokeRestoreAccessBackupVaultInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/logically-air-gapped-backup-vaults/{BackupVaultName}/restore-access-backup-vaults/{RestoreAccessBackupVaultArn}", "code" => 200}}
      end)
      service.add_operation(:start_backup_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#StartBackupJob"
        operation.name = "StartBackupJob"
        operation.input = StartBackupJobInput
        operation.output = StartBackupJobOutput
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/backup-jobs", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_copy_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#StartCopyJob"
        operation.name = "StartCopyJob"
        operation.input = StartCopyJobInput
        operation.output = StartCopyJobOutput
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/copy-jobs", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_report_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#StartReportJob"
        operation.name = "StartReportJob"
        operation.input = StartReportJobInput
        operation.output = StartReportJobOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/audit/report-jobs/{ReportPlanName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_restore_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#StartRestoreJob"
        operation.name = "StartRestoreJob"
        operation.input = StartRestoreJobInput
        operation.output = StartRestoreJobOutput
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restore-jobs", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_scan_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#StartScanJob"
        operation.name = "StartScanJob"
        operation.input = StartScanJobInput
        operation.output = StartScanJobOutput
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/scan/job", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_backup_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#StopBackupJob"
        operation.name = "StopBackupJob"
        operation.input = StopBackupJobInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backup-jobs/{BackupJobId}", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/untag/{ResourceArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_backup_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UpdateBackupPlan"
        operation.name = "UpdateBackupPlan"
        operation.input = UpdateBackupPlanInput
        operation.output = UpdateBackupPlanOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backup/plans/{BackupPlanId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_framework, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UpdateFramework"
        operation.name = "UpdateFramework"
        operation.input = UpdateFrameworkInput
        operation.output = UpdateFrameworkOutput
        operation.errors << AlreadyExistsException
        operation.errors << ConflictException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/audit/frameworks/{FrameworkName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_global_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UpdateGlobalSettings"
        operation.name = "UpdateGlobalSettings"
        operation.input = UpdateGlobalSettingsInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << MissingParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/global-settings", "code" => 200}}
      end)
      service.add_operation(:update_recovery_point_index_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UpdateRecoveryPointIndexSettings"
        operation.name = "UpdateRecoveryPointIndexSettings"
        operation.input = UpdateRecoveryPointIndexSettingsInput
        operation.output = UpdateRecoveryPointIndexSettingsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/index", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_recovery_point_lifecycle, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UpdateRecoveryPointLifecycle"
        operation.name = "UpdateRecoveryPointLifecycle"
        operation.input = UpdateRecoveryPointLifecycleInput
        operation.output = UpdateRecoveryPointLifecycleOutput
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_region_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UpdateRegionSettings"
        operation.name = "UpdateRegionSettings"
        operation.input = UpdateRegionSettingsInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/account-settings", "code" => 200}}
      end)
      service.add_operation(:update_report_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UpdateReportPlan"
        operation.name = "UpdateReportPlan"
        operation.input = UpdateReportPlanInput
        operation.output = UpdateReportPlanOutput
        operation.errors << ConflictException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/audit/report-plans/{ReportPlanName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_restore_testing_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UpdateRestoreTestingPlan"
        operation.name = "UpdateRestoreTestingPlan"
        operation.input = UpdateRestoreTestingPlanInput
        operation.output = UpdateRestoreTestingPlanOutput
        operation.errors << ConflictException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restore-testing/plans/{RestoreTestingPlanName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_restore_testing_selection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UpdateRestoreTestingSelection"
        operation.name = "UpdateRestoreTestingSelection"
        operation.input = UpdateRestoreTestingSelectionInput
        operation.output = UpdateRestoreTestingSelectionOutput
        operation.errors << ConflictException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_tiering_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backup#UpdateTieringConfiguration"
        operation.name = "UpdateTieringConfiguration"
        operation.input = UpdateTieringConfigurationInput
        operation.output = UpdateTieringConfigurationOutput
        operation.errors << AlreadyExistsException
        operation.errors << ConflictException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/tiering-configurations/{TieringConfigurationName}", "code" => 200}, "smithy.api#idempotent" => {}}
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
