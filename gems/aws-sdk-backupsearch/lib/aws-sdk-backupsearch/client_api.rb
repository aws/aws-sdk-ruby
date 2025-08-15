# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::BackupSearch
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    BackupCreationTimeFilter = Shapes::StructureShape.new(name: 'BackupCreationTimeFilter')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CurrentSearchProgress = Shapes::StructureShape.new(name: 'CurrentSearchProgress')
    EBSItemFilter = Shapes::StructureShape.new(name: 'EBSItemFilter')
    EBSItemFilters = Shapes::ListShape.new(name: 'EBSItemFilters')
    EBSResultItem = Shapes::StructureShape.new(name: 'EBSResultItem')
    EncryptionKeyArn = Shapes::StringShape.new(name: 'EncryptionKeyArn')
    ExportJobArn = Shapes::StringShape.new(name: 'ExportJobArn')
    ExportJobStatus = Shapes::StringShape.new(name: 'ExportJobStatus')
    ExportJobSummaries = Shapes::ListShape.new(name: 'ExportJobSummaries')
    ExportJobSummary = Shapes::StructureShape.new(name: 'ExportJobSummary')
    ExportSpecification = Shapes::UnionShape.new(name: 'ExportSpecification')
    FilePath = Shapes::StringShape.new(name: 'FilePath')
    GenericId = Shapes::StringShape.new(name: 'GenericId')
    GetSearchJobInput = Shapes::StructureShape.new(name: 'GetSearchJobInput')
    GetSearchJobOutput = Shapes::StructureShape.new(name: 'GetSearchJobOutput')
    GetSearchResultExportJobInput = Shapes::StructureShape.new(name: 'GetSearchResultExportJobInput')
    GetSearchResultExportJobOutput = Shapes::StructureShape.new(name: 'GetSearchResultExportJobOutput')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ItemFilters = Shapes::StructureShape.new(name: 'ItemFilters')
    ListSearchJobBackupsInput = Shapes::StructureShape.new(name: 'ListSearchJobBackupsInput')
    ListSearchJobBackupsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSearchJobBackupsInputMaxResultsInteger')
    ListSearchJobBackupsOutput = Shapes::StructureShape.new(name: 'ListSearchJobBackupsOutput')
    ListSearchJobResultsInput = Shapes::StructureShape.new(name: 'ListSearchJobResultsInput')
    ListSearchJobResultsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSearchJobResultsInputMaxResultsInteger')
    ListSearchJobResultsOutput = Shapes::StructureShape.new(name: 'ListSearchJobResultsOutput')
    ListSearchJobsInput = Shapes::StructureShape.new(name: 'ListSearchJobsInput')
    ListSearchJobsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSearchJobsInputMaxResultsInteger')
    ListSearchJobsOutput = Shapes::StructureShape.new(name: 'ListSearchJobsOutput')
    ListSearchResultExportJobsInput = Shapes::StructureShape.new(name: 'ListSearchResultExportJobsInput')
    ListSearchResultExportJobsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSearchResultExportJobsInputMaxResultsInteger')
    ListSearchResultExportJobsOutput = Shapes::StructureShape.new(name: 'ListSearchResultExportJobsOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    LongCondition = Shapes::StructureShape.new(name: 'LongCondition')
    LongConditionList = Shapes::ListShape.new(name: 'LongConditionList')
    LongConditionOperator = Shapes::StringShape.new(name: 'LongConditionOperator')
    ObjectKey = Shapes::StringShape.new(name: 'ObjectKey')
    RecoveryPoint = Shapes::StringShape.new(name: 'RecoveryPoint')
    RecoveryPointArnList = Shapes::ListShape.new(name: 'RecoveryPointArnList')
    ResourceArnList = Shapes::ListShape.new(name: 'ResourceArnList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypeList = Shapes::ListShape.new(name: 'ResourceTypeList')
    ResultItem = Shapes::UnionShape.new(name: 'ResultItem')
    Results = Shapes::ListShape.new(name: 'Results')
    S3ExportSpecification = Shapes::StructureShape.new(name: 'S3ExportSpecification')
    S3ItemFilter = Shapes::StructureShape.new(name: 'S3ItemFilter')
    S3ItemFilters = Shapes::ListShape.new(name: 'S3ItemFilters')
    S3ResultItem = Shapes::StructureShape.new(name: 'S3ResultItem')
    SearchJobArn = Shapes::StringShape.new(name: 'SearchJobArn')
    SearchJobBackupsResult = Shapes::StructureShape.new(name: 'SearchJobBackupsResult')
    SearchJobBackupsResults = Shapes::ListShape.new(name: 'SearchJobBackupsResults')
    SearchJobState = Shapes::StringShape.new(name: 'SearchJobState')
    SearchJobSummary = Shapes::StructureShape.new(name: 'SearchJobSummary')
    SearchJobs = Shapes::ListShape.new(name: 'SearchJobs')
    SearchScope = Shapes::StructureShape.new(name: 'SearchScope')
    SearchScopeSummary = Shapes::StructureShape.new(name: 'SearchScopeSummary')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StartSearchJobInput = Shapes::StructureShape.new(name: 'StartSearchJobInput')
    StartSearchJobInputNameString = Shapes::StringShape.new(name: 'StartSearchJobInputNameString')
    StartSearchJobOutput = Shapes::StructureShape.new(name: 'StartSearchJobOutput')
    StartSearchResultExportJobInput = Shapes::StructureShape.new(name: 'StartSearchResultExportJobInput')
    StartSearchResultExportJobOutput = Shapes::StructureShape.new(name: 'StartSearchResultExportJobOutput')
    StopSearchJobInput = Shapes::StructureShape.new(name: 'StopSearchJobInput')
    StopSearchJobOutput = Shapes::StructureShape.new(name: 'StopSearchJobOutput')
    String = Shapes::StringShape.new(name: 'String')
    StringCondition = Shapes::StructureShape.new(name: 'StringCondition')
    StringConditionList = Shapes::ListShape.new(name: 'StringConditionList')
    StringConditionOperator = Shapes::StringShape.new(name: 'StringConditionOperator')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeCondition = Shapes::StructureShape.new(name: 'TimeCondition')
    TimeConditionList = Shapes::ListShape.new(name: 'TimeConditionList')
    TimeConditionOperator = Shapes::StringShape.new(name: 'TimeConditionOperator')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    BackupCreationTimeFilter.add_member(:created_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAfter"))
    BackupCreationTimeFilter.add_member(:created_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedBefore"))
    BackupCreationTimeFilter.struct_class = Types::BackupCreationTimeFilter

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CurrentSearchProgress.add_member(:recovery_points_scanned_count, Shapes::ShapeRef.new(shape: Integer, location_name: "RecoveryPointsScannedCount"))
    CurrentSearchProgress.add_member(:items_scanned_count, Shapes::ShapeRef.new(shape: Long, location_name: "ItemsScannedCount"))
    CurrentSearchProgress.add_member(:items_matched_count, Shapes::ShapeRef.new(shape: Long, location_name: "ItemsMatchedCount"))
    CurrentSearchProgress.struct_class = Types::CurrentSearchProgress

    EBSItemFilter.add_member(:file_paths, Shapes::ShapeRef.new(shape: StringConditionList, location_name: "FilePaths"))
    EBSItemFilter.add_member(:sizes, Shapes::ShapeRef.new(shape: LongConditionList, location_name: "Sizes"))
    EBSItemFilter.add_member(:creation_times, Shapes::ShapeRef.new(shape: TimeConditionList, location_name: "CreationTimes"))
    EBSItemFilter.add_member(:last_modification_times, Shapes::ShapeRef.new(shape: TimeConditionList, location_name: "LastModificationTimes"))
    EBSItemFilter.struct_class = Types::EBSItemFilter

    EBSItemFilters.member = Shapes::ShapeRef.new(shape: EBSItemFilter)

    EBSResultItem.add_member(:backup_resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "BackupResourceArn"))
    EBSResultItem.add_member(:source_resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "SourceResourceArn"))
    EBSResultItem.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: String, location_name: "BackupVaultName"))
    EBSResultItem.add_member(:file_system_identifier, Shapes::ShapeRef.new(shape: String, location_name: "FileSystemIdentifier"))
    EBSResultItem.add_member(:file_path, Shapes::ShapeRef.new(shape: FilePath, location_name: "FilePath"))
    EBSResultItem.add_member(:file_size, Shapes::ShapeRef.new(shape: Long, location_name: "FileSize"))
    EBSResultItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    EBSResultItem.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    EBSResultItem.struct_class = Types::EBSResultItem

    ExportJobSummaries.member = Shapes::ShapeRef.new(shape: ExportJobSummary)

    ExportJobSummary.add_member(:export_job_identifier, Shapes::ShapeRef.new(shape: GenericId, required: true, location_name: "ExportJobIdentifier"))
    ExportJobSummary.add_member(:export_job_arn, Shapes::ShapeRef.new(shape: ExportJobArn, location_name: "ExportJobArn"))
    ExportJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: ExportJobStatus, location_name: "Status"))
    ExportJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    ExportJobSummary.add_member(:completion_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletionTime"))
    ExportJobSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    ExportJobSummary.add_member(:search_job_arn, Shapes::ShapeRef.new(shape: SearchJobArn, location_name: "SearchJobArn"))
    ExportJobSummary.struct_class = Types::ExportJobSummary

    ExportSpecification.add_member(:s3_export_specification, Shapes::ShapeRef.new(shape: S3ExportSpecification, location_name: "s3ExportSpecification"))
    ExportSpecification.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ExportSpecification.add_member_subclass(:s3_export_specification, Types::ExportSpecification::S3ExportSpecification)
    ExportSpecification.add_member_subclass(:unknown, Types::ExportSpecification::Unknown)
    ExportSpecification.struct_class = Types::ExportSpecification

    GetSearchJobInput.add_member(:search_job_identifier, Shapes::ShapeRef.new(shape: GenericId, required: true, location: "uri", location_name: "SearchJobIdentifier"))
    GetSearchJobInput.struct_class = Types::GetSearchJobInput

    GetSearchJobOutput.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    GetSearchJobOutput.add_member(:search_scope_summary, Shapes::ShapeRef.new(shape: SearchScopeSummary, location_name: "SearchScopeSummary"))
    GetSearchJobOutput.add_member(:current_search_progress, Shapes::ShapeRef.new(shape: CurrentSearchProgress, location_name: "CurrentSearchProgress"))
    GetSearchJobOutput.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    GetSearchJobOutput.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: "EncryptionKeyArn"))
    GetSearchJobOutput.add_member(:completion_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletionTime"))
    GetSearchJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: SearchJobState, required: true, location_name: "Status"))
    GetSearchJobOutput.add_member(:search_scope, Shapes::ShapeRef.new(shape: SearchScope, required: true, location_name: "SearchScope"))
    GetSearchJobOutput.add_member(:item_filters, Shapes::ShapeRef.new(shape: ItemFilters, required: true, location_name: "ItemFilters"))
    GetSearchJobOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    GetSearchJobOutput.add_member(:search_job_identifier, Shapes::ShapeRef.new(shape: GenericId, required: true, location_name: "SearchJobIdentifier"))
    GetSearchJobOutput.add_member(:search_job_arn, Shapes::ShapeRef.new(shape: SearchJobArn, required: true, location_name: "SearchJobArn"))
    GetSearchJobOutput.struct_class = Types::GetSearchJobOutput

    GetSearchResultExportJobInput.add_member(:export_job_identifier, Shapes::ShapeRef.new(shape: GenericId, required: true, location: "uri", location_name: "ExportJobIdentifier"))
    GetSearchResultExportJobInput.struct_class = Types::GetSearchResultExportJobInput

    GetSearchResultExportJobOutput.add_member(:export_job_identifier, Shapes::ShapeRef.new(shape: GenericId, required: true, location_name: "ExportJobIdentifier"))
    GetSearchResultExportJobOutput.add_member(:export_job_arn, Shapes::ShapeRef.new(shape: ExportJobArn, location_name: "ExportJobArn"))
    GetSearchResultExportJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: ExportJobStatus, location_name: "Status"))
    GetSearchResultExportJobOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    GetSearchResultExportJobOutput.add_member(:completion_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletionTime"))
    GetSearchResultExportJobOutput.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    GetSearchResultExportJobOutput.add_member(:export_specification, Shapes::ShapeRef.new(shape: ExportSpecification, location_name: "ExportSpecification"))
    GetSearchResultExportJobOutput.add_member(:search_job_arn, Shapes::ShapeRef.new(shape: SearchJobArn, location_name: "SearchJobArn"))
    GetSearchResultExportJobOutput.struct_class = Types::GetSearchResultExportJobOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ItemFilters.add_member(:s3_item_filters, Shapes::ShapeRef.new(shape: S3ItemFilters, location_name: "S3ItemFilters"))
    ItemFilters.add_member(:ebs_item_filters, Shapes::ShapeRef.new(shape: EBSItemFilters, location_name: "EBSItemFilters"))
    ItemFilters.struct_class = Types::ItemFilters

    ListSearchJobBackupsInput.add_member(:search_job_identifier, Shapes::ShapeRef.new(shape: GenericId, required: true, location: "uri", location_name: "SearchJobIdentifier"))
    ListSearchJobBackupsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListSearchJobBackupsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSearchJobBackupsInputMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListSearchJobBackupsInput.struct_class = Types::ListSearchJobBackupsInput

    ListSearchJobBackupsOutput.add_member(:results, Shapes::ShapeRef.new(shape: SearchJobBackupsResults, required: true, location_name: "Results"))
    ListSearchJobBackupsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListSearchJobBackupsOutput.struct_class = Types::ListSearchJobBackupsOutput

    ListSearchJobResultsInput.add_member(:search_job_identifier, Shapes::ShapeRef.new(shape: GenericId, required: true, location: "uri", location_name: "SearchJobIdentifier"))
    ListSearchJobResultsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListSearchJobResultsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSearchJobResultsInputMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListSearchJobResultsInput.struct_class = Types::ListSearchJobResultsInput

    ListSearchJobResultsOutput.add_member(:results, Shapes::ShapeRef.new(shape: Results, required: true, location_name: "Results"))
    ListSearchJobResultsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListSearchJobResultsOutput.struct_class = Types::ListSearchJobResultsOutput

    ListSearchJobsInput.add_member(:by_status, Shapes::ShapeRef.new(shape: SearchJobState, location: "querystring", location_name: "Status"))
    ListSearchJobsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "NextToken"))
    ListSearchJobsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSearchJobsInputMaxResultsInteger, location: "querystring", location_name: "MaxResults"))
    ListSearchJobsInput.struct_class = Types::ListSearchJobsInput

    ListSearchJobsOutput.add_member(:search_jobs, Shapes::ShapeRef.new(shape: SearchJobs, required: true, location_name: "SearchJobs"))
    ListSearchJobsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListSearchJobsOutput.struct_class = Types::ListSearchJobsOutput

    ListSearchResultExportJobsInput.add_member(:status, Shapes::ShapeRef.new(shape: ExportJobStatus, location: "querystring", location_name: "Status"))
    ListSearchResultExportJobsInput.add_member(:search_job_identifier, Shapes::ShapeRef.new(shape: GenericId, location: "querystring", location_name: "SearchJobIdentifier"))
    ListSearchResultExportJobsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "NextToken"))
    ListSearchResultExportJobsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSearchResultExportJobsInputMaxResultsInteger, location: "querystring", location_name: "MaxResults"))
    ListSearchResultExportJobsInput.struct_class = Types::ListSearchResultExportJobsInput

    ListSearchResultExportJobsOutput.add_member(:export_jobs, Shapes::ShapeRef.new(shape: ExportJobSummaries, required: true, location_name: "ExportJobs"))
    ListSearchResultExportJobsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListSearchResultExportJobsOutput.struct_class = Types::ListSearchResultExportJobsOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LongCondition.add_member(:value, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "Value"))
    LongCondition.add_member(:operator, Shapes::ShapeRef.new(shape: LongConditionOperator, location_name: "Operator"))
    LongCondition.struct_class = Types::LongCondition

    LongConditionList.member = Shapes::ShapeRef.new(shape: LongCondition)

    RecoveryPointArnList.member = Shapes::ShapeRef.new(shape: RecoveryPoint)

    ResourceArnList.member = Shapes::ShapeRef.new(shape: String)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTypeList.member = Shapes::ShapeRef.new(shape: ResourceType)

    ResultItem.add_member(:s3_result_item, Shapes::ShapeRef.new(shape: S3ResultItem, location_name: "S3ResultItem"))
    ResultItem.add_member(:ebs_result_item, Shapes::ShapeRef.new(shape: EBSResultItem, location_name: "EBSResultItem"))
    ResultItem.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ResultItem.add_member_subclass(:s3_result_item, Types::ResultItem::S3ResultItem)
    ResultItem.add_member_subclass(:ebs_result_item, Types::ResultItem::EbsResultItem)
    ResultItem.add_member_subclass(:unknown, Types::ResultItem::Unknown)
    ResultItem.struct_class = Types::ResultItem

    Results.member = Shapes::ShapeRef.new(shape: ResultItem)

    S3ExportSpecification.add_member(:destination_bucket, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DestinationBucket"))
    S3ExportSpecification.add_member(:destination_prefix, Shapes::ShapeRef.new(shape: String, location_name: "DestinationPrefix"))
    S3ExportSpecification.struct_class = Types::S3ExportSpecification

    S3ItemFilter.add_member(:object_keys, Shapes::ShapeRef.new(shape: StringConditionList, location_name: "ObjectKeys"))
    S3ItemFilter.add_member(:sizes, Shapes::ShapeRef.new(shape: LongConditionList, location_name: "Sizes"))
    S3ItemFilter.add_member(:creation_times, Shapes::ShapeRef.new(shape: TimeConditionList, location_name: "CreationTimes"))
    S3ItemFilter.add_member(:version_ids, Shapes::ShapeRef.new(shape: StringConditionList, location_name: "VersionIds"))
    S3ItemFilter.add_member(:etags, Shapes::ShapeRef.new(shape: StringConditionList, location_name: "ETags"))
    S3ItemFilter.struct_class = Types::S3ItemFilter

    S3ItemFilters.member = Shapes::ShapeRef.new(shape: S3ItemFilter)

    S3ResultItem.add_member(:backup_resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "BackupResourceArn"))
    S3ResultItem.add_member(:source_resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "SourceResourceArn"))
    S3ResultItem.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: String, location_name: "BackupVaultName"))
    S3ResultItem.add_member(:object_key, Shapes::ShapeRef.new(shape: ObjectKey, location_name: "ObjectKey"))
    S3ResultItem.add_member(:object_size, Shapes::ShapeRef.new(shape: Long, location_name: "ObjectSize"))
    S3ResultItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    S3ResultItem.add_member(:etag, Shapes::ShapeRef.new(shape: String, location_name: "ETag"))
    S3ResultItem.add_member(:version_id, Shapes::ShapeRef.new(shape: String, location_name: "VersionId"))
    S3ResultItem.struct_class = Types::S3ResultItem

    SearchJobBackupsResult.add_member(:status, Shapes::ShapeRef.new(shape: SearchJobState, location_name: "Status"))
    SearchJobBackupsResult.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    SearchJobBackupsResult.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    SearchJobBackupsResult.add_member(:backup_resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "BackupResourceArn"))
    SearchJobBackupsResult.add_member(:source_resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "SourceResourceArn"))
    SearchJobBackupsResult.add_member(:index_creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "IndexCreationTime"))
    SearchJobBackupsResult.add_member(:backup_creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "BackupCreationTime"))
    SearchJobBackupsResult.struct_class = Types::SearchJobBackupsResult

    SearchJobBackupsResults.member = Shapes::ShapeRef.new(shape: SearchJobBackupsResult)

    SearchJobSummary.add_member(:search_job_identifier, Shapes::ShapeRef.new(shape: GenericId, location_name: "SearchJobIdentifier"))
    SearchJobSummary.add_member(:search_job_arn, Shapes::ShapeRef.new(shape: SearchJobArn, location_name: "SearchJobArn"))
    SearchJobSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    SearchJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: SearchJobState, location_name: "Status"))
    SearchJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    SearchJobSummary.add_member(:completion_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletionTime"))
    SearchJobSummary.add_member(:search_scope_summary, Shapes::ShapeRef.new(shape: SearchScopeSummary, location_name: "SearchScopeSummary"))
    SearchJobSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    SearchJobSummary.struct_class = Types::SearchJobSummary

    SearchJobs.member = Shapes::ShapeRef.new(shape: SearchJobSummary)

    SearchScope.add_member(:backup_resource_types, Shapes::ShapeRef.new(shape: ResourceTypeList, required: true, location_name: "BackupResourceTypes"))
    SearchScope.add_member(:backup_resource_creation_time, Shapes::ShapeRef.new(shape: BackupCreationTimeFilter, location_name: "BackupResourceCreationTime"))
    SearchScope.add_member(:source_resource_arns, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "SourceResourceArns"))
    SearchScope.add_member(:backup_resource_arns, Shapes::ShapeRef.new(shape: RecoveryPointArnList, location_name: "BackupResourceArns"))
    SearchScope.add_member(:backup_resource_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "BackupResourceTags"))
    SearchScope.struct_class = Types::SearchScope

    SearchScopeSummary.add_member(:total_recovery_points_to_scan_count, Shapes::ShapeRef.new(shape: Integer, location_name: "TotalRecoveryPointsToScanCount"))
    SearchScopeSummary.add_member(:total_items_to_scan_count, Shapes::ShapeRef.new(shape: Long, location_name: "TotalItemsToScanCount"))
    SearchScopeSummary.struct_class = Types::SearchScopeSummary

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartSearchJobInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    StartSearchJobInput.add_member(:name, Shapes::ShapeRef.new(shape: StartSearchJobInputNameString, location_name: "Name"))
    StartSearchJobInput.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: "EncryptionKeyArn"))
    StartSearchJobInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "ClientToken"))
    StartSearchJobInput.add_member(:search_scope, Shapes::ShapeRef.new(shape: SearchScope, required: true, location_name: "SearchScope"))
    StartSearchJobInput.add_member(:item_filters, Shapes::ShapeRef.new(shape: ItemFilters, location_name: "ItemFilters"))
    StartSearchJobInput.struct_class = Types::StartSearchJobInput

    StartSearchJobOutput.add_member(:search_job_arn, Shapes::ShapeRef.new(shape: SearchJobArn, location_name: "SearchJobArn"))
    StartSearchJobOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    StartSearchJobOutput.add_member(:search_job_identifier, Shapes::ShapeRef.new(shape: GenericId, location_name: "SearchJobIdentifier"))
    StartSearchJobOutput.struct_class = Types::StartSearchJobOutput

    StartSearchResultExportJobInput.add_member(:search_job_identifier, Shapes::ShapeRef.new(shape: GenericId, required: true, location_name: "SearchJobIdentifier"))
    StartSearchResultExportJobInput.add_member(:export_specification, Shapes::ShapeRef.new(shape: ExportSpecification, required: true, location_name: "ExportSpecification"))
    StartSearchResultExportJobInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "ClientToken"))
    StartSearchResultExportJobInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    StartSearchResultExportJobInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "RoleArn"))
    StartSearchResultExportJobInput.struct_class = Types::StartSearchResultExportJobInput

    StartSearchResultExportJobOutput.add_member(:export_job_arn, Shapes::ShapeRef.new(shape: ExportJobArn, location_name: "ExportJobArn"))
    StartSearchResultExportJobOutput.add_member(:export_job_identifier, Shapes::ShapeRef.new(shape: GenericId, required: true, location_name: "ExportJobIdentifier"))
    StartSearchResultExportJobOutput.struct_class = Types::StartSearchResultExportJobOutput

    StopSearchJobInput.add_member(:search_job_identifier, Shapes::ShapeRef.new(shape: GenericId, required: true, location: "uri", location_name: "SearchJobIdentifier"))
    StopSearchJobInput.struct_class = Types::StopSearchJobInput

    StopSearchJobOutput.struct_class = Types::StopSearchJobOutput

    StringCondition.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    StringCondition.add_member(:operator, Shapes::ShapeRef.new(shape: StringConditionOperator, location_name: "Operator"))
    StringCondition.struct_class = Types::StringCondition

    StringConditionList.member = Shapes::ShapeRef.new(shape: StringCondition)

    TagKeys.member = Shapes::ShapeRef.new(shape: String)

    TagMap.key = Shapes::ShapeRef.new(shape: String)
    TagMap.value = Shapes::ShapeRef.new(shape: String)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimeCondition.add_member(:value, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Value"))
    TimeCondition.add_member(:operator, Shapes::ShapeRef.new(shape: TimeConditionOperator, location_name: "Operator"))
    TimeCondition.struct_class = Types::TimeCondition

    TimeConditionList.member = Shapes::ShapeRef.new(shape: TimeCondition)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "backup-search",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Backup Search",
        "serviceId" => "BackupSearch",
        "signatureVersion" => "v4",
        "signingName" => "backup-search",
        "uid" => "backupsearch-2018-05-10",
      }

      api.add_operation(:get_search_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSearchJob"
        o.http_method = "GET"
        o.http_request_uri = "/search-jobs/{SearchJobIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetSearchJobInput)
        o.output = Shapes::ShapeRef.new(shape: GetSearchJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_search_result_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSearchResultExportJob"
        o.http_method = "GET"
        o.http_request_uri = "/export-search-jobs/{ExportJobIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetSearchResultExportJobInput)
        o.output = Shapes::ShapeRef.new(shape: GetSearchResultExportJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_search_job_backups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSearchJobBackups"
        o.http_method = "GET"
        o.http_request_uri = "/search-jobs/{SearchJobIdentifier}/backups"
        o.input = Shapes::ShapeRef.new(shape: ListSearchJobBackupsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSearchJobBackupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_search_job_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSearchJobResults"
        o.http_method = "GET"
        o.http_request_uri = "/search-jobs/{SearchJobIdentifier}/search-results"
        o.input = Shapes::ShapeRef.new(shape: ListSearchJobResultsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSearchJobResultsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_search_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSearchJobs"
        o.http_method = "GET"
        o.http_request_uri = "/search-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListSearchJobsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSearchJobsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_search_result_export_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSearchResultExportJobs"
        o.http_method = "GET"
        o.http_request_uri = "/export-search-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListSearchResultExportJobsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSearchResultExportJobsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
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
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_search_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSearchJob"
        o.http_method = "PUT"
        o.http_request_uri = "/search-jobs"
        o.input = Shapes::ShapeRef.new(shape: StartSearchJobInput)
        o.output = Shapes::ShapeRef.new(shape: StartSearchJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_search_result_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSearchResultExportJob"
        o.http_method = "PUT"
        o.http_request_uri = "/export-search-jobs"
        o.input = Shapes::ShapeRef.new(shape: StartSearchResultExportJobInput)
        o.output = Shapes::ShapeRef.new(shape: StartSearchResultExportJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:stop_search_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopSearchJob"
        o.http_method = "PUT"
        o.http_request_uri = "/search-jobs/{SearchJobIdentifier}/actions/cancel"
        o.input = Shapes::ShapeRef.new(shape: StopSearchJobInput)
        o.output = Shapes::ShapeRef.new(shape: StopSearchJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
