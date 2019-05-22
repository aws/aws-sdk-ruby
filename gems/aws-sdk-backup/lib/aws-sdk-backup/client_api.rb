# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Backup
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AlreadyExistsException = Shapes::StructureShape.new(name: 'AlreadyExistsException')
    BackupJob = Shapes::StructureShape.new(name: 'BackupJob')
    BackupJobState = Shapes::StringShape.new(name: 'BackupJobState')
    BackupJobsList = Shapes::ListShape.new(name: 'BackupJobsList')
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
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CalculatedLifecycle = Shapes::StructureShape.new(name: 'CalculatedLifecycle')
    Condition = Shapes::StructureShape.new(name: 'Condition')
    ConditionKey = Shapes::StringShape.new(name: 'ConditionKey')
    ConditionType = Shapes::StringShape.new(name: 'ConditionType')
    ConditionValue = Shapes::StringShape.new(name: 'ConditionValue')
    CreateBackupPlanInput = Shapes::StructureShape.new(name: 'CreateBackupPlanInput')
    CreateBackupPlanOutput = Shapes::StructureShape.new(name: 'CreateBackupPlanOutput')
    CreateBackupSelectionInput = Shapes::StructureShape.new(name: 'CreateBackupSelectionInput')
    CreateBackupSelectionOutput = Shapes::StructureShape.new(name: 'CreateBackupSelectionOutput')
    CreateBackupVaultInput = Shapes::StructureShape.new(name: 'CreateBackupVaultInput')
    CreateBackupVaultOutput = Shapes::StructureShape.new(name: 'CreateBackupVaultOutput')
    CronExpression = Shapes::StringShape.new(name: 'CronExpression')
    DeleteBackupPlanInput = Shapes::StructureShape.new(name: 'DeleteBackupPlanInput')
    DeleteBackupPlanOutput = Shapes::StructureShape.new(name: 'DeleteBackupPlanOutput')
    DeleteBackupSelectionInput = Shapes::StructureShape.new(name: 'DeleteBackupSelectionInput')
    DeleteBackupVaultAccessPolicyInput = Shapes::StructureShape.new(name: 'DeleteBackupVaultAccessPolicyInput')
    DeleteBackupVaultInput = Shapes::StructureShape.new(name: 'DeleteBackupVaultInput')
    DeleteBackupVaultNotificationsInput = Shapes::StructureShape.new(name: 'DeleteBackupVaultNotificationsInput')
    DeleteRecoveryPointInput = Shapes::StructureShape.new(name: 'DeleteRecoveryPointInput')
    DependencyFailureException = Shapes::StructureShape.new(name: 'DependencyFailureException')
    DescribeBackupJobInput = Shapes::StructureShape.new(name: 'DescribeBackupJobInput')
    DescribeBackupJobOutput = Shapes::StructureShape.new(name: 'DescribeBackupJobOutput')
    DescribeBackupVaultInput = Shapes::StructureShape.new(name: 'DescribeBackupVaultInput')
    DescribeBackupVaultOutput = Shapes::StructureShape.new(name: 'DescribeBackupVaultOutput')
    DescribeProtectedResourceInput = Shapes::StructureShape.new(name: 'DescribeProtectedResourceInput')
    DescribeProtectedResourceOutput = Shapes::StructureShape.new(name: 'DescribeProtectedResourceOutput')
    DescribeRecoveryPointInput = Shapes::StructureShape.new(name: 'DescribeRecoveryPointInput')
    DescribeRecoveryPointOutput = Shapes::StructureShape.new(name: 'DescribeRecoveryPointOutput')
    DescribeRestoreJobInput = Shapes::StructureShape.new(name: 'DescribeRestoreJobInput')
    DescribeRestoreJobOutput = Shapes::StructureShape.new(name: 'DescribeRestoreJobOutput')
    ExportBackupPlanTemplateInput = Shapes::StructureShape.new(name: 'ExportBackupPlanTemplateInput')
    ExportBackupPlanTemplateOutput = Shapes::StructureShape.new(name: 'ExportBackupPlanTemplateOutput')
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
    GetRecoveryPointRestoreMetadataInput = Shapes::StructureShape.new(name: 'GetRecoveryPointRestoreMetadataInput')
    GetRecoveryPointRestoreMetadataOutput = Shapes::StructureShape.new(name: 'GetRecoveryPointRestoreMetadataOutput')
    GetSupportedResourceTypesOutput = Shapes::StructureShape.new(name: 'GetSupportedResourceTypesOutput')
    IAMPolicy = Shapes::StringShape.new(name: 'IAMPolicy')
    IAMRoleArn = Shapes::StringShape.new(name: 'IAMRoleArn')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    Lifecycle = Shapes::StructureShape.new(name: 'Lifecycle')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
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
    ListOfTags = Shapes::ListShape.new(name: 'ListOfTags')
    ListProtectedResourcesInput = Shapes::StructureShape.new(name: 'ListProtectedResourcesInput')
    ListProtectedResourcesOutput = Shapes::StructureShape.new(name: 'ListProtectedResourcesOutput')
    ListRecoveryPointsByBackupVaultInput = Shapes::StructureShape.new(name: 'ListRecoveryPointsByBackupVaultInput')
    ListRecoveryPointsByBackupVaultOutput = Shapes::StructureShape.new(name: 'ListRecoveryPointsByBackupVaultOutput')
    ListRecoveryPointsByResourceInput = Shapes::StructureShape.new(name: 'ListRecoveryPointsByResourceInput')
    ListRecoveryPointsByResourceOutput = Shapes::StructureShape.new(name: 'ListRecoveryPointsByResourceOutput')
    ListRestoreJobsInput = Shapes::StructureShape.new(name: 'ListRestoreJobsInput')
    ListRestoreJobsOutput = Shapes::StructureShape.new(name: 'ListRestoreJobsOutput')
    ListTagsInput = Shapes::StructureShape.new(name: 'ListTagsInput')
    ListTagsOutput = Shapes::StructureShape.new(name: 'ListTagsOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Metadata = Shapes::MapShape.new(name: 'Metadata')
    MetadataKey = Shapes::StringShape.new(name: 'MetadataKey')
    MetadataValue = Shapes::StringShape.new(name: 'MetadataValue')
    MissingParameterValueException = Shapes::StructureShape.new(name: 'MissingParameterValueException')
    ProtectedResource = Shapes::StructureShape.new(name: 'ProtectedResource')
    ProtectedResourcesList = Shapes::ListShape.new(name: 'ProtectedResourcesList')
    PutBackupVaultAccessPolicyInput = Shapes::StructureShape.new(name: 'PutBackupVaultAccessPolicyInput')
    PutBackupVaultNotificationsInput = Shapes::StructureShape.new(name: 'PutBackupVaultNotificationsInput')
    RecoveryPointByBackupVault = Shapes::StructureShape.new(name: 'RecoveryPointByBackupVault')
    RecoveryPointByBackupVaultList = Shapes::ListShape.new(name: 'RecoveryPointByBackupVaultList')
    RecoveryPointByResource = Shapes::StructureShape.new(name: 'RecoveryPointByResource')
    RecoveryPointByResourceList = Shapes::ListShape.new(name: 'RecoveryPointByResourceList')
    RecoveryPointCreator = Shapes::StructureShape.new(name: 'RecoveryPointCreator')
    RecoveryPointStatus = Shapes::StringShape.new(name: 'RecoveryPointStatus')
    ResourceArns = Shapes::ListShape.new(name: 'ResourceArns')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypes = Shapes::ListShape.new(name: 'ResourceTypes')
    RestoreJobId = Shapes::StringShape.new(name: 'RestoreJobId')
    RestoreJobStatus = Shapes::StringShape.new(name: 'RestoreJobStatus')
    RestoreJobsList = Shapes::ListShape.new(name: 'RestoreJobsList')
    RestoreJobsListMember = Shapes::StructureShape.new(name: 'RestoreJobsListMember')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    StartBackupJobInput = Shapes::StructureShape.new(name: 'StartBackupJobInput')
    StartBackupJobOutput = Shapes::StructureShape.new(name: 'StartBackupJobOutput')
    StartRestoreJobInput = Shapes::StructureShape.new(name: 'StartRestoreJobInput')
    StartRestoreJobOutput = Shapes::StructureShape.new(name: 'StartRestoreJobOutput')
    StopBackupJobInput = Shapes::StructureShape.new(name: 'StopBackupJobInput')
    StorageClass = Shapes::StringShape.new(name: 'StorageClass')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UpdateBackupPlanInput = Shapes::StructureShape.new(name: 'UpdateBackupPlanInput')
    UpdateBackupPlanOutput = Shapes::StructureShape.new(name: 'UpdateBackupPlanOutput')
    UpdateRecoveryPointLifecycleInput = Shapes::StructureShape.new(name: 'UpdateRecoveryPointLifecycleInput')
    UpdateRecoveryPointLifecycleOutput = Shapes::StructureShape.new(name: 'UpdateRecoveryPointLifecycleOutput')
    WindowMinutes = Shapes::IntegerShape.new(name: 'WindowMinutes')
    boolean = Shapes::BooleanShape.new(name: 'boolean')
    long = Shapes::IntegerShape.new(name: 'long')
    string = Shapes::StringShape.new(name: 'string')
    timestamp = Shapes::TimestampShape.new(name: 'timestamp')

    AlreadyExistsException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "Code"))
    AlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    AlreadyExistsException.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: string, location_name: "CreatorRequestId"))
    AlreadyExistsException.add_member(:arn, Shapes::ShapeRef.new(shape: string, location_name: "Arn"))
    AlreadyExistsException.add_member(:type, Shapes::ShapeRef.new(shape: string, location_name: "Type"))
    AlreadyExistsException.add_member(:context, Shapes::ShapeRef.new(shape: string, location_name: "Context"))
    AlreadyExistsException.struct_class = Types::AlreadyExistsException

    BackupJob.add_member(:backup_job_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupJobId"))
    BackupJob.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location_name: "BackupVaultName"))
    BackupJob.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    BackupJob.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
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
    BackupJob.struct_class = Types::BackupJob

    BackupJobsList.member = Shapes::ShapeRef.new(shape: BackupJob)

    BackupPlan.add_member(:backup_plan_name, Shapes::ShapeRef.new(shape: BackupPlanName, required: true, location_name: "BackupPlanName"))
    BackupPlan.add_member(:rules, Shapes::ShapeRef.new(shape: BackupRules, required: true, location_name: "Rules"))
    BackupPlan.struct_class = Types::BackupPlan

    BackupPlanInput.add_member(:backup_plan_name, Shapes::ShapeRef.new(shape: BackupPlanName, required: true, location_name: "BackupPlanName"))
    BackupPlanInput.add_member(:rules, Shapes::ShapeRef.new(shape: BackupRulesInput, required: true, location_name: "Rules"))
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
    BackupPlansListMember.struct_class = Types::BackupPlansListMember

    BackupRule.add_member(:rule_name, Shapes::ShapeRef.new(shape: BackupRuleName, required: true, location_name: "RuleName"))
    BackupRule.add_member(:target_backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location_name: "TargetBackupVaultName"))
    BackupRule.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: CronExpression, location_name: "ScheduleExpression"))
    BackupRule.add_member(:start_window_minutes, Shapes::ShapeRef.new(shape: WindowMinutes, location_name: "StartWindowMinutes"))
    BackupRule.add_member(:completion_window_minutes, Shapes::ShapeRef.new(shape: WindowMinutes, location_name: "CompletionWindowMinutes"))
    BackupRule.add_member(:lifecycle, Shapes::ShapeRef.new(shape: Lifecycle, location_name: "Lifecycle"))
    BackupRule.add_member(:recovery_point_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "RecoveryPointTags"))
    BackupRule.add_member(:rule_id, Shapes::ShapeRef.new(shape: string, location_name: "RuleId"))
    BackupRule.struct_class = Types::BackupRule

    BackupRuleInput.add_member(:rule_name, Shapes::ShapeRef.new(shape: BackupRuleName, required: true, location_name: "RuleName"))
    BackupRuleInput.add_member(:target_backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location_name: "TargetBackupVaultName"))
    BackupRuleInput.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: CronExpression, location_name: "ScheduleExpression"))
    BackupRuleInput.add_member(:start_window_minutes, Shapes::ShapeRef.new(shape: WindowMinutes, location_name: "StartWindowMinutes"))
    BackupRuleInput.add_member(:completion_window_minutes, Shapes::ShapeRef.new(shape: WindowMinutes, location_name: "CompletionWindowMinutes"))
    BackupRuleInput.add_member(:lifecycle, Shapes::ShapeRef.new(shape: Lifecycle, location_name: "Lifecycle"))
    BackupRuleInput.add_member(:recovery_point_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "RecoveryPointTags"))
    BackupRuleInput.struct_class = Types::BackupRuleInput

    BackupRules.member = Shapes::ShapeRef.new(shape: BackupRule)

    BackupRulesInput.member = Shapes::ShapeRef.new(shape: BackupRuleInput)

    BackupSelection.add_member(:selection_name, Shapes::ShapeRef.new(shape: BackupSelectionName, required: true, location_name: "SelectionName"))
    BackupSelection.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, required: true, location_name: "IamRoleArn"))
    BackupSelection.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceArns, location_name: "Resources"))
    BackupSelection.add_member(:list_of_tags, Shapes::ShapeRef.new(shape: ListOfTags, location_name: "ListOfTags"))
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
    BackupVaultListMember.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    BackupVaultListMember.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "EncryptionKeyArn"))
    BackupVaultListMember.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: string, location_name: "CreatorRequestId"))
    BackupVaultListMember.add_member(:number_of_recovery_points, Shapes::ShapeRef.new(shape: long, location_name: "NumberOfRecoveryPoints"))
    BackupVaultListMember.struct_class = Types::BackupVaultListMember

    CalculatedLifecycle.add_member(:move_to_cold_storage_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "MoveToColdStorageAt"))
    CalculatedLifecycle.add_member(:delete_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "DeleteAt"))
    CalculatedLifecycle.struct_class = Types::CalculatedLifecycle

    Condition.add_member(:condition_type, Shapes::ShapeRef.new(shape: ConditionType, required: true, location_name: "ConditionType"))
    Condition.add_member(:condition_key, Shapes::ShapeRef.new(shape: ConditionKey, required: true, location_name: "ConditionKey"))
    Condition.add_member(:condition_value, Shapes::ShapeRef.new(shape: ConditionValue, required: true, location_name: "ConditionValue"))
    Condition.struct_class = Types::Condition

    CreateBackupPlanInput.add_member(:backup_plan, Shapes::ShapeRef.new(shape: BackupPlanInput, required: true, location_name: "BackupPlan"))
    CreateBackupPlanInput.add_member(:backup_plan_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "BackupPlanTags"))
    CreateBackupPlanInput.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: string, location_name: "CreatorRequestId"))
    CreateBackupPlanInput.struct_class = Types::CreateBackupPlanInput

    CreateBackupPlanOutput.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupPlanId"))
    CreateBackupPlanOutput.add_member(:backup_plan_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupPlanArn"))
    CreateBackupPlanOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    CreateBackupPlanOutput.add_member(:version_id, Shapes::ShapeRef.new(shape: string, location_name: "VersionId"))
    CreateBackupPlanOutput.struct_class = Types::CreateBackupPlanOutput

    CreateBackupSelectionInput.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "backupPlanId"))
    CreateBackupSelectionInput.add_member(:backup_selection, Shapes::ShapeRef.new(shape: BackupSelection, required: true, location_name: "BackupSelection"))
    CreateBackupSelectionInput.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: string, location_name: "CreatorRequestId"))
    CreateBackupSelectionInput.struct_class = Types::CreateBackupSelectionInput

    CreateBackupSelectionOutput.add_member(:selection_id, Shapes::ShapeRef.new(shape: string, location_name: "SelectionId"))
    CreateBackupSelectionOutput.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupPlanId"))
    CreateBackupSelectionOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    CreateBackupSelectionOutput.struct_class = Types::CreateBackupSelectionOutput

    CreateBackupVaultInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    CreateBackupVaultInput.add_member(:backup_vault_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "BackupVaultTags"))
    CreateBackupVaultInput.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "EncryptionKeyArn"))
    CreateBackupVaultInput.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: string, location_name: "CreatorRequestId"))
    CreateBackupVaultInput.struct_class = Types::CreateBackupVaultInput

    CreateBackupVaultOutput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location_name: "BackupVaultName"))
    CreateBackupVaultOutput.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    CreateBackupVaultOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    CreateBackupVaultOutput.struct_class = Types::CreateBackupVaultOutput

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

    DeleteBackupVaultNotificationsInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    DeleteBackupVaultNotificationsInput.struct_class = Types::DeleteBackupVaultNotificationsInput

    DeleteRecoveryPointInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    DeleteRecoveryPointInput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "recoveryPointArn"))
    DeleteRecoveryPointInput.struct_class = Types::DeleteRecoveryPointInput

    DependencyFailureException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "Code"))
    DependencyFailureException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    DependencyFailureException.add_member(:type, Shapes::ShapeRef.new(shape: string, location_name: "Type"))
    DependencyFailureException.add_member(:context, Shapes::ShapeRef.new(shape: string, location_name: "Context"))
    DependencyFailureException.struct_class = Types::DependencyFailureException

    DescribeBackupJobInput.add_member(:backup_job_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "backupJobId"))
    DescribeBackupJobInput.struct_class = Types::DescribeBackupJobInput

    DescribeBackupJobOutput.add_member(:backup_job_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupJobId"))
    DescribeBackupJobOutput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location_name: "BackupVaultName"))
    DescribeBackupJobOutput.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    DescribeBackupJobOutput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
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
    DescribeBackupJobOutput.struct_class = Types::DescribeBackupJobOutput

    DescribeBackupVaultInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "backupVaultName"))
    DescribeBackupVaultInput.struct_class = Types::DescribeBackupVaultInput

    DescribeBackupVaultOutput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: string, location_name: "BackupVaultName"))
    DescribeBackupVaultOutput.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    DescribeBackupVaultOutput.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "EncryptionKeyArn"))
    DescribeBackupVaultOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    DescribeBackupVaultOutput.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: string, location_name: "CreatorRequestId"))
    DescribeBackupVaultOutput.add_member(:number_of_recovery_points, Shapes::ShapeRef.new(shape: long, location_name: "NumberOfRecoveryPoints"))
    DescribeBackupVaultOutput.struct_class = Types::DescribeBackupVaultOutput

    DescribeProtectedResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    DescribeProtectedResourceInput.struct_class = Types::DescribeProtectedResourceInput

    DescribeProtectedResourceOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ResourceArn"))
    DescribeProtectedResourceOutput.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    DescribeProtectedResourceOutput.add_member(:last_backup_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastBackupTime"))
    DescribeProtectedResourceOutput.struct_class = Types::DescribeProtectedResourceOutput

    DescribeRecoveryPointInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    DescribeRecoveryPointInput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "recoveryPointArn"))
    DescribeRecoveryPointInput.struct_class = Types::DescribeRecoveryPointInput

    DescribeRecoveryPointOutput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    DescribeRecoveryPointOutput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location_name: "BackupVaultName"))
    DescribeRecoveryPointOutput.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    DescribeRecoveryPointOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ResourceArn"))
    DescribeRecoveryPointOutput.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    DescribeRecoveryPointOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: RecoveryPointCreator, location_name: "CreatedBy"))
    DescribeRecoveryPointOutput.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "IamRoleArn"))
    DescribeRecoveryPointOutput.add_member(:status, Shapes::ShapeRef.new(shape: RecoveryPointStatus, location_name: "Status"))
    DescribeRecoveryPointOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    DescribeRecoveryPointOutput.add_member(:completion_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CompletionDate"))
    DescribeRecoveryPointOutput.add_member(:backup_size_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "BackupSizeInBytes"))
    DescribeRecoveryPointOutput.add_member(:calculated_lifecycle, Shapes::ShapeRef.new(shape: CalculatedLifecycle, location_name: "CalculatedLifecycle"))
    DescribeRecoveryPointOutput.add_member(:lifecycle, Shapes::ShapeRef.new(shape: Lifecycle, location_name: "Lifecycle"))
    DescribeRecoveryPointOutput.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "EncryptionKeyArn"))
    DescribeRecoveryPointOutput.add_member(:is_encrypted, Shapes::ShapeRef.new(shape: boolean, location_name: "IsEncrypted"))
    DescribeRecoveryPointOutput.add_member(:storage_class, Shapes::ShapeRef.new(shape: StorageClass, location_name: "StorageClass"))
    DescribeRecoveryPointOutput.add_member(:last_restore_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastRestoreTime"))
    DescribeRecoveryPointOutput.struct_class = Types::DescribeRecoveryPointOutput

    DescribeRestoreJobInput.add_member(:restore_job_id, Shapes::ShapeRef.new(shape: RestoreJobId, required: true, location: "uri", location_name: "restoreJobId"))
    DescribeRestoreJobInput.struct_class = Types::DescribeRestoreJobInput

    DescribeRestoreJobOutput.add_member(:restore_job_id, Shapes::ShapeRef.new(shape: string, location_name: "RestoreJobId"))
    DescribeRestoreJobOutput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    DescribeRestoreJobOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    DescribeRestoreJobOutput.add_member(:completion_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CompletionDate"))
    DescribeRestoreJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: RestoreJobStatus, location_name: "Status"))
    DescribeRestoreJobOutput.add_member(:status_message, Shapes::ShapeRef.new(shape: string, location_name: "StatusMessage"))
    DescribeRestoreJobOutput.add_member(:percent_done, Shapes::ShapeRef.new(shape: string, location_name: "PercentDone"))
    DescribeRestoreJobOutput.add_member(:backup_size_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "BackupSizeInBytes"))
    DescribeRestoreJobOutput.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "IamRoleArn"))
    DescribeRestoreJobOutput.add_member(:expected_completion_time_minutes, Shapes::ShapeRef.new(shape: Long, location_name: "ExpectedCompletionTimeMinutes"))
    DescribeRestoreJobOutput.add_member(:created_resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "CreatedResourceArn"))
    DescribeRestoreJobOutput.struct_class = Types::DescribeRestoreJobOutput

    ExportBackupPlanTemplateInput.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "backupPlanId"))
    ExportBackupPlanTemplateInput.struct_class = Types::ExportBackupPlanTemplateInput

    ExportBackupPlanTemplateOutput.add_member(:backup_plan_template_json, Shapes::ShapeRef.new(shape: string, location_name: "BackupPlanTemplateJson"))
    ExportBackupPlanTemplateOutput.struct_class = Types::ExportBackupPlanTemplateOutput

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
    GetBackupPlanInput.struct_class = Types::GetBackupPlanInput

    GetBackupPlanOutput.add_member(:backup_plan, Shapes::ShapeRef.new(shape: BackupPlan, location_name: "BackupPlan"))
    GetBackupPlanOutput.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupPlanId"))
    GetBackupPlanOutput.add_member(:backup_plan_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupPlanArn"))
    GetBackupPlanOutput.add_member(:version_id, Shapes::ShapeRef.new(shape: string, location_name: "VersionId"))
    GetBackupPlanOutput.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: string, location_name: "CreatorRequestId"))
    GetBackupPlanOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    GetBackupPlanOutput.add_member(:deletion_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "DeletionDate"))
    GetBackupPlanOutput.add_member(:last_execution_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastExecutionDate"))
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

    GetRecoveryPointRestoreMetadataInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    GetRecoveryPointRestoreMetadataInput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "recoveryPointArn"))
    GetRecoveryPointRestoreMetadataInput.struct_class = Types::GetRecoveryPointRestoreMetadataInput

    GetRecoveryPointRestoreMetadataOutput.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    GetRecoveryPointRestoreMetadataOutput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    GetRecoveryPointRestoreMetadataOutput.add_member(:restore_metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "RestoreMetadata"))
    GetRecoveryPointRestoreMetadataOutput.struct_class = Types::GetRecoveryPointRestoreMetadataOutput

    GetSupportedResourceTypesOutput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "ResourceTypes"))
    GetSupportedResourceTypesOutput.struct_class = Types::GetSupportedResourceTypesOutput

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

    Lifecycle.add_member(:move_to_cold_storage_after_days, Shapes::ShapeRef.new(shape: Long, location_name: "MoveToColdStorageAfterDays"))
    Lifecycle.add_member(:delete_after_days, Shapes::ShapeRef.new(shape: Long, location_name: "DeleteAfterDays"))
    Lifecycle.struct_class = Types::Lifecycle

    LimitExceededException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "Code"))
    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    LimitExceededException.add_member(:type, Shapes::ShapeRef.new(shape: string, location_name: "Type"))
    LimitExceededException.add_member(:context, Shapes::ShapeRef.new(shape: string, location_name: "Context"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListBackupJobsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListBackupJobsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBackupJobsInput.add_member(:by_resource_arn, Shapes::ShapeRef.new(shape: ARN, location: "querystring", location_name: "resourceArn"))
    ListBackupJobsInput.add_member(:by_state, Shapes::ShapeRef.new(shape: BackupJobState, location: "querystring", location_name: "state"))
    ListBackupJobsInput.add_member(:by_backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location: "querystring", location_name: "backupVaultName"))
    ListBackupJobsInput.add_member(:by_created_before, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "createdBefore"))
    ListBackupJobsInput.add_member(:by_created_after, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "createdAfter"))
    ListBackupJobsInput.add_member(:by_resource_type, Shapes::ShapeRef.new(shape: ResourceType, location: "querystring", location_name: "resourceType"))
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

    ListBackupVaultsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListBackupVaultsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBackupVaultsInput.struct_class = Types::ListBackupVaultsInput

    ListBackupVaultsOutput.add_member(:backup_vault_list, Shapes::ShapeRef.new(shape: BackupVaultList, location_name: "BackupVaultList"))
    ListBackupVaultsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListBackupVaultsOutput.struct_class = Types::ListBackupVaultsOutput

    ListOfTags.member = Shapes::ShapeRef.new(shape: Condition)

    ListProtectedResourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListProtectedResourcesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProtectedResourcesInput.struct_class = Types::ListProtectedResourcesInput

    ListProtectedResourcesOutput.add_member(:results, Shapes::ShapeRef.new(shape: ProtectedResourcesList, location_name: "Results"))
    ListProtectedResourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListProtectedResourcesOutput.struct_class = Types::ListProtectedResourcesOutput

    ListRecoveryPointsByBackupVaultInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    ListRecoveryPointsByBackupVaultInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListRecoveryPointsByBackupVaultInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_resource_arn, Shapes::ShapeRef.new(shape: ARN, location: "querystring", location_name: "resourceArn"))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_resource_type, Shapes::ShapeRef.new(shape: ResourceType, location: "querystring", location_name: "resourceType"))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_backup_plan_id, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "backupPlanId"))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_created_before, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "createdBefore"))
    ListRecoveryPointsByBackupVaultInput.add_member(:by_created_after, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "createdAfter"))
    ListRecoveryPointsByBackupVaultInput.struct_class = Types::ListRecoveryPointsByBackupVaultInput

    ListRecoveryPointsByBackupVaultOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListRecoveryPointsByBackupVaultOutput.add_member(:recovery_points, Shapes::ShapeRef.new(shape: RecoveryPointByBackupVaultList, location_name: "RecoveryPoints"))
    ListRecoveryPointsByBackupVaultOutput.struct_class = Types::ListRecoveryPointsByBackupVaultOutput

    ListRecoveryPointsByResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    ListRecoveryPointsByResourceInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListRecoveryPointsByResourceInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRecoveryPointsByResourceInput.struct_class = Types::ListRecoveryPointsByResourceInput

    ListRecoveryPointsByResourceOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListRecoveryPointsByResourceOutput.add_member(:recovery_points, Shapes::ShapeRef.new(shape: RecoveryPointByResourceList, location_name: "RecoveryPoints"))
    ListRecoveryPointsByResourceOutput.struct_class = Types::ListRecoveryPointsByResourceOutput

    ListRestoreJobsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListRestoreJobsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRestoreJobsInput.struct_class = Types::ListRestoreJobsInput

    ListRestoreJobsOutput.add_member(:restore_jobs, Shapes::ShapeRef.new(shape: RestoreJobsList, location_name: "RestoreJobs"))
    ListRestoreJobsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListRestoreJobsOutput.struct_class = Types::ListRestoreJobsOutput

    ListTagsInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "nextToken"))
    ListTagsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTagsInput.struct_class = Types::ListTagsInput

    ListTagsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListTagsOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsOutput.struct_class = Types::ListTagsOutput

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
    ProtectedResource.struct_class = Types::ProtectedResource

    ProtectedResourcesList.member = Shapes::ShapeRef.new(shape: ProtectedResource)

    PutBackupVaultAccessPolicyInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    PutBackupVaultAccessPolicyInput.add_member(:policy, Shapes::ShapeRef.new(shape: IAMPolicy, location_name: "Policy"))
    PutBackupVaultAccessPolicyInput.struct_class = Types::PutBackupVaultAccessPolicyInput

    PutBackupVaultNotificationsInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    PutBackupVaultNotificationsInput.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "SNSTopicArn"))
    PutBackupVaultNotificationsInput.add_member(:backup_vault_events, Shapes::ShapeRef.new(shape: BackupVaultEvents, required: true, location_name: "BackupVaultEvents"))
    PutBackupVaultNotificationsInput.struct_class = Types::PutBackupVaultNotificationsInput

    RecoveryPointByBackupVault.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    RecoveryPointByBackupVault.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location_name: "BackupVaultName"))
    RecoveryPointByBackupVault.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    RecoveryPointByBackupVault.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ResourceArn"))
    RecoveryPointByBackupVault.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    RecoveryPointByBackupVault.add_member(:created_by, Shapes::ShapeRef.new(shape: RecoveryPointCreator, location_name: "CreatedBy"))
    RecoveryPointByBackupVault.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "IamRoleArn"))
    RecoveryPointByBackupVault.add_member(:status, Shapes::ShapeRef.new(shape: RecoveryPointStatus, location_name: "Status"))
    RecoveryPointByBackupVault.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    RecoveryPointByBackupVault.add_member(:completion_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CompletionDate"))
    RecoveryPointByBackupVault.add_member(:backup_size_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "BackupSizeInBytes"))
    RecoveryPointByBackupVault.add_member(:calculated_lifecycle, Shapes::ShapeRef.new(shape: CalculatedLifecycle, location_name: "CalculatedLifecycle"))
    RecoveryPointByBackupVault.add_member(:lifecycle, Shapes::ShapeRef.new(shape: Lifecycle, location_name: "Lifecycle"))
    RecoveryPointByBackupVault.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "EncryptionKeyArn"))
    RecoveryPointByBackupVault.add_member(:is_encrypted, Shapes::ShapeRef.new(shape: boolean, location_name: "IsEncrypted"))
    RecoveryPointByBackupVault.add_member(:last_restore_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastRestoreTime"))
    RecoveryPointByBackupVault.struct_class = Types::RecoveryPointByBackupVault

    RecoveryPointByBackupVaultList.member = Shapes::ShapeRef.new(shape: RecoveryPointByBackupVault)

    RecoveryPointByResource.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    RecoveryPointByResource.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    RecoveryPointByResource.add_member(:status, Shapes::ShapeRef.new(shape: RecoveryPointStatus, location_name: "Status"))
    RecoveryPointByResource.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "EncryptionKeyArn"))
    RecoveryPointByResource.add_member(:backup_size_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "BackupSizeBytes"))
    RecoveryPointByResource.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, location_name: "BackupVaultName"))
    RecoveryPointByResource.struct_class = Types::RecoveryPointByResource

    RecoveryPointByResourceList.member = Shapes::ShapeRef.new(shape: RecoveryPointByResource)

    RecoveryPointCreator.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupPlanId"))
    RecoveryPointCreator.add_member(:backup_plan_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupPlanArn"))
    RecoveryPointCreator.add_member(:backup_plan_version, Shapes::ShapeRef.new(shape: string, location_name: "BackupPlanVersion"))
    RecoveryPointCreator.add_member(:backup_rule_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupRuleId"))
    RecoveryPointCreator.struct_class = Types::RecoveryPointCreator

    ResourceArns.member = Shapes::ShapeRef.new(shape: ARN)

    ResourceNotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "Code"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    ResourceNotFoundException.add_member(:type, Shapes::ShapeRef.new(shape: string, location_name: "Type"))
    ResourceNotFoundException.add_member(:context, Shapes::ShapeRef.new(shape: string, location_name: "Context"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTypes.member = Shapes::ShapeRef.new(shape: ResourceType)

    RestoreJobsList.member = Shapes::ShapeRef.new(shape: RestoreJobsListMember)

    RestoreJobsListMember.add_member(:restore_job_id, Shapes::ShapeRef.new(shape: string, location_name: "RestoreJobId"))
    RestoreJobsListMember.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    RestoreJobsListMember.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    RestoreJobsListMember.add_member(:completion_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CompletionDate"))
    RestoreJobsListMember.add_member(:status, Shapes::ShapeRef.new(shape: RestoreJobStatus, location_name: "Status"))
    RestoreJobsListMember.add_member(:status_message, Shapes::ShapeRef.new(shape: string, location_name: "StatusMessage"))
    RestoreJobsListMember.add_member(:percent_done, Shapes::ShapeRef.new(shape: string, location_name: "PercentDone"))
    RestoreJobsListMember.add_member(:backup_size_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "BackupSizeInBytes"))
    RestoreJobsListMember.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "IamRoleArn"))
    RestoreJobsListMember.add_member(:expected_completion_time_minutes, Shapes::ShapeRef.new(shape: Long, location_name: "ExpectedCompletionTimeMinutes"))
    RestoreJobsListMember.add_member(:created_resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "CreatedResourceArn"))
    RestoreJobsListMember.struct_class = Types::RestoreJobsListMember

    ServiceUnavailableException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "Code"))
    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    ServiceUnavailableException.add_member(:type, Shapes::ShapeRef.new(shape: string, location_name: "Type"))
    ServiceUnavailableException.add_member(:context, Shapes::ShapeRef.new(shape: string, location_name: "Context"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StartBackupJobInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location_name: "BackupVaultName"))
    StartBackupJobInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "ResourceArn"))
    StartBackupJobInput.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, required: true, location_name: "IamRoleArn"))
    StartBackupJobInput.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: string, location_name: "IdempotencyToken"))
    StartBackupJobInput.add_member(:start_window_minutes, Shapes::ShapeRef.new(shape: WindowMinutes, location_name: "StartWindowMinutes"))
    StartBackupJobInput.add_member(:complete_window_minutes, Shapes::ShapeRef.new(shape: WindowMinutes, location_name: "CompleteWindowMinutes"))
    StartBackupJobInput.add_member(:lifecycle, Shapes::ShapeRef.new(shape: Lifecycle, location_name: "Lifecycle"))
    StartBackupJobInput.add_member(:recovery_point_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "RecoveryPointTags"))
    StartBackupJobInput.struct_class = Types::StartBackupJobInput

    StartBackupJobOutput.add_member(:backup_job_id, Shapes::ShapeRef.new(shape: string, location_name: "BackupJobId"))
    StartBackupJobOutput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    StartBackupJobOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationDate"))
    StartBackupJobOutput.struct_class = Types::StartBackupJobOutput

    StartRestoreJobInput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "RecoveryPointArn"))
    StartRestoreJobInput.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, required: true, location_name: "Metadata"))
    StartRestoreJobInput.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, required: true, location_name: "IamRoleArn"))
    StartRestoreJobInput.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: string, location_name: "IdempotencyToken"))
    StartRestoreJobInput.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
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
    UpdateBackupPlanOutput.struct_class = Types::UpdateBackupPlanOutput

    UpdateRecoveryPointLifecycleInput.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: BackupVaultName, required: true, location: "uri", location_name: "backupVaultName"))
    UpdateRecoveryPointLifecycleInput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "recoveryPointArn"))
    UpdateRecoveryPointLifecycleInput.add_member(:lifecycle, Shapes::ShapeRef.new(shape: Lifecycle, location_name: "Lifecycle"))
    UpdateRecoveryPointLifecycleInput.struct_class = Types::UpdateRecoveryPointLifecycleInput

    UpdateRecoveryPointLifecycleOutput.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "BackupVaultArn"))
    UpdateRecoveryPointLifecycleOutput.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RecoveryPointArn"))
    UpdateRecoveryPointLifecycleOutput.add_member(:lifecycle, Shapes::ShapeRef.new(shape: Lifecycle, location_name: "Lifecycle"))
    UpdateRecoveryPointLifecycleOutput.add_member(:calculated_lifecycle, Shapes::ShapeRef.new(shape: CalculatedLifecycle, location_name: "CalculatedLifecycle"))
    UpdateRecoveryPointLifecycleOutput.struct_class = Types::UpdateRecoveryPointLifecycleOutput


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-11-15"

      api.metadata = {
        "apiVersion" => "2018-11-15",
        "endpointPrefix" => "backup",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Backup",
        "serviceId" => "Backup",
        "signatureVersion" => "v4",
        "uid" => "backup-2018-11-15",
      }

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

      api.add_operation(:delete_recovery_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRecoveryPoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRecoveryPointInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
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

      api.add_operation(:get_supported_resource_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSupportedResourceTypes"
        o.http_method = "GET"
        o.http_request_uri = "/supported-resource-types"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetSupportedResourceTypesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
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

      api.add_operation(:start_backup_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartBackupJob"
        o.http_method = "PUT"
        o.http_request_uri = "/backup-jobs"
        o.input = Shapes::ShapeRef.new(shape: StartBackupJobInput)
        o.output = Shapes::ShapeRef.new(shape: StartBackupJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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

      api.add_operation(:update_recovery_point_lifecycle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRecoveryPointLifecycle"
        o.http_method = "POST"
        o.http_request_uri = "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRecoveryPointLifecycleInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateRecoveryPointLifecycleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)
    end

  end
end
