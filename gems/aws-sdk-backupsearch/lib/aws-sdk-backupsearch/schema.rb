# frozen_string_literal: true

# This is generated code!

module Aws::BackupSearch
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    BackupCreationTimeFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#BackupCreationTimeFilter', name: 'BackupCreationTimeFilter')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CurrentSearchProgress = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#CurrentSearchProgress', name: 'CurrentSearchProgress')
    EBSItemFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#EBSItemFilter', name: 'EBSItemFilter')
    EBSItemFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupsearch#EBSItemFilters', name: 'EBSItemFilters', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    EBSResultItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#EBSResultItem', name: 'EBSResultItem')
    EncryptionKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupsearch#EncryptionKeyArn', name: 'EncryptionKeyArn', traits: {"aws.api#arnReference" => {"type" => "AWS::KMS::Key"}})
    ExportJobArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupsearch#ExportJobArn', name: 'ExportJobArn', traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.backupsearch#CryoBackupSearchService"}})
    ExportJobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backupsearch#ExportJobStatus', name: 'ExportJobStatus')
    ExportJobSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupsearch#ExportJobSummaries', name: 'ExportJobSummaries')
    ExportJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#ExportJobSummary', name: 'ExportJobSummary')
    ExportSpecification = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.backupsearch#ExportSpecification', name: 'ExportSpecification')
    FilePath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupsearch#FilePath', name: 'FilePath', traits: {"smithy.api#sensitive" => {}})
    GenericId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupsearch#GenericId', name: 'GenericId')
    GetSearchJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#GetSearchJobInput', name: 'GetSearchJobInput')
    GetSearchJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#GetSearchJobOutput', name: 'GetSearchJobOutput')
    GetSearchResultExportJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#GetSearchResultExportJobInput', name: 'GetSearchResultExportJobInput')
    GetSearchResultExportJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#GetSearchResultExportJobOutput', name: 'GetSearchResultExportJobOutput')
    IamRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupsearch#IamRoleArn', name: 'IamRoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(?:aws|aws-cn|aws-us-gov):iam::[a-z0-9-]+:role/(.+)$"})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ItemFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#ItemFilters', name: 'ItemFilters')
    ListSearchJobBackupsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#ListSearchJobBackupsInput', name: 'ListSearchJobBackupsInput')
    ListSearchJobBackupsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#ListSearchJobBackupsOutput', name: 'ListSearchJobBackupsOutput')
    ListSearchJobResultsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#ListSearchJobResultsInput', name: 'ListSearchJobResultsInput')
    ListSearchJobResultsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#ListSearchJobResultsOutput', name: 'ListSearchJobResultsOutput')
    ListSearchJobsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#ListSearchJobsInput', name: 'ListSearchJobsInput')
    ListSearchJobsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#ListSearchJobsOutput', name: 'ListSearchJobsOutput')
    ListSearchResultExportJobsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#ListSearchResultExportJobsInput', name: 'ListSearchResultExportJobsInput')
    ListSearchResultExportJobsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#ListSearchResultExportJobsOutput', name: 'ListSearchResultExportJobsOutput')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LongCondition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#LongCondition', name: 'LongCondition')
    LongConditionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupsearch#LongConditionList', name: 'LongConditionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    LongConditionOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backupsearch#LongConditionOperator', name: 'LongConditionOperator')
    ObjectKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupsearch#ObjectKey', name: 'ObjectKey', traits: {"smithy.api#sensitive" => {}})
    RecoveryPoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupsearch#RecoveryPoint', name: 'RecoveryPoint', traits: {"aws.api#arnReference" => {"type" => "AWS::Backup::RecoveryPoint"}})
    RecoveryPointArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupsearch#RecoveryPointArnList', name: 'RecoveryPointArnList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ResourceArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupsearch#ResourceArnList', name: 'ResourceArnList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backupsearch#ResourceType', name: 'ResourceType')
    ResourceTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupsearch#ResourceTypeList', name: 'ResourceTypeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ResultItem = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.backupsearch#ResultItem', name: 'ResultItem')
    Results = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupsearch#Results', name: 'Results')
    S3ExportSpecification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#S3ExportSpecification', name: 'S3ExportSpecification')
    S3ItemFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#S3ItemFilter', name: 'S3ItemFilter')
    S3ItemFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupsearch#S3ItemFilters', name: 'S3ItemFilters', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    S3ResultItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#S3ResultItem', name: 'S3ResultItem')
    SearchJobArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupsearch#SearchJobArn', name: 'SearchJobArn', traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.backupsearch#CryoBackupSearchService"}})
    SearchJobBackupsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#SearchJobBackupsResult', name: 'SearchJobBackupsResult')
    SearchJobBackupsResults = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupsearch#SearchJobBackupsResults', name: 'SearchJobBackupsResults')
    SearchJobState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backupsearch#SearchJobState', name: 'SearchJobState')
    SearchJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#SearchJobSummary', name: 'SearchJobSummary')
    SearchJobs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupsearch#SearchJobs', name: 'SearchJobs')
    SearchScope = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#SearchScope', name: 'SearchScope')
    SearchScopeSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#SearchScopeSummary', name: 'SearchScopeSummary')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StartSearchJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#StartSearchJobInput', name: 'StartSearchJobInput')
    StartSearchJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#StartSearchJobOutput', name: 'StartSearchJobOutput')
    StartSearchResultExportJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#StartSearchResultExportJobInput', name: 'StartSearchResultExportJobInput')
    StartSearchResultExportJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#StartSearchResultExportJobOutput', name: 'StartSearchResultExportJobOutput')
    StopSearchJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#StopSearchJobInput', name: 'StopSearchJobInput')
    StopSearchJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#StopSearchJobOutput', name: 'StopSearchJobOutput')
    StringCondition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#StringCondition', name: 'StringCondition')
    StringConditionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupsearch#StringConditionList', name: 'StringConditionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    StringConditionOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backupsearch#StringConditionOperator', name: 'StringConditionOperator')
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupsearch#TagKeys', name: 'TagKeys')
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.backupsearch#TagMap', name: 'TagMap', traits: {"smithy.api#sparse" => {}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#TagResourceResponse', name: 'TagResourceResponse')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TimeCondition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#TimeCondition', name: 'TimeCondition')
    TimeConditionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupsearch#TimeConditionList', name: 'TimeConditionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    TimeConditionOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.backupsearch#TimeConditionOperator', name: 'TimeConditionOperator')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#UntagResourceResponse', name: 'UntagResourceResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupsearch#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>User does not have sufficient access to perform this action.</p>", "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    BackupCreationTimeFilter.add_member(:created_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAfter', traits: {"smithy.api#documentation" => "<p>This timestamp includes recovery points only created after the specified time.</p>"}))
    BackupCreationTimeFilter.add_member(:created_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedBefore', traits: {"smithy.api#documentation" => "<p>This timestamp includes recovery points only created before the specified time.</p>"}))
    BackupCreationTimeFilter.type = Types::BackupCreationTimeFilter
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Updating or deleting a resource can cause an inconsistent state.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Identifier of the resource affected.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>Type of the resource affected.</p>", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CurrentSearchProgress.add_member(:recovery_points_scanned_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'RecoveryPointsScannedCount', traits: {"smithy.api#documentation" => "<p>This number is the sum of all backups that have been scanned so far during a search job.</p>"}))
    CurrentSearchProgress.add_member(:items_scanned_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'ItemsScannedCount', traits: {"smithy.api#documentation" => "<p>This number is the sum of all items that have been scanned so far during a search job.</p>"}))
    CurrentSearchProgress.add_member(:items_matched_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'ItemsMatchedCount', traits: {"smithy.api#documentation" => "<p>This number is the sum of all items that match the item filters in a search job in progress.</p>"}))
    CurrentSearchProgress.type = Types::CurrentSearchProgress
    EBSItemFilter.add_member(:file_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: StringConditionList, location_name: 'FilePaths', traits: {"smithy.api#documentation" => "<p>You can include 1 to 10 values.</p> <p>If one file path is included, the results will return only items that match the file path.</p> <p>If more than one file path is included, the results will return all items that match any of the file paths.</p>"}))
    EBSItemFilter.add_member(:sizes, Smithy::Schema::Shapes::ShapeRef.new(shape: LongConditionList, location_name: 'Sizes', traits: {"smithy.api#documentation" => "<p>You can include 1 to 10 values.</p> <p>If one is included, the results will return only items that match.</p> <p>If more than one is included, the results will return all items that match any of the included values.</p>"}))
    EBSItemFilter.add_member(:creation_times, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeConditionList, location_name: 'CreationTimes', traits: {"smithy.api#documentation" => "<p>You can include 1 to 10 values.</p> <p>If one is included, the results will return only items that match.</p> <p>If more than one is included, the results will return all items that match any of the included values.</p>"}))
    EBSItemFilter.add_member(:last_modification_times, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeConditionList, location_name: 'LastModificationTimes', traits: {"smithy.api#documentation" => "<p>You can include 1 to 10 values.</p> <p>If one is included, the results will return only items that match.</p> <p>If more than one is included, the results will return all items that match any of the included values.</p>"}))
    EBSItemFilter.type = Types::EBSItemFilter
    EBSItemFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EBSItemFilter)
    EBSResultItem.add_member(:backup_resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'BackupResourceArn', traits: {"smithy.api#documentation" => "<p>These are one or more items in the results that match values for the Amazon Resource Name (ARN) of recovery points returned in a search of Amazon EBS backup metadata.</p>"}))
    EBSResultItem.add_member(:source_resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SourceResourceArn', traits: {"smithy.api#documentation" => "<p>These are one or more items in the results that match values for the Amazon Resource Name (ARN) of source resources returned in a search of Amazon EBS backup metadata.</p>"}))
    EBSResultItem.add_member(:backup_vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'BackupVaultName', traits: {"smithy.api#documentation" => "<p>The name of the backup vault.</p>"}))
    EBSResultItem.add_member(:file_system_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'FileSystemIdentifier', traits: {"smithy.api#documentation" => "<p>These are one or more items in the results that match values for file systems returned in a search of Amazon EBS backup metadata.</p>"}))
    EBSResultItem.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: FilePath, location_name: 'FilePath', traits: {"smithy.api#documentation" => "<p>These are one or more items in the results that match values for file paths returned in a search of Amazon EBS backup metadata.</p>"}))
    EBSResultItem.add_member(:file_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'FileSize', traits: {"smithy.api#documentation" => "<p>These are one or more items in the results that match values for file sizes returned in a search of Amazon EBS backup metadata.</p>"}))
    EBSResultItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>These are one or more items in the results that match values for creation times returned in a search of Amazon EBS backup metadata.</p>"}))
    EBSResultItem.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>These are one or more items in the results that match values for Last Modified Time returned in a search of Amazon EBS backup metadata.</p>"}))
    EBSResultItem.type = Types::EBSResultItem
    ExportJobStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ExportJobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ExportJobStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ExportJobSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobSummary)
    ExportJobSummary.add_member(:export_job_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: 'ExportJobIdentifier', traits: {"smithy.api#documentation" => "<p>This is the unique string that identifies a specific export job.</p>", "smithy.api#required" => {}}))
    ExportJobSummary.add_member(:export_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobArn, location_name: 'ExportJobArn', traits: {"smithy.api#documentation" => "<p>This is the unique ARN (Amazon Resource Name) that belongs to the new export job.</p>"}))
    ExportJobSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the export job is one of the following:</p> <p> <code>CREATED</code>; <code>RUNNING</code>; <code>FAILED</code>; or <code>COMPLETED</code>.</p>"}))
    ExportJobSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>This is a timestamp of the time the export job was created.</p>"}))
    ExportJobSummary.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CompletionTime', traits: {"smithy.api#documentation" => "<p>This is a timestamp of the time the export job compeleted.</p>"}))
    ExportJobSummary.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>A status message is a string that is returned for an export job.</p> <p>A status message is included for any status other than <code>COMPLETED</code> without issues.</p>"}))
    ExportJobSummary.add_member(:search_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobArn, location_name: 'SearchJobArn', traits: {"smithy.api#documentation" => "<p>The unique string that identifies the Amazon Resource Name (ARN) of the specified search job.</p>"}))
    ExportJobSummary.type = Types::ExportJobSummary
    ExportSpecification.add_member(:s3_export_specification, Types::ExportSpecification::S3ExportSpecification, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ExportSpecification, location_name: 's3ExportSpecification', traits: {"smithy.api#documentation" => "<p>This specifies the destination Amazon S3 bucket for the export job. And, if included, it also specifies the destination prefix.</p>"}))
    ExportSpecification.add_member(:unknown, Types::ExportSpecification::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ExportSpecification.type = Types::ExportSpecification
    GetSearchJobInput.add_member(:search_job_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: 'SearchJobIdentifier', traits: {"smithy.api#documentation" => "<p>Required unique string that specifies the search job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSearchJobInput.type = Types::GetSearchJobInput
    GetSearchJobOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Returned name of the specified search job.</p>"}))
    GetSearchJobOutput.add_member(:search_scope_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchScopeSummary, location_name: 'SearchScopeSummary', traits: {"smithy.api#documentation" => "<p>Returned summary of the specified search job scope, including: </p> <ul> <li> <p>TotalBackupsToScanCount, the number of recovery points returned by the search.</p> </li> <li> <p>TotalItemsToScanCount, the number of items returned by the search.</p> </li> </ul>"}))
    GetSearchJobOutput.add_member(:current_search_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrentSearchProgress, location_name: 'CurrentSearchProgress', traits: {"smithy.api#documentation" => "<p>Returns numbers representing BackupsScannedCount, ItemsScanned, and ItemsMatched.</p>"}))
    GetSearchJobOutput.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>A status message will be returned for either a earch job with a status of <code>ERRORED</code> or a status of <code>COMPLETED</code> jobs with issues.</p> <p>For example, a message may say that a search contained recovery points unable to be scanned because of a permissions issue.</p>"}))
    GetSearchJobOutput.add_member(:encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: 'EncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The encryption key for the specified search job.</p> <p>Example: <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>"}))
    GetSearchJobOutput.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CompletionTime', traits: {"smithy.api#documentation" => "<p>The date and time that a search job completed, in Unix format and Coordinated Universal Time (UTC). The value of <code>CompletionTime</code> is accurate to milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>"}))
    GetSearchJobOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobState, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the specified search job.</p> <p>A search job may have one of the following statuses: <code>RUNNING</code>; <code>COMPLETED</code>; <code>STOPPED</code>; <code>FAILED</code>; <code>TIMED_OUT</code>; or <code>EXPIRED</code> .</p>", "smithy.api#required" => {}}))
    GetSearchJobOutput.add_member(:search_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchScope, location_name: 'SearchScope', traits: {"smithy.api#documentation" => "<p>The search scope is all backup properties input into a search.</p>", "smithy.api#required" => {}}))
    GetSearchJobOutput.add_member(:item_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ItemFilters, location_name: 'ItemFilters', traits: {"smithy.api#documentation" => "<p>Item Filters represent all input item properties specified when the search was created.</p>", "smithy.api#required" => {}}))
    GetSearchJobOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time that a search job was created, in Unix format and Coordinated Universal Time (UTC). The value of <code>CompletionTime</code> is accurate to milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>", "smithy.api#required" => {}}))
    GetSearchJobOutput.add_member(:search_job_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: 'SearchJobIdentifier', traits: {"smithy.api#documentation" => "<p>The unique string that identifies the specified search job.</p>", "smithy.api#required" => {}}))
    GetSearchJobOutput.add_member(:search_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobArn, location_name: 'SearchJobArn', traits: {"smithy.api#documentation" => "<p>The unique string that identifies the Amazon Resource Name (ARN) of the specified search job.</p>", "smithy.api#required" => {}}))
    GetSearchJobOutput.type = Types::GetSearchJobOutput
    GetSearchResultExportJobInput.add_member(:export_job_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: 'ExportJobIdentifier', traits: {"smithy.api#documentation" => "<p>This is the unique string that identifies a specific export job.</p> <p>Required for this operation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSearchResultExportJobInput.type = Types::GetSearchResultExportJobInput
    GetSearchResultExportJobOutput.add_member(:export_job_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: 'ExportJobIdentifier', traits: {"smithy.api#documentation" => "<p>This is the unique string that identifies the specified export job.</p>", "smithy.api#required" => {}}))
    GetSearchResultExportJobOutput.add_member(:export_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobArn, location_name: 'ExportJobArn', traits: {"smithy.api#documentation" => "<p>The unique Amazon Resource Name (ARN) that uniquely identifies the export job.</p>"}))
    GetSearchResultExportJobOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>This is the current status of the export job.</p>"}))
    GetSearchResultExportJobOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time that an export job was created, in Unix format and Coordinated Universal Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>"}))
    GetSearchResultExportJobOutput.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CompletionTime', traits: {"smithy.api#documentation" => "<p>The date and time that an export job completed, in Unix format and Coordinated Universal Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>"}))
    GetSearchResultExportJobOutput.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>A status message is a string that is returned for search job with a status of <code>FAILED</code>, along with steps to remedy and retry the operation.</p>"}))
    GetSearchResultExportJobOutput.add_member(:export_specification, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSpecification, location_name: 'ExportSpecification', traits: {"smithy.api#documentation" => "<p>The export specification consists of the destination S3 bucket to which the search results were exported, along with the destination prefix.</p>"}))
    GetSearchResultExportJobOutput.add_member(:search_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobArn, location_name: 'SearchJobArn', traits: {"smithy.api#documentation" => "<p>The unique string that identifies the Amazon Resource Name (ARN) of the specified search job.</p>"}))
    GetSearchResultExportJobOutput.type = Types::GetSearchResultExportJobOutput
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Unexpected error during processing of request.</p>", "smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>Retry the call after number of seconds.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ItemFilters.add_member(:s3_item_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ItemFilters, location_name: 'S3ItemFilters', traits: {"smithy.api#documentation" => "<p>This array can contain CreationTimes, ETags, ObjectKeys, Sizes, or VersionIds objects.</p>"}))
    ItemFilters.add_member(:ebs_item_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: EBSItemFilters, location_name: 'EBSItemFilters', traits: {"smithy.api#documentation" => "<p>This array can contain CreationTimes, FilePaths, LastModificationTimes, or Sizes objects.</p>"}))
    ItemFilters.type = Types::ItemFilters
    ListSearchJobBackupsInput.add_member(:search_job_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: 'SearchJobIdentifier', traits: {"smithy.api#documentation" => "<p>The unique string that specifies the search job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSearchJobBackupsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next item following a partial list of returned backups included in a search job.</p> <p>For example, if a request is made to return <code>MaxResults</code> number of backups, <code>NextToken</code> allows you to return more items in your list starting at the location pointed to by the next token.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSearchJobBackupsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#default" => 1000, "smithy.api#documentation" => "<p>The maximum number of resource list items to be returned.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListSearchJobBackupsInput.type = Types::ListSearchJobBackupsInput
    ListSearchJobBackupsOutput.add_member(:results, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobBackupsResults, location_name: 'Results', traits: {"smithy.api#documentation" => "<p>The recovery points returned the results of a search job</p>", "smithy.api#required" => {}}))
    ListSearchJobBackupsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next item following a partial list of returned backups included in a search job.</p> <p>For example, if a request is made to return <code>MaxResults</code> number of backups, <code>NextToken</code> allows you to return more items in your list starting at the location pointed to by the next token.</p>"}))
    ListSearchJobBackupsOutput.type = Types::ListSearchJobBackupsOutput
    ListSearchJobResultsInput.add_member(:search_job_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: 'SearchJobIdentifier', traits: {"smithy.api#documentation" => "<p>The unique string that specifies the search job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSearchJobResultsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next item following a partial list of returned search job results.</p> <p>For example, if a request is made to return <code>MaxResults</code> number of search job results, <code>NextToken</code> allows you to return more items in your list starting at the location pointed to by the next token.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSearchJobResultsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#default" => 1000, "smithy.api#documentation" => "<p>The maximum number of resource list items to be returned.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListSearchJobResultsInput.type = Types::ListSearchJobResultsInput
    ListSearchJobResultsOutput.add_member(:results, Smithy::Schema::Shapes::ShapeRef.new(shape: Results, location_name: 'Results', traits: {"smithy.api#documentation" => "<p>The results consist of either EBSResultItem or S3ResultItem.</p>", "smithy.api#required" => {}}))
    ListSearchJobResultsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next item following a partial list of search job results.</p> <p>For example, if a request is made to return <code>MaxResults</code> number of backups, <code>NextToken</code> allows you to return more items in your list starting at the location pointed to by the next token.</p>"}))
    ListSearchJobResultsOutput.type = Types::ListSearchJobResultsOutput
    ListSearchJobsInput.add_member(:by_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobState, location_name: 'ByStatus', traits: {"smithy.api#documentation" => "<p>Include this parameter to filter list by search job status.</p>", "smithy.api#httpQuery" => "Status", "smithy.api#notProperty" => {}}))
    ListSearchJobsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next item following a partial list of returned search jobs.</p> <p>For example, if a request is made to return <code>MaxResults</code> number of backups, <code>NextToken</code> allows you to return more items in your list starting at the location pointed to by the next token.</p>", "smithy.api#httpQuery" => "NextToken", "smithy.api#notProperty" => {}}))
    ListSearchJobsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#default" => 1000, "smithy.api#documentation" => "<p>The maximum number of resource list items to be returned.</p>", "smithy.api#httpQuery" => "MaxResults", "smithy.api#notProperty" => {}, "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListSearchJobsInput.type = Types::ListSearchJobsInput
    ListSearchJobsOutput.add_member(:search_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobs, location_name: 'SearchJobs', traits: {"smithy.api#documentation" => "<p>The search jobs among the list, with details of the returned search jobs.</p>", "smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    ListSearchJobsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next item following a partial list of returned backups included in a search job.</p> <p>For example, if a request is made to return <code>MaxResults</code> number of backups, <code>NextToken</code> allows you to return more items in your list starting at the location pointed to by the next token.</p>", "smithy.api#notProperty" => {}}))
    ListSearchJobsOutput.type = Types::ListSearchJobsOutput
    ListSearchResultExportJobsInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The search jobs to be included in the export job can be filtered by including this parameter.</p>", "smithy.api#httpQuery" => "Status", "smithy.api#notProperty" => {}}))
    ListSearchResultExportJobsInput.add_member(:search_job_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: 'SearchJobIdentifier', traits: {"smithy.api#documentation" => "<p>The unique string that specifies the search job.</p>", "smithy.api#httpQuery" => "SearchJobIdentifier", "smithy.api#notProperty" => {}}))
    ListSearchResultExportJobsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next item following a partial list of returned backups included in a search job.</p> <p>For example, if a request is made to return <code>MaxResults</code> number of backups, <code>NextToken</code> allows you to return more items in your list starting at the location pointed to by the next token.</p>", "smithy.api#httpQuery" => "NextToken", "smithy.api#notProperty" => {}}))
    ListSearchResultExportJobsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#default" => 1000, "smithy.api#documentation" => "<p>The maximum number of resource list items to be returned.</p>", "smithy.api#httpQuery" => "MaxResults", "smithy.api#notProperty" => {}, "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListSearchResultExportJobsInput.type = Types::ListSearchResultExportJobsInput
    ListSearchResultExportJobsOutput.add_member(:export_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobSummaries, location_name: 'ExportJobs', traits: {"smithy.api#documentation" => "<p>The operation returns the included export jobs.</p>", "smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    ListSearchResultExportJobsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next item following a partial list of returned backups included in a search job.</p> <p>For example, if a request is made to return <code>MaxResults</code> number of backups, <code>NextToken</code> allows you to return more items in your list starting at the location pointed to by the next token.</p>", "smithy.api#notProperty" => {}}))
    ListSearchResultExportJobsOutput.type = Types::ListSearchResultExportJobsOutput
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the resource.&gt;</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>List of tags returned by the operation.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LongCondition.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of an item included in one of the search item filters.</p>", "smithy.api#required" => {}}))
    LongCondition.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: LongConditionOperator, location_name: 'Operator', traits: {"smithy.api#default" => "EQUALS_TO", "smithy.api#documentation" => "<p>A string that defines what values will be returned.</p> <p>If this is included, avoid combinations of operators that will return all possible values. For example, including both <code>EQUALS_TO</code> and <code>NOT_EQUALS_TO</code> with a value of <code>4</code> will return all values.</p>"}))
    LongCondition.type = Types::LongCondition
    LongConditionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LongCondition)
    LongConditionOperator.add_member(:equals_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS_TO', traits: {"smithy.api#enumValue" => "EQUALS_TO"}))
    LongConditionOperator.add_member(:not_equals_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EQUALS_TO', traits: {"smithy.api#enumValue" => "NOT_EQUALS_TO"}))
    LongConditionOperator.add_member(:less_than_equal_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN_EQUAL_TO', traits: {"smithy.api#enumValue" => "LESS_THAN_EQUAL_TO"}))
    LongConditionOperator.add_member(:greater_than_equal_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN_EQUAL_TO', traits: {"smithy.api#enumValue" => "GREATER_THAN_EQUAL_TO"}))
    RecoveryPointArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPoint)
    ResourceArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Request references a resource which does not exist.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Hypothetical identifier of the resource affected.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>Hypothetical type of the resource affected.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    ResourceType.add_member(:ebs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EBS', traits: {"smithy.api#enumValue" => "EBS"}))
    ResourceTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType)
    ResultItem.add_member(:s3_result_item, Types::ResultItem::S3ResultItem, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ResultItem, location_name: 'S3ResultItem', traits: {"smithy.api#documentation" => "<p>These are items returned in the search results of an Amazon S3 search.</p>"}))
    ResultItem.add_member(:ebs_result_item, Types::ResultItem::EbsResultItem, Smithy::Schema::Shapes::ShapeRef.new(shape: EBSResultItem, location_name: 'EBSResultItem', traits: {"smithy.api#documentation" => "<p>These are items returned in the search results of an Amazon EBS search.</p>"}))
    ResultItem.add_member(:unknown, Types::ResultItem::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ResultItem.type = Types::ResultItem
    Results.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResultItem)
    S3ExportSpecification.add_member(:destination_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'DestinationBucket', traits: {"smithy.api#documentation" => "<p>This specifies the destination Amazon S3 bucket for the export job.</p>", "smithy.api#required" => {}}))
    S3ExportSpecification.add_member(:destination_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'DestinationPrefix', traits: {"smithy.api#documentation" => "<p>This specifies the prefix for the destination Amazon S3 bucket for the export job.</p>"}))
    S3ExportSpecification.type = Types::S3ExportSpecification
    S3ItemFilter.add_member(:object_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: StringConditionList, location_name: 'ObjectKeys', traits: {"smithy.api#documentation" => "<p>You can include 1 to 10 values.</p> <p>If one value is included, the results will return only items that match the value.</p> <p>If more than one value is included, the results will return all items that match any of the values.</p>"}))
    S3ItemFilter.add_member(:sizes, Smithy::Schema::Shapes::ShapeRef.new(shape: LongConditionList, location_name: 'Sizes', traits: {"smithy.api#documentation" => "<p>You can include 1 to 10 values.</p> <p>If one value is included, the results will return only items that match the value.</p> <p>If more than one value is included, the results will return all items that match any of the values.</p>"}))
    S3ItemFilter.add_member(:creation_times, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeConditionList, location_name: 'CreationTimes', traits: {"smithy.api#documentation" => "<p>You can include 1 to 10 values.</p> <p>If one value is included, the results will return only items that match the value.</p> <p>If more than one value is included, the results will return all items that match any of the values.</p>"}))
    S3ItemFilter.add_member(:version_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringConditionList, location_name: 'VersionIds', traits: {"smithy.api#documentation" => "<p>You can include 1 to 10 values.</p> <p>If one value is included, the results will return only items that match the value.</p> <p>If more than one value is included, the results will return all items that match any of the values.</p>"}))
    S3ItemFilter.add_member(:e_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: StringConditionList, location_name: 'ETags', traits: {"smithy.api#documentation" => "<p>You can include 1 to 10 values.</p> <p>If one value is included, the results will return only items that match the value.</p> <p>If more than one value is included, the results will return all items that match any of the values.</p>"}))
    S3ItemFilter.type = Types::S3ItemFilter
    S3ItemFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: S3ItemFilter)
    S3ResultItem.add_member(:backup_resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'BackupResourceArn', traits: {"smithy.api#documentation" => "<p>These are items in the returned results that match recovery point Amazon Resource Names (ARN) input during a search of Amazon S3 backup metadata.</p>"}))
    S3ResultItem.add_member(:source_resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SourceResourceArn', traits: {"smithy.api#documentation" => "<p>These are items in the returned results that match source Amazon Resource Names (ARN) input during a search of Amazon S3 backup metadata.</p>"}))
    S3ResultItem.add_member(:backup_vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'BackupVaultName', traits: {"smithy.api#documentation" => "<p>The name of the backup vault.</p>"}))
    S3ResultItem.add_member(:object_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectKey, location_name: 'ObjectKey', traits: {"smithy.api#documentation" => "<p>This is one or more items returned in the results of a search of Amazon S3 backup metadata that match the values input for object key.</p>"}))
    S3ResultItem.add_member(:object_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'ObjectSize', traits: {"smithy.api#documentation" => "<p>These are items in the returned results that match values for object size(s) input during a search of Amazon S3 backup metadata.</p>"}))
    S3ResultItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>These are one or more items in the returned results that match values for item creation time input during a search of Amazon S3 backup metadata.</p>"}))
    S3ResultItem.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>These are one or more items in the returned results that match values for ETags input during a search of Amazon S3 backup metadata.</p>"}))
    S3ResultItem.add_member(:version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'VersionId', traits: {"smithy.api#documentation" => "<p>These are one or more items in the returned results that match values for version IDs input during a search of Amazon S3 backup metadata.</p>"}))
    S3ResultItem.type = Types::S3ResultItem
    SearchJobBackupsResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobState, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>This is the status of the search job backup result.</p>"}))
    SearchJobBackupsResult.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>This is the status message included with the results.</p>"}))
    SearchJobBackupsResult.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>This is the resource type of the search.</p>"}))
    SearchJobBackupsResult.add_member(:backup_resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'BackupResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the backup resources.</p>"}))
    SearchJobBackupsResult.add_member(:source_resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SourceResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the source resources.</p>"}))
    SearchJobBackupsResult.add_member(:index_creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'IndexCreationTime', traits: {"smithy.api#documentation" => "<p>This is the creation time of the backup index.</p>"}))
    SearchJobBackupsResult.add_member(:backup_creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'BackupCreationTime', traits: {"smithy.api#documentation" => "<p>This is the creation time of the backup (recovery point).</p>"}))
    SearchJobBackupsResult.type = Types::SearchJobBackupsResult
    SearchJobBackupsResults.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobBackupsResult)
    SearchJobState.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    SearchJobState.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    SearchJobState.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    SearchJobState.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    SearchJobState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    SearchJobSummary.add_member(:search_job_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: 'SearchJobIdentifier', traits: {"smithy.api#documentation" => "<p>The unique string that specifies the search job.</p>"}))
    SearchJobSummary.add_member(:search_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobArn, location_name: 'SearchJobArn', traits: {"smithy.api#documentation" => "<p>The unique string that identifies the Amazon Resource Name (ARN) of the specified search job.</p>"}))
    SearchJobSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>This is the name of the search job.</p>"}))
    SearchJobSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobState, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>This is the status of the search job.</p>"}))
    SearchJobSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>This is the creation time of the search job.</p>"}))
    SearchJobSummary.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CompletionTime', traits: {"smithy.api#documentation" => "<p>This is the completion time of the search job.</p>"}))
    SearchJobSummary.add_member(:search_scope_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchScopeSummary, location_name: 'SearchScopeSummary', traits: {"smithy.api#documentation" => "<p>Returned summary of the specified search job scope, including: </p> <ul> <li> <p>TotalBackupsToScanCount, the number of recovery points returned by the search.</p> </li> <li> <p>TotalItemsToScanCount, the number of items returned by the search.</p> </li> </ul>"}))
    SearchJobSummary.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>A status message will be returned for either a earch job with a status of <code>ERRORED</code> or a status of <code>COMPLETED</code> jobs with issues.</p> <p>For example, a message may say that a search contained recovery points unable to be scanned because of a permissions issue.</p>"}))
    SearchJobSummary.type = Types::SearchJobSummary
    SearchJobs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobSummary)
    SearchScope.add_member(:backup_resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeList, location_name: 'BackupResourceTypes', traits: {"smithy.api#documentation" => "<p>The resource types included in a search.</p> <p>Eligible resource types include S3 and EBS.</p>", "smithy.api#required" => {}}))
    SearchScope.add_member(:backup_resource_creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: BackupCreationTimeFilter, location_name: 'BackupResourceCreationTime', traits: {"smithy.api#documentation" => "<p>This is the time a backup resource was created.</p>"}))
    SearchScope.add_member(:source_resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnList, location_name: 'SourceResourceArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the source resources.</p>"}))
    SearchScope.add_member(:backup_resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPointArnList, location_name: 'BackupResourceArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the backup resources.</p>"}))
    SearchScope.add_member(:backup_resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'BackupResourceTags', traits: {"smithy.api#documentation" => "<p>These are one or more tags on the backup (recovery point).</p>"}))
    SearchScope.type = Types::SearchScope
    SearchScopeSummary.add_member(:total_recovery_points_to_scan_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'TotalRecoveryPointsToScanCount', traits: {"smithy.api#documentation" => "<p>This is the count of the total number of backups that will be scanned in a search.</p>"}))
    SearchScopeSummary.add_member(:total_items_to_scan_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'TotalItemsToScanCount', traits: {"smithy.api#documentation" => "<p>This is the count of the total number of items that will be scanned in a search.</p>"}))
    SearchScopeSummary.type = Types::SearchScopeSummary
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>This request was not successful due to a service quota exceeding limits.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Identifier of the resource.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>Type of resource.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>This is the code unique to the originating service with the quota.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>This is the code specific to the quota type.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StartSearchJobInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>List of tags returned by the operation.</p>"}))
    StartSearchJobInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Include alphanumeric characters to create a name for this search job.</p>", "smithy.api#length" => {"max" => 500}}))
    StartSearchJobInput.add_member(:encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: 'EncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The encryption key for the specified search job.</p>"}))
    StartSearchJobInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Include this parameter to allow multiple identical calls for idempotency.</p> <p>A client token is valid for 8 hours after the first request that uses it is completed. After this time, any request with the same token is treated as a new request.</p>"}))
    StartSearchJobInput.add_member(:search_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchScope, location_name: 'SearchScope', traits: {"smithy.api#documentation" => "<p>This object can contain BackupResourceTypes, BackupResourceArns, BackupResourceCreationTime, BackupResourceTags, and SourceResourceArns to filter the recovery points returned by the search job.</p>", "smithy.api#required" => {}}))
    StartSearchJobInput.add_member(:item_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ItemFilters, location_name: 'ItemFilters', traits: {"smithy.api#documentation" => "<p>Item Filters represent all input item properties specified when the search was created.</p> <p>Contains either EBSItemFilters or S3ItemFilters</p>"}))
    StartSearchJobInput.type = Types::StartSearchJobInput
    StartSearchJobOutput.add_member(:search_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobArn, location_name: 'SearchJobArn', traits: {"smithy.api#documentation" => "<p>The unique string that identifies the Amazon Resource Name (ARN) of the specified search job.</p>"}))
    StartSearchJobOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time that a job was created, in Unix format and Coordinated Universal Time (UTC). The value of <code>CompletionTime</code> is accurate to milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>"}))
    StartSearchJobOutput.add_member(:search_job_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: 'SearchJobIdentifier', traits: {"smithy.api#documentation" => "<p>The unique string that specifies the search job.</p>", "smithy.api#notProperty" => {}}))
    StartSearchJobOutput.type = Types::StartSearchJobOutput
    StartSearchResultExportJobInput.add_member(:search_job_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: 'SearchJobIdentifier', traits: {"smithy.api#documentation" => "<p>The unique string that specifies the search job.</p>", "smithy.api#required" => {}}))
    StartSearchResultExportJobInput.add_member(:export_specification, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSpecification, location_name: 'ExportSpecification', traits: {"smithy.api#documentation" => "<p>This specification contains a required string of the destination bucket; optionally, you can include the destination prefix.</p>", "smithy.api#required" => {}}))
    StartSearchResultExportJobInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Include this parameter to allow multiple identical calls for idempotency.</p> <p>A client token is valid for 8 hours after the first request that uses it is completed. After this time, any request with the same token is treated as a new request.</p>"}))
    StartSearchResultExportJobInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Optional tags to include. A tag is a key-value pair you can use to manage, filter, and search for your resources. Allowed characters include UTF-8 letters, numbers, spaces, and the following characters: + - = . _ : /. </p>"}))
    StartSearchResultExportJobInput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>This parameter specifies the role ARN used to start the search results export jobs.</p>"}))
    StartSearchResultExportJobInput.type = Types::StartSearchResultExportJobInput
    StartSearchResultExportJobOutput.add_member(:export_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobArn, location_name: 'ExportJobArn', traits: {"smithy.api#documentation" => "<p>This is the unique ARN (Amazon Resource Name) that belongs to the new export job.</p>"}))
    StartSearchResultExportJobOutput.add_member(:export_job_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: 'ExportJobIdentifier', traits: {"smithy.api#documentation" => "<p>This is the unique identifier that specifies the new export job.</p>", "smithy.api#required" => {}}))
    StartSearchResultExportJobOutput.type = Types::StartSearchResultExportJobOutput
    StopSearchJobInput.add_member(:search_job_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: 'SearchJobIdentifier', traits: {"smithy.api#documentation" => "<p>The unique string that specifies the search job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopSearchJobInput.type = Types::StopSearchJobInput
    StopSearchJobOutput.type = Types::StopSearchJobOutput
    StringCondition.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the string.</p>", "smithy.api#required" => {}}))
    StringCondition.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: StringConditionOperator, location_name: 'Operator', traits: {"smithy.api#default" => "EQUALS_TO", "smithy.api#documentation" => "<p>A string that defines what values will be returned.</p> <p>If this is included, avoid combinations of operators that will return all possible values. For example, including both <code>EQUALS_TO</code> and <code>NOT_EQUALS_TO</code> with a value of <code>4</code> will return all values.</p>"}))
    StringCondition.type = Types::StringCondition
    StringConditionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StringCondition)
    StringConditionOperator.add_member(:equals_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS_TO', traits: {"smithy.api#enumValue" => "EQUALS_TO"}))
    StringConditionOperator.add_member(:not_equals_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EQUALS_TO', traits: {"smithy.api#enumValue" => "NOT_EQUALS_TO"}))
    StringConditionOperator.add_member(:contains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    StringConditionOperator.add_member(:does_not_contain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOES_NOT_CONTAIN', traits: {"smithy.api#enumValue" => "DOES_NOT_CONTAIN"}))
    StringConditionOperator.add_member(:begins_with, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEGINS_WITH', traits: {"smithy.api#enumValue" => "BEGINS_WITH"}))
    StringConditionOperator.add_member(:ends_with, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENDS_WITH', traits: {"smithy.api#enumValue" => "ENDS_WITH"}))
    StringConditionOperator.add_member(:does_not_begin_with, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOES_NOT_BEGIN_WITH', traits: {"smithy.api#enumValue" => "DOES_NOT_BEGIN_WITH"}))
    StringConditionOperator.add_member(:does_not_end_with, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOES_NOT_END_WITH', traits: {"smithy.api#enumValue" => "DOES_NOT_END_WITH"}))
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the resource.</p> <p>This is the resource that will have the indicated tags.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Required tags to include. A tag is a key-value pair you can use to manage, filter, and search for your resources. Allowed characters include UTF-8 letters, numbers, spaces, and the following characters: + - = . _ : /. </p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Request was unsuccessful due to request throttling.</p>", "smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>This is the code unique to the originating service.</p>"}))
    ThrottlingException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>This is the code unique to the originating service with the quota.</p>"}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>Retry the call after number of seconds.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TimeCondition.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>This is the timestamp value of the time condition.</p>", "smithy.api#required" => {}}))
    TimeCondition.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeConditionOperator, location_name: 'Operator', traits: {"smithy.api#default" => "EQUALS_TO", "smithy.api#documentation" => "<p>A string that defines what values will be returned.</p> <p>If this is included, avoid combinations of operators that will return all possible values. For example, including both <code>EQUALS_TO</code> and <code>NOT_EQUALS_TO</code> with a value of <code>4</code> will return all values.</p>"}))
    TimeCondition.type = Types::TimeCondition
    TimeConditionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TimeCondition)
    TimeConditionOperator.add_member(:equals_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS_TO', traits: {"smithy.api#enumValue" => "EQUALS_TO"}))
    TimeConditionOperator.add_member(:not_equals_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EQUALS_TO', traits: {"smithy.api#enumValue" => "NOT_EQUALS_TO"}))
    TimeConditionOperator.add_member(:less_than_equal_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN_EQUAL_TO', traits: {"smithy.api#enumValue" => "LESS_THAN_EQUAL_TO"}))
    TimeConditionOperator.add_member(:greater_than_equal_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN_EQUAL_TO', traits: {"smithy.api#enumValue" => "GREATER_THAN_EQUAL_TO"}))
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the resource where you want to remove tags.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>This required parameter contains the tag keys you want to remove from the source.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The input fails to satisfy the constraints specified by an Amazon service.</p>", "smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    CryoBackupSearchService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.backupsearch#CryoBackupSearchService"
      service.name = "CryoBackupSearchService"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "BackupSearch", "arnNamespace" => "backup-search", "endpointPrefix" => "backup-search", "cloudTrailEventSource" => "backup.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "backup-search"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amzn-requestid", "x-amz-apigw-id", "date"]}, "smithy.api#title" => "AWS Backup Search"}
      service.add_operation(:get_search_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#GetSearchJob"
        operation.name = "GetSearchJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSearchJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSearchJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/search-jobs/{SearchJobIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_search_result_export_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#GetSearchResultExportJob"
        operation.name = "GetSearchResultExportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSearchResultExportJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSearchResultExportJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/export-search-jobs/{ExportJobIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_search_job_backups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#ListSearchJobBackups"
        operation.name = "ListSearchJobBackups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSearchJobBackupsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSearchJobBackupsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/search-jobs/{SearchJobIdentifier}/backups"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSearchJobBackups.new
      end)
      service.add_operation(:list_search_job_results, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#ListSearchJobResults"
        operation.name = "ListSearchJobResults"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSearchJobResultsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSearchJobResultsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/search-jobs/{SearchJobIdentifier}/search-results"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSearchJobResults.new
      end)
      service.add_operation(:list_search_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#ListSearchJobs"
        operation.name = "ListSearchJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSearchJobsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSearchJobsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/search-jobs"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListSearchJobsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListSearchJobs.new
      end)
      service.add_operation(:list_search_result_export_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#ListSearchResultExportJobs"
        operation.name = "ListSearchResultExportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSearchResultExportJobsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSearchResultExportJobsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/export-search-jobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSearchResultExportJobs.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{ResourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:start_search_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#StartSearchJob"
        operation.name = "StartSearchJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSearchJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSearchJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/search-jobs"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_search_result_export_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#StartSearchResultExportJob"
        operation.name = "StartSearchResultExportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSearchResultExportJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSearchResultExportJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/export-search-jobs"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_search_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#StopSearchJob"
        operation.name = "StopSearchJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopSearchJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopSearchJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/search-jobs/{SearchJobIdentifier}/actions/cancel"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{ResourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{ResourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
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
