# frozen_string_literal: true

# This is generated code!

module Aws::BackupSearch
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    BackupCreationTimeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#BackupCreationTimeFilter", name: "BackupCreationTimeFilter")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CurrentSearchProgress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#CurrentSearchProgress", name: "CurrentSearchProgress")
    EBSItemFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#EBSItemFilter", name: "EBSItemFilter")
    EBSItemFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupsearch#EBSItemFilters", name: "EBSItemFilters", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    EBSResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#EBSResultItem", name: "EBSResultItem")
    EncryptionKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupsearch#EncryptionKeyArn", name: "EncryptionKeyArn", traits: {"aws.api#arnReference" => {"type" => "AWS::KMS::Key"}})
    ExportJobArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupsearch#ExportJobArn", name: "ExportJobArn", traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.backupsearch#CryoBackupSearchService"}})
    ExportJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backupsearch#ExportJobStatus", name: "ExportJobStatus")
    ExportJobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupsearch#ExportJobSummaries", name: "ExportJobSummaries")
    ExportJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#ExportJobSummary", name: "ExportJobSummary")
    ExportSpecification = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.backupsearch#ExportSpecification", name: "ExportSpecification")
    FilePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupsearch#FilePath", name: "FilePath", traits: {"smithy.api#sensitive" => {}})
    GenericId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupsearch#GenericId", name: "GenericId")
    GetSearchJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#GetSearchJobInput", name: "GetSearchJobInput")
    GetSearchJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#GetSearchJobOutput", name: "GetSearchJobOutput")
    GetSearchResultExportJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#GetSearchResultExportJobInput", name: "GetSearchResultExportJobInput")
    GetSearchResultExportJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#GetSearchResultExportJobOutput", name: "GetSearchResultExportJobOutput")
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupsearch#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(?:aws|aws-cn|aws-us-gov):iam::[a-z0-9-]+:role/(.+)$"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ItemFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#ItemFilters", name: "ItemFilters")
    ListSearchJobBackupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#ListSearchJobBackupsInput", name: "ListSearchJobBackupsInput")
    ListSearchJobBackupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#ListSearchJobBackupsOutput", name: "ListSearchJobBackupsOutput")
    ListSearchJobResultsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#ListSearchJobResultsInput", name: "ListSearchJobResultsInput")
    ListSearchJobResultsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#ListSearchJobResultsOutput", name: "ListSearchJobResultsOutput")
    ListSearchJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#ListSearchJobsInput", name: "ListSearchJobsInput")
    ListSearchJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#ListSearchJobsOutput", name: "ListSearchJobsOutput")
    ListSearchResultExportJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#ListSearchResultExportJobsInput", name: "ListSearchResultExportJobsInput")
    ListSearchResultExportJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#ListSearchResultExportJobsOutput", name: "ListSearchResultExportJobsOutput")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LongCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#LongCondition", name: "LongCondition")
    LongConditionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupsearch#LongConditionList", name: "LongConditionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    LongConditionOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backupsearch#LongConditionOperator", name: "LongConditionOperator")
    ObjectKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupsearch#ObjectKey", name: "ObjectKey", traits: {"smithy.api#sensitive" => {}})
    RecoveryPoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupsearch#RecoveryPoint", name: "RecoveryPoint", traits: {"aws.api#arnReference" => {"type" => "AWS::Backup::RecoveryPoint"}})
    RecoveryPointArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupsearch#RecoveryPointArnList", name: "RecoveryPointArnList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ResourceArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupsearch#ResourceArnList", name: "ResourceArnList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backupsearch#ResourceType", name: "ResourceType")
    ResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupsearch#ResourceTypeList", name: "ResourceTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ResultItem = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.backupsearch#ResultItem", name: "ResultItem")
    Results = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupsearch#Results", name: "Results")
    S3ExportSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#S3ExportSpecification", name: "S3ExportSpecification")
    S3ItemFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#S3ItemFilter", name: "S3ItemFilter")
    S3ItemFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupsearch#S3ItemFilters", name: "S3ItemFilters", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    S3ResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#S3ResultItem", name: "S3ResultItem")
    SearchJobArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupsearch#SearchJobArn", name: "SearchJobArn", traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.backupsearch#CryoBackupSearchService"}})
    SearchJobBackupsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#SearchJobBackupsResult", name: "SearchJobBackupsResult")
    SearchJobBackupsResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupsearch#SearchJobBackupsResults", name: "SearchJobBackupsResults")
    SearchJobState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backupsearch#SearchJobState", name: "SearchJobState")
    SearchJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#SearchJobSummary", name: "SearchJobSummary")
    SearchJobs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupsearch#SearchJobs", name: "SearchJobs")
    SearchScope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#SearchScope", name: "SearchScope")
    SearchScopeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#SearchScopeSummary", name: "SearchScopeSummary")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StartSearchJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#StartSearchJobInput", name: "StartSearchJobInput")
    StartSearchJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#StartSearchJobOutput", name: "StartSearchJobOutput")
    StartSearchResultExportJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#StartSearchResultExportJobInput", name: "StartSearchResultExportJobInput")
    StartSearchResultExportJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#StartSearchResultExportJobOutput", name: "StartSearchResultExportJobOutput")
    StopSearchJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#StopSearchJobInput", name: "StopSearchJobInput")
    StopSearchJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#StopSearchJobOutput", name: "StopSearchJobOutput")
    StringCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#StringCondition", name: "StringCondition")
    StringConditionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupsearch#StringConditionList", name: "StringConditionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    StringConditionOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backupsearch#StringConditionOperator", name: "StringConditionOperator")
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupsearch#TagKeys", name: "TagKeys")
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.backupsearch#TagMap", name: "TagMap", traits: {"smithy.api#sparse" => {}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#TagResourceResponse", name: "TagResourceResponse")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TimeCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#TimeCondition", name: "TimeCondition")
    TimeConditionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupsearch#TimeConditionList", name: "TimeConditionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    TimeConditionOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.backupsearch#TimeConditionOperator", name: "TimeConditionOperator")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#UntagResourceResponse", name: "UntagResourceResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupsearch#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    BackupCreationTimeFilter.add_member(:created_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CreatedAfter"))
    BackupCreationTimeFilter.add_member(:created_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CreatedBefore"))
    BackupCreationTimeFilter.type = Types::BackupCreationTimeFilter
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CurrentSearchProgress.add_member(:recovery_points_scanned_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "RecoveryPointsScannedCount"))
    CurrentSearchProgress.add_member(:items_scanned_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "ItemsScannedCount"))
    CurrentSearchProgress.add_member(:items_matched_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "ItemsMatchedCount"))
    CurrentSearchProgress.type = Types::CurrentSearchProgress
    EBSItemFilter.add_member(:file_paths, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringConditionList, location_name: "FilePaths"))
    EBSItemFilter.add_member(:sizes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongConditionList, location_name: "Sizes"))
    EBSItemFilter.add_member(:creation_times, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeConditionList, location_name: "CreationTimes"))
    EBSItemFilter.add_member(:last_modification_times, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeConditionList, location_name: "LastModificationTimes"))
    EBSItemFilter.type = Types::EBSItemFilter
    EBSItemFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EBSItemFilter)
    EBSResultItem.add_member(:backup_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "BackupResourceArn"))
    EBSResultItem.add_member(:source_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SourceResourceArn"))
    EBSResultItem.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "BackupVaultName"))
    EBSResultItem.add_member(:file_system_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FileSystemIdentifier"))
    EBSResultItem.add_member(:file_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilePath, location_name: "FilePath"))
    EBSResultItem.add_member(:file_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "FileSize"))
    EBSResultItem.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CreationTime"))
    EBSResultItem.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "LastModifiedTime"))
    EBSResultItem.type = Types::EBSResultItem
    ExportJobStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ExportJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ExportJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ExportJobSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobSummary)
    ExportJobSummary.add_member(:export_job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: "ExportJobIdentifier", traits: {"smithy.api#required" => {}}))
    ExportJobSummary.add_member(:export_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobArn, location_name: "ExportJobArn"))
    ExportJobSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobStatus, location_name: "Status"))
    ExportJobSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CreationTime"))
    ExportJobSummary.add_member(:completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CompletionTime"))
    ExportJobSummary.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "StatusMessage"))
    ExportJobSummary.add_member(:search_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobArn, location_name: "SearchJobArn"))
    ExportJobSummary.type = Types::ExportJobSummary
    ExportSpecification.add_member(:s3_export_specification, Types::ExportSpecification::S3ExportSpecification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ExportSpecification, location_name: "s3ExportSpecification"))
    ExportSpecification.add_member(:unknown, Types::ExportSpecification::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ExportSpecification.type = Types::ExportSpecification
    GetSearchJobInput.add_member(:search_job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: "SearchJobIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSearchJobInput.type = Types::GetSearchJobInput
    GetSearchJobOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name"))
    GetSearchJobOutput.add_member(:search_scope_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchScopeSummary, location_name: "SearchScopeSummary"))
    GetSearchJobOutput.add_member(:current_search_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrentSearchProgress, location_name: "CurrentSearchProgress"))
    GetSearchJobOutput.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "StatusMessage"))
    GetSearchJobOutput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: "EncryptionKeyArn"))
    GetSearchJobOutput.add_member(:completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CompletionTime"))
    GetSearchJobOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobState, location_name: "Status", traits: {"smithy.api#required" => {}}))
    GetSearchJobOutput.add_member(:search_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchScope, location_name: "SearchScope", traits: {"smithy.api#required" => {}}))
    GetSearchJobOutput.add_member(:item_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemFilters, location_name: "ItemFilters", traits: {"smithy.api#required" => {}}))
    GetSearchJobOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CreationTime", traits: {"smithy.api#required" => {}}))
    GetSearchJobOutput.add_member(:search_job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: "SearchJobIdentifier", traits: {"smithy.api#required" => {}}))
    GetSearchJobOutput.add_member(:search_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobArn, location_name: "SearchJobArn", traits: {"smithy.api#required" => {}}))
    GetSearchJobOutput.type = Types::GetSearchJobOutput
    GetSearchResultExportJobInput.add_member(:export_job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: "ExportJobIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSearchResultExportJobInput.type = Types::GetSearchResultExportJobInput
    GetSearchResultExportJobOutput.add_member(:export_job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: "ExportJobIdentifier", traits: {"smithy.api#required" => {}}))
    GetSearchResultExportJobOutput.add_member(:export_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobArn, location_name: "ExportJobArn"))
    GetSearchResultExportJobOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobStatus, location_name: "Status"))
    GetSearchResultExportJobOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CreationTime"))
    GetSearchResultExportJobOutput.add_member(:completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CompletionTime"))
    GetSearchResultExportJobOutput.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "StatusMessage"))
    GetSearchResultExportJobOutput.add_member(:export_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSpecification, location_name: "ExportSpecification"))
    GetSearchResultExportJobOutput.add_member(:search_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobArn, location_name: "SearchJobArn"))
    GetSearchResultExportJobOutput.type = Types::GetSearchResultExportJobOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ItemFilters.add_member(:s3_item_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ItemFilters, location_name: "S3ItemFilters"))
    ItemFilters.add_member(:ebs_item_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EBSItemFilters, location_name: "EBSItemFilters"))
    ItemFilters.type = Types::ItemFilters
    ListSearchJobBackupsInput.add_member(:search_job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: "SearchJobIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSearchJobBackupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSearchJobBackupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxResults", traits: {"smithy.api#default" => 1000, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListSearchJobBackupsInput.type = Types::ListSearchJobBackupsInput
    ListSearchJobBackupsOutput.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobBackupsResults, location_name: "Results", traits: {"smithy.api#required" => {}}))
    ListSearchJobBackupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken"))
    ListSearchJobBackupsOutput.type = Types::ListSearchJobBackupsOutput
    ListSearchJobResultsInput.add_member(:search_job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: "SearchJobIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSearchJobResultsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSearchJobResultsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxResults", traits: {"smithy.api#default" => 1000, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListSearchJobResultsInput.type = Types::ListSearchJobResultsInput
    ListSearchJobResultsOutput.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Results, location_name: "Results", traits: {"smithy.api#required" => {}}))
    ListSearchJobResultsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken"))
    ListSearchJobResultsOutput.type = Types::ListSearchJobResultsOutput
    ListSearchJobsInput.add_member(:by_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobState, location_name: "ByStatus", traits: {"smithy.api#httpQuery" => "Status", "smithy.api#notProperty" => {}}))
    ListSearchJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken", "smithy.api#notProperty" => {}}))
    ListSearchJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxResults", traits: {"smithy.api#default" => 1000, "smithy.api#httpQuery" => "MaxResults", "smithy.api#notProperty" => {}, "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListSearchJobsInput.type = Types::ListSearchJobsInput
    ListSearchJobsOutput.add_member(:search_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobs, location_name: "SearchJobs", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    ListSearchJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken", traits: {"smithy.api#notProperty" => {}}))
    ListSearchJobsOutput.type = Types::ListSearchJobsOutput
    ListSearchResultExportJobsInput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobStatus, location_name: "Status", traits: {"smithy.api#httpQuery" => "Status", "smithy.api#notProperty" => {}}))
    ListSearchResultExportJobsInput.add_member(:search_job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: "SearchJobIdentifier", traits: {"smithy.api#httpQuery" => "SearchJobIdentifier", "smithy.api#notProperty" => {}}))
    ListSearchResultExportJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken", "smithy.api#notProperty" => {}}))
    ListSearchResultExportJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxResults", traits: {"smithy.api#default" => 1000, "smithy.api#httpQuery" => "MaxResults", "smithy.api#notProperty" => {}, "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListSearchResultExportJobsInput.type = Types::ListSearchResultExportJobsInput
    ListSearchResultExportJobsOutput.add_member(:export_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobSummaries, location_name: "ExportJobs", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    ListSearchResultExportJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken", traits: {"smithy.api#notProperty" => {}}))
    ListSearchResultExportJobsOutput.type = Types::ListSearchResultExportJobsOutput
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LongCondition.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "Value", traits: {"smithy.api#required" => {}}))
    LongCondition.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongConditionOperator, location_name: "Operator", traits: {"smithy.api#default" => "EQUALS_TO"}))
    LongCondition.type = Types::LongCondition
    LongConditionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongCondition)
    LongConditionOperator.add_member(:equals_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUALS_TO", traits: {"smithy.api#enumValue" => "EQUALS_TO"}))
    LongConditionOperator.add_member(:not_equals_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_EQUALS_TO", traits: {"smithy.api#enumValue" => "NOT_EQUALS_TO"}))
    LongConditionOperator.add_member(:less_than_equal_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN_EQUAL_TO", traits: {"smithy.api#enumValue" => "LESS_THAN_EQUAL_TO"}))
    LongConditionOperator.add_member(:greater_than_equal_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN_EQUAL_TO", traits: {"smithy.api#enumValue" => "GREATER_THAN_EQUAL_TO"}))
    RecoveryPointArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPoint)
    ResourceArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    ResourceType.add_member(:ebs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EBS", traits: {"smithy.api#enumValue" => "EBS"}))
    ResourceTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType)
    ResultItem.add_member(:s3_result_item, Types::ResultItem::S3ResultItem, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ResultItem, location_name: "S3ResultItem"))
    ResultItem.add_member(:ebs_result_item, Types::ResultItem::EBSResultItem, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EBSResultItem, location_name: "EBSResultItem"))
    ResultItem.add_member(:unknown, Types::ResultItem::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ResultItem.type = Types::ResultItem
    Results.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultItem)
    S3ExportSpecification.add_member(:destination_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "DestinationBucket", traits: {"smithy.api#required" => {}}))
    S3ExportSpecification.add_member(:destination_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "DestinationPrefix"))
    S3ExportSpecification.type = Types::S3ExportSpecification
    S3ItemFilter.add_member(:object_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringConditionList, location_name: "ObjectKeys"))
    S3ItemFilter.add_member(:sizes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongConditionList, location_name: "Sizes"))
    S3ItemFilter.add_member(:creation_times, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeConditionList, location_name: "CreationTimes"))
    S3ItemFilter.add_member(:version_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringConditionList, location_name: "VersionIds"))
    S3ItemFilter.add_member(:e_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringConditionList, location_name: "ETags"))
    S3ItemFilter.type = Types::S3ItemFilter
    S3ItemFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ItemFilter)
    S3ResultItem.add_member(:backup_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "BackupResourceArn"))
    S3ResultItem.add_member(:source_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SourceResourceArn"))
    S3ResultItem.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "BackupVaultName"))
    S3ResultItem.add_member(:object_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectKey, location_name: "ObjectKey"))
    S3ResultItem.add_member(:object_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "ObjectSize"))
    S3ResultItem.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CreationTime"))
    S3ResultItem.add_member(:e_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ETag"))
    S3ResultItem.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "VersionId"))
    S3ResultItem.type = Types::S3ResultItem
    SearchJobBackupsResult.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobState, location_name: "Status"))
    SearchJobBackupsResult.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "StatusMessage"))
    SearchJobBackupsResult.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    SearchJobBackupsResult.add_member(:backup_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "BackupResourceArn"))
    SearchJobBackupsResult.add_member(:source_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SourceResourceArn"))
    SearchJobBackupsResult.add_member(:index_creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "IndexCreationTime"))
    SearchJobBackupsResult.add_member(:backup_creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "BackupCreationTime"))
    SearchJobBackupsResult.type = Types::SearchJobBackupsResult
    SearchJobBackupsResults.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobBackupsResult)
    SearchJobState.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    SearchJobState.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    SearchJobState.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    SearchJobState.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    SearchJobState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    SearchJobSummary.add_member(:search_job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: "SearchJobIdentifier"))
    SearchJobSummary.add_member(:search_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobArn, location_name: "SearchJobArn"))
    SearchJobSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name"))
    SearchJobSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobState, location_name: "Status"))
    SearchJobSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CreationTime"))
    SearchJobSummary.add_member(:completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CompletionTime"))
    SearchJobSummary.add_member(:search_scope_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchScopeSummary, location_name: "SearchScopeSummary"))
    SearchJobSummary.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "StatusMessage"))
    SearchJobSummary.type = Types::SearchJobSummary
    SearchJobs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobSummary)
    SearchScope.add_member(:backup_resource_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeList, location_name: "BackupResourceTypes", traits: {"smithy.api#required" => {}}))
    SearchScope.add_member(:backup_resource_creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupCreationTimeFilter, location_name: "BackupResourceCreationTime"))
    SearchScope.add_member(:source_resource_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "SourceResourceArns"))
    SearchScope.add_member(:backup_resource_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPointArnList, location_name: "BackupResourceArns"))
    SearchScope.add_member(:backup_resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "BackupResourceTags"))
    SearchScope.type = Types::SearchScope
    SearchScopeSummary.add_member(:total_recovery_points_to_scan_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "TotalRecoveryPointsToScanCount"))
    SearchScopeSummary.add_member(:total_items_to_scan_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "TotalItemsToScanCount"))
    SearchScopeSummary.type = Types::SearchScopeSummary
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StartSearchJobInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    StartSearchJobInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#length" => {"max" => 500}}))
    StartSearchJobInput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: "EncryptionKeyArn"))
    StartSearchJobInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ClientToken"))
    StartSearchJobInput.add_member(:search_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchScope, location_name: "SearchScope", traits: {"smithy.api#required" => {}}))
    StartSearchJobInput.add_member(:item_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemFilters, location_name: "ItemFilters"))
    StartSearchJobInput.type = Types::StartSearchJobInput
    StartSearchJobOutput.add_member(:search_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobArn, location_name: "SearchJobArn"))
    StartSearchJobOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CreationTime"))
    StartSearchJobOutput.add_member(:search_job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: "SearchJobIdentifier", traits: {"smithy.api#notProperty" => {}}))
    StartSearchJobOutput.type = Types::StartSearchJobOutput
    StartSearchResultExportJobInput.add_member(:search_job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: "SearchJobIdentifier", traits: {"smithy.api#required" => {}}))
    StartSearchResultExportJobInput.add_member(:export_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSpecification, location_name: "ExportSpecification", traits: {"smithy.api#required" => {}}))
    StartSearchResultExportJobInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ClientToken"))
    StartSearchResultExportJobInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    StartSearchResultExportJobInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "RoleArn"))
    StartSearchResultExportJobInput.type = Types::StartSearchResultExportJobInput
    StartSearchResultExportJobOutput.add_member(:export_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobArn, location_name: "ExportJobArn"))
    StartSearchResultExportJobOutput.add_member(:export_job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: "ExportJobIdentifier", traits: {"smithy.api#required" => {}}))
    StartSearchResultExportJobOutput.type = Types::StartSearchResultExportJobOutput
    StopSearchJobInput.add_member(:search_job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericId, location_name: "SearchJobIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopSearchJobInput.type = Types::StopSearchJobInput
    StopSearchJobOutput.type = Types::StopSearchJobOutput
    StringCondition.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Value", traits: {"smithy.api#required" => {}}))
    StringCondition.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringConditionOperator, location_name: "Operator", traits: {"smithy.api#default" => "EQUALS_TO"}))
    StringCondition.type = Types::StringCondition
    StringConditionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringCondition)
    StringConditionOperator.add_member(:equals_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUALS_TO", traits: {"smithy.api#enumValue" => "EQUALS_TO"}))
    StringConditionOperator.add_member(:not_equals_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_EQUALS_TO", traits: {"smithy.api#enumValue" => "NOT_EQUALS_TO"}))
    StringConditionOperator.add_member(:contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    StringConditionOperator.add_member(:does_not_contain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOES_NOT_CONTAIN", traits: {"smithy.api#enumValue" => "DOES_NOT_CONTAIN"}))
    StringConditionOperator.add_member(:begins_with, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BEGINS_WITH", traits: {"smithy.api#enumValue" => "BEGINS_WITH"}))
    StringConditionOperator.add_member(:ends_with, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENDS_WITH", traits: {"smithy.api#enumValue" => "ENDS_WITH"}))
    StringConditionOperator.add_member(:does_not_begin_with, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOES_NOT_BEGIN_WITH", traits: {"smithy.api#enumValue" => "DOES_NOT_BEGIN_WITH"}))
    StringConditionOperator.add_member(:does_not_end_with, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOES_NOT_END_WITH", traits: {"smithy.api#enumValue" => "DOES_NOT_END_WITH"}))
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TimeCondition.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "Value", traits: {"smithy.api#required" => {}}))
    TimeCondition.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeConditionOperator, location_name: "Operator", traits: {"smithy.api#default" => "EQUALS_TO"}))
    TimeCondition.type = Types::TimeCondition
    TimeConditionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeCondition)
    TimeConditionOperator.add_member(:equals_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUALS_TO", traits: {"smithy.api#enumValue" => "EQUALS_TO"}))
    TimeConditionOperator.add_member(:not_equals_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_EQUALS_TO", traits: {"smithy.api#enumValue" => "NOT_EQUALS_TO"}))
    TimeConditionOperator.add_member(:less_than_equal_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN_EQUAL_TO", traits: {"smithy.api#enumValue" => "LESS_THAN_EQUAL_TO"}))
    TimeConditionOperator.add_member(:greater_than_equal_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN_EQUAL_TO", traits: {"smithy.api#enumValue" => "GREATER_THAN_EQUAL_TO"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    CryoBackupSearchService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.backupsearch#CryoBackupSearchService"
      service.name = "CryoBackupSearchService"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "BackupSearch", "arnNamespace" => "backup-search", "endpointPrefix" => "backup-search", "cloudTrailEventSource" => "backup.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "backup-search"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amzn-requestid", "x-amz-apigw-id", "date"]}, "smithy.api#title" => "AWS Backup Search"}
      service.add_operation(:get_search_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#GetSearchJob"
        operation.name = "GetSearchJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSearchJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSearchJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/search-jobs/{SearchJobIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_search_result_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#GetSearchResultExportJob"
        operation.name = "GetSearchResultExportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSearchResultExportJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSearchResultExportJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/export-search-jobs/{ExportJobIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_search_job_backups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#ListSearchJobBackups"
        operation.name = "ListSearchJobBackups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSearchJobBackupsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSearchJobBackupsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/search-jobs/{SearchJobIdentifier}/backups"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSearchJobBackups.new
      end)
      service.add_operation(:list_search_job_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#ListSearchJobResults"
        operation.name = "ListSearchJobResults"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSearchJobResultsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSearchJobResultsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/search-jobs/{SearchJobIdentifier}/search-results"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSearchJobResults.new
      end)
      service.add_operation(:list_search_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#ListSearchJobs"
        operation.name = "ListSearchJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSearchJobsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSearchJobsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/search-jobs"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListSearchJobsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListSearchJobs.new
      end)
      service.add_operation(:list_search_result_export_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#ListSearchResultExportJobs"
        operation.name = "ListSearchResultExportJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSearchResultExportJobsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSearchResultExportJobsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/export-search-jobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSearchResultExportJobs.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{ResourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:start_search_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#StartSearchJob"
        operation.name = "StartSearchJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSearchJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSearchJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/search-jobs"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_search_result_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#StartSearchResultExportJob"
        operation.name = "StartSearchResultExportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSearchResultExportJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSearchResultExportJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/export-search-jobs"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_search_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#StopSearchJob"
        operation.name = "StopSearchJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopSearchJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopSearchJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/search-jobs/{SearchJobIdentifier}/actions/cancel"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{ResourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupsearch#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{ResourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
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
