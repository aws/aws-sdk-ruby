# frozen_string_literal: true

# This is generated code!

module Aws::BackupSearch
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   <p>User does not have sufficient access to perform this action.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This filters by recovery points within the CreatedAfter and CreatedBefore timestamps.</p>
    # @!attribute created_after
    #   <p>This timestamp includes recovery points only created after the specified time.</p>
    #   @return [Time]
    # @!attribute created_before
    #   <p>This timestamp includes recovery points only created before the specified time.</p>
    #   @return [Time]
    class BackupCreationTimeFilter < Struct.new(
      :created_after,
      :created_before,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception occurs when a conflict with a previous successful operation is detected. This generally occurs when the previous operation did not have time to propagate to the host serving the current request.</p> <p>A retry (with appropriate backoff logic) is the recommended response to this exception.</p>
    # @!attribute message
    #   <p>Updating or deleting a resource can cause an inconsistent state.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the resource affected.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of the resource affected.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This contains information results retrieved from a search job that may not have completed.</p>
    # @!attribute recovery_points_scanned_count
    #   <p>This number is the sum of all backups that have been scanned so far during a search job.</p>
    #   @return [Integer]
    # @!attribute items_scanned_count
    #   <p>This number is the sum of all items that have been scanned so far during a search job.</p>
    #   @return [Integer]
    # @!attribute items_matched_count
    #   <p>This number is the sum of all items that match the item filters in a search job in progress.</p>
    #   @return [Integer]
    class CurrentSearchProgress < Struct.new(
      :recovery_points_scanned_count,
      :items_scanned_count,
      :items_matched_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This contains arrays of objects, which may include CreationTimes time condition objects, FilePaths string objects, LastModificationTimes time condition objects, </p>
    # @!attribute file_paths
    #   <p>You can include 1 to 10 values.</p> <p>If one file path is included, the results will return only items that match the file path.</p> <p>If more than one file path is included, the results will return all items that match any of the file paths.</p>
    #   @return [Array<Types::StringCondition>]
    # @!attribute sizes
    #   <p>You can include 1 to 10 values.</p> <p>If one is included, the results will return only items that match.</p> <p>If more than one is included, the results will return all items that match any of the included values.</p>
    #   @return [Array<Types::LongCondition>]
    # @!attribute creation_times
    #   <p>You can include 1 to 10 values.</p> <p>If one is included, the results will return only items that match.</p> <p>If more than one is included, the results will return all items that match any of the included values.</p>
    #   @return [Array<Types::TimeCondition>]
    # @!attribute last_modification_times
    #   <p>You can include 1 to 10 values.</p> <p>If one is included, the results will return only items that match.</p> <p>If more than one is included, the results will return all items that match any of the included values.</p>
    #   @return [Array<Types::TimeCondition>]
    class EBSItemFilter < Struct.new(
      :file_paths,
      :sizes,
      :creation_times,
      :last_modification_times,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>These are the items returned in the results of a search of Amazon EBS backup metadata.</p>
    # @!attribute backup_resource_arn
    #   <p>These are one or more items in the results that match values for the Amazon Resource Name (ARN) of recovery points returned in a search of Amazon EBS backup metadata.</p>
    #   @return [String]
    # @!attribute source_resource_arn
    #   <p>These are one or more items in the results that match values for the Amazon Resource Name (ARN) of source resources returned in a search of Amazon EBS backup metadata.</p>
    #   @return [String]
    # @!attribute backup_vault_name
    #   <p>The name of the backup vault.</p>
    #   @return [String]
    # @!attribute file_system_identifier
    #   <p>These are one or more items in the results that match values for file systems returned in a search of Amazon EBS backup metadata.</p>
    #   @return [String]
    # @!attribute file_path
    #   <p>These are one or more items in the results that match values for file paths returned in a search of Amazon EBS backup metadata.</p>
    #   @return [String]
    # @!attribute file_size
    #   <p>These are one or more items in the results that match values for file sizes returned in a search of Amazon EBS backup metadata.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>These are one or more items in the results that match values for creation times returned in a search of Amazon EBS backup metadata.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>These are one or more items in the results that match values for Last Modified Time returned in a search of Amazon EBS backup metadata.</p>
    #   @return [Time]
    class EBSResultItem < Struct.new(
      :backup_resource_arn,
      :source_resource_arn,
      :backup_vault_name,
      :file_system_identifier,
      :file_path,
      :file_size,
      :creation_time,
      :last_modified_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This is the summary of an export job.</p>
    # @!attribute export_job_identifier
    #   <p>This is the unique string that identifies a specific export job.</p>
    #   @return [String]
    # @!attribute export_job_arn
    #   <p>This is the unique ARN (Amazon Resource Name) that belongs to the new export job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the export job is one of the following:</p> <p> <code>CREATED</code>; <code>RUNNING</code>; <code>FAILED</code>; or <code>COMPLETED</code>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>This is a timestamp of the time the export job was created.</p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p>This is a timestamp of the time the export job compeleted.</p>
    #   @return [Time]
    # @!attribute status_message
    #   <p>A status message is a string that is returned for an export job.</p> <p>A status message is included for any status other than <code>COMPLETED</code> without issues.</p>
    #   @return [String]
    # @!attribute search_job_arn
    #   <p>The unique string that identifies the Amazon Resource Name (ARN) of the specified search job.</p>
    #   @return [String]
    class ExportJobSummary < Struct.new(
      :export_job_identifier,
      :export_job_arn,
      :status,
      :creation_time,
      :completion_time,
      :status_message,
      :search_job_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This contains the export specification object.</p>
    # @!attribute s3_export_specification
    #   <p>This specifies the destination Amazon S3 bucket for the export job. And, if included, it also specifies the destination prefix.</p>
    #   @return [Types::S3ExportSpecification]
    class ExportSpecification < Struct.new(
      :s3_export_specification,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class S3ExportSpecification < ExportSpecification; end
      class Unknown < ExportSpecification; end
    end

    # @!attribute search_job_identifier
    #   <p>Required unique string that specifies the search job.</p>
    #   @return [String]
    class GetSearchJobInput < Struct.new(
      :search_job_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Returned name of the specified search job.</p>
    #   @return [String]
    # @!attribute search_scope_summary
    #   <p>Returned summary of the specified search job scope, including: </p> <ul> <li> <p>TotalBackupsToScanCount, the number of recovery points returned by the search.</p> </li> <li> <p>TotalItemsToScanCount, the number of items returned by the search.</p> </li> </ul>
    #   @return [Types::SearchScopeSummary]
    # @!attribute current_search_progress
    #   <p>Returns numbers representing BackupsScannedCount, ItemsScanned, and ItemsMatched.</p>
    #   @return [Types::CurrentSearchProgress]
    # @!attribute status_message
    #   <p>A status message will be returned for either a earch job with a status of <code>ERRORED</code> or a status of <code>COMPLETED</code> jobs with issues.</p> <p>For example, a message may say that a search contained recovery points unable to be scanned because of a permissions issue.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The encryption key for the specified search job.</p> <p>Example: <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #   @return [String]
    # @!attribute completion_time
    #   <p>The date and time that a search job completed, in Unix format and Coordinated Universal Time (UTC). The value of <code>CompletionTime</code> is accurate to milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the specified search job.</p> <p>A search job may have one of the following statuses: <code>RUNNING</code>; <code>COMPLETED</code>; <code>STOPPED</code>; <code>FAILED</code>; <code>TIMED_OUT</code>; or <code>EXPIRED</code> .</p>
    #   @return [String]
    # @!attribute search_scope
    #   <p>The search scope is all backup properties input into a search.</p>
    #   @return [Types::SearchScope]
    # @!attribute item_filters
    #   <p>Item Filters represent all input item properties specified when the search was created.</p>
    #   @return [Types::ItemFilters]
    # @!attribute creation_time
    #   <p>The date and time that a search job was created, in Unix format and Coordinated Universal Time (UTC). The value of <code>CompletionTime</code> is accurate to milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute search_job_identifier
    #   <p>The unique string that identifies the specified search job.</p>
    #   @return [String]
    # @!attribute search_job_arn
    #   <p>The unique string that identifies the Amazon Resource Name (ARN) of the specified search job.</p>
    #   @return [String]
    class GetSearchJobOutput < Struct.new(
      :name,
      :search_scope_summary,
      :current_search_progress,
      :status_message,
      :encryption_key_arn,
      :completion_time,
      :status,
      :search_scope,
      :item_filters,
      :creation_time,
      :search_job_identifier,
      :search_job_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_job_identifier
    #   <p>This is the unique string that identifies a specific export job.</p> <p>Required for this operation.</p>
    #   @return [String]
    class GetSearchResultExportJobInput < Struct.new(
      :export_job_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_job_identifier
    #   <p>This is the unique string that identifies the specified export job.</p>
    #   @return [String]
    # @!attribute export_job_arn
    #   <p>The unique Amazon Resource Name (ARN) that uniquely identifies the export job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>This is the current status of the export job.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time that an export job was created, in Unix format and Coordinated Universal Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p>The date and time that an export job completed, in Unix format and Coordinated Universal Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute status_message
    #   <p>A status message is a string that is returned for search job with a status of <code>FAILED</code>, along with steps to remedy and retry the operation.</p>
    #   @return [String]
    # @!attribute export_specification
    #   <p>The export specification consists of the destination S3 bucket to which the search results were exported, along with the destination prefix.</p>
    #   @return [Types::ExportSpecification]
    # @!attribute search_job_arn
    #   <p>The unique string that identifies the Amazon Resource Name (ARN) of the specified search job.</p>
    #   @return [String]
    class GetSearchResultExportJobOutput < Struct.new(
      :export_job_identifier,
      :export_job_arn,
      :status,
      :creation_time,
      :completion_time,
      :status_message,
      :export_specification,
      :search_job_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An internal server error occurred. Retry your request.</p>
    # @!attribute message
    #   <p>Unexpected error during processing of request.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Retry the call after number of seconds.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Item Filters represent all input item properties specified when the search was created.</p> <p>Contains either EBSItemFilters or S3ItemFilters</p>
    # @!attribute s3_item_filters
    #   <p>This array can contain CreationTimes, ETags, ObjectKeys, Sizes, or VersionIds objects.</p>
    #   @return [Array<Types::S3ItemFilter>]
    # @!attribute ebs_item_filters
    #   <p>This array can contain CreationTimes, FilePaths, LastModificationTimes, or Sizes objects.</p>
    #   @return [Array<Types::EBSItemFilter>]
    class ItemFilters < Struct.new(
      :s3_item_filters,
      :ebs_item_filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute search_job_identifier
    #   <p>The unique string that specifies the search job.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned backups included in a search job.</p> <p>For example, if a request is made to return <code>MaxResults</code> number of backups, <code>NextToken</code> allows you to return more items in your list starting at the location pointed to by the next token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of resource list items to be returned.</p>
    #   @return [Integer]
    class ListSearchJobBackupsInput < Struct.new(
      :search_job_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>The recovery points returned the results of a search job</p>
    #   @return [Array<Types::SearchJobBackupsResult>]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned backups included in a search job.</p> <p>For example, if a request is made to return <code>MaxResults</code> number of backups, <code>NextToken</code> allows you to return more items in your list starting at the location pointed to by the next token.</p>
    #   @return [String]
    class ListSearchJobBackupsOutput < Struct.new(
      :results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute search_job_identifier
    #   <p>The unique string that specifies the search job.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned search job results.</p> <p>For example, if a request is made to return <code>MaxResults</code> number of search job results, <code>NextToken</code> allows you to return more items in your list starting at the location pointed to by the next token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of resource list items to be returned.</p>
    #   @return [Integer]
    class ListSearchJobResultsInput < Struct.new(
      :search_job_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>The results consist of either EBSResultItem or S3ResultItem.</p>
    #   @return [Array<Types::ResultItem>]
    # @!attribute next_token
    #   <p>The next item following a partial list of search job results.</p> <p>For example, if a request is made to return <code>MaxResults</code> number of backups, <code>NextToken</code> allows you to return more items in your list starting at the location pointed to by the next token.</p>
    #   @return [String]
    class ListSearchJobResultsOutput < Struct.new(
      :results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute by_status
    #   <p>Include this parameter to filter list by search job status.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned search jobs.</p> <p>For example, if a request is made to return <code>MaxResults</code> number of backups, <code>NextToken</code> allows you to return more items in your list starting at the location pointed to by the next token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of resource list items to be returned.</p>
    #   @return [Integer]
    class ListSearchJobsInput < Struct.new(
      :by_status,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute search_jobs
    #   <p>The search jobs among the list, with details of the returned search jobs.</p>
    #   @return [Array<Types::SearchJobSummary>]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned backups included in a search job.</p> <p>For example, if a request is made to return <code>MaxResults</code> number of backups, <code>NextToken</code> allows you to return more items in your list starting at the location pointed to by the next token.</p>
    #   @return [String]
    class ListSearchJobsOutput < Struct.new(
      :search_jobs,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The search jobs to be included in the export job can be filtered by including this parameter.</p>
    #   @return [String]
    # @!attribute search_job_identifier
    #   <p>The unique string that specifies the search job.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned backups included in a search job.</p> <p>For example, if a request is made to return <code>MaxResults</code> number of backups, <code>NextToken</code> allows you to return more items in your list starting at the location pointed to by the next token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of resource list items to be returned.</p>
    #   @return [Integer]
    class ListSearchResultExportJobsInput < Struct.new(
      :status,
      :search_job_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_jobs
    #   <p>The operation returns the included export jobs.</p>
    #   @return [Array<Types::ExportJobSummary>]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned backups included in a search job.</p> <p>For example, if a request is made to return <code>MaxResults</code> number of backups, <code>NextToken</code> allows you to return more items in your list starting at the location pointed to by the next token.</p>
    #   @return [String]
    class ListSearchResultExportJobsOutput < Struct.new(
      :export_jobs,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the resource.&gt;</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>List of tags returned by the operation.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The long condition contains a <code>Value</code> and can optionally contain an <code>Operator</code>.</p>
    # @!attribute value
    #   <p>The value of an item included in one of the search item filters.</p>
    #   @return [Integer]
    # @!attribute operator
    #   <p>A string that defines what values will be returned.</p> <p>If this is included, avoid combinations of operators that will return all possible values. For example, including both <code>EQUALS_TO</code> and <code>NOT_EQUALS_TO</code> with a value of <code>4</code> will return all values.</p>
    #   @return [String]
    class LongCondition < Struct.new(
      :value,
      :operator,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:operator] = 'EQUALS_TO' unless options.key?(:operator)
        super
      end
    end

    # <p>The resource was not found for this request.</p> <p>Confirm the resource information, such as the ARN or type is correct and exists, then retry the request.</p>
    # @!attribute message
    #   <p>Request references a resource which does not exist.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Hypothetical identifier of the resource affected.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Hypothetical type of the resource affected.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This is an object representing the item returned in the results of a search for a specific resource type.</p>
    # @!attribute s3_result_item
    #   <p>These are items returned in the search results of an Amazon S3 search.</p>
    #   @return [Types::S3ResultItem]
    # @!attribute ebs_result_item
    #   <p>These are items returned in the search results of an Amazon EBS search.</p>
    #   @return [Types::EBSResultItem]
    class ResultItem < Struct.new(
      :s3_result_item,
      :ebs_result_item,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class S3ResultItem < ResultItem; end
      class EBSResultItem < ResultItem; end
      class Unknown < ResultItem; end
    end

    # <p>This specification contains a required string of the destination bucket; optionally, you can include the destination prefix.</p>
    # @!attribute destination_bucket
    #   <p>This specifies the destination Amazon S3 bucket for the export job.</p>
    #   @return [String]
    # @!attribute destination_prefix
    #   <p>This specifies the prefix for the destination Amazon S3 bucket for the export job.</p>
    #   @return [String]
    class S3ExportSpecification < Struct.new(
      :destination_bucket,
      :destination_prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This contains arrays of objects, which may include ObjectKeys, Sizes, CreationTimes, VersionIds, and/or Etags.</p>
    # @!attribute object_keys
    #   <p>You can include 1 to 10 values.</p> <p>If one value is included, the results will return only items that match the value.</p> <p>If more than one value is included, the results will return all items that match any of the values.</p>
    #   @return [Array<Types::StringCondition>]
    # @!attribute sizes
    #   <p>You can include 1 to 10 values.</p> <p>If one value is included, the results will return only items that match the value.</p> <p>If more than one value is included, the results will return all items that match any of the values.</p>
    #   @return [Array<Types::LongCondition>]
    # @!attribute creation_times
    #   <p>You can include 1 to 10 values.</p> <p>If one value is included, the results will return only items that match the value.</p> <p>If more than one value is included, the results will return all items that match any of the values.</p>
    #   @return [Array<Types::TimeCondition>]
    # @!attribute version_ids
    #   <p>You can include 1 to 10 values.</p> <p>If one value is included, the results will return only items that match the value.</p> <p>If more than one value is included, the results will return all items that match any of the values.</p>
    #   @return [Array<Types::StringCondition>]
    # @!attribute e_tags
    #   <p>You can include 1 to 10 values.</p> <p>If one value is included, the results will return only items that match the value.</p> <p>If more than one value is included, the results will return all items that match any of the values.</p>
    #   @return [Array<Types::StringCondition>]
    class S3ItemFilter < Struct.new(
      :object_keys,
      :sizes,
      :creation_times,
      :version_ids,
      :e_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>These are the items returned in the results of a search of Amazon S3 backup metadata.</p>
    # @!attribute backup_resource_arn
    #   <p>These are items in the returned results that match recovery point Amazon Resource Names (ARN) input during a search of Amazon S3 backup metadata.</p>
    #   @return [String]
    # @!attribute source_resource_arn
    #   <p>These are items in the returned results that match source Amazon Resource Names (ARN) input during a search of Amazon S3 backup metadata.</p>
    #   @return [String]
    # @!attribute backup_vault_name
    #   <p>The name of the backup vault.</p>
    #   @return [String]
    # @!attribute object_key
    #   <p>This is one or more items returned in the results of a search of Amazon S3 backup metadata that match the values input for object key.</p>
    #   @return [String]
    # @!attribute object_size
    #   <p>These are items in the returned results that match values for object size(s) input during a search of Amazon S3 backup metadata.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>These are one or more items in the returned results that match values for item creation time input during a search of Amazon S3 backup metadata.</p>
    #   @return [Time]
    # @!attribute e_tag
    #   <p>These are one or more items in the returned results that match values for ETags input during a search of Amazon S3 backup metadata.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>These are one or more items in the returned results that match values for version IDs input during a search of Amazon S3 backup metadata.</p>
    #   @return [String]
    class S3ResultItem < Struct.new(
      :backup_resource_arn,
      :source_resource_arn,
      :backup_vault_name,
      :object_key,
      :object_size,
      :creation_time,
      :e_tag,
      :version_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This contains the information about recovery points returned in results of a search job.</p>
    # @!attribute status
    #   <p>This is the status of the search job backup result.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>This is the status message included with the results.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>This is the resource type of the search.</p>
    #   @return [String]
    # @!attribute backup_resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the backup resources.</p>
    #   @return [String]
    # @!attribute source_resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the source resources.</p>
    #   @return [String]
    # @!attribute index_creation_time
    #   <p>This is the creation time of the backup index.</p>
    #   @return [Time]
    # @!attribute backup_creation_time
    #   <p>This is the creation time of the backup (recovery point).</p>
    #   @return [Time]
    class SearchJobBackupsResult < Struct.new(
      :status,
      :status_message,
      :resource_type,
      :backup_resource_arn,
      :source_resource_arn,
      :index_creation_time,
      :backup_creation_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This is information pertaining to a search job.</p>
    # @!attribute search_job_identifier
    #   <p>The unique string that specifies the search job.</p>
    #   @return [String]
    # @!attribute search_job_arn
    #   <p>The unique string that identifies the Amazon Resource Name (ARN) of the specified search job.</p>
    #   @return [String]
    # @!attribute name
    #   <p>This is the name of the search job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>This is the status of the search job.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>This is the creation time of the search job.</p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p>This is the completion time of the search job.</p>
    #   @return [Time]
    # @!attribute search_scope_summary
    #   <p>Returned summary of the specified search job scope, including: </p> <ul> <li> <p>TotalBackupsToScanCount, the number of recovery points returned by the search.</p> </li> <li> <p>TotalItemsToScanCount, the number of items returned by the search.</p> </li> </ul>
    #   @return [Types::SearchScopeSummary]
    # @!attribute status_message
    #   <p>A status message will be returned for either a earch job with a status of <code>ERRORED</code> or a status of <code>COMPLETED</code> jobs with issues.</p> <p>For example, a message may say that a search contained recovery points unable to be scanned because of a permissions issue.</p>
    #   @return [String]
    class SearchJobSummary < Struct.new(
      :search_job_identifier,
      :search_job_arn,
      :name,
      :status,
      :creation_time,
      :completion_time,
      :search_scope_summary,
      :status_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search scope is all backup properties input into a search.</p>
    # @!attribute backup_resource_types
    #   <p>The resource types included in a search.</p> <p>Eligible resource types include S3 and EBS.</p>
    #   @return [Array<String>]
    # @!attribute backup_resource_creation_time
    #   <p>This is the time a backup resource was created.</p>
    #   @return [Types::BackupCreationTimeFilter]
    # @!attribute source_resource_arns
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the source resources.</p>
    #   @return [Array<String>]
    # @!attribute backup_resource_arns
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the backup resources.</p>
    #   @return [Array<String>]
    # @!attribute backup_resource_tags
    #   <p>These are one or more tags on the backup (recovery point).</p>
    #   @return [Hash<String, String>]
    class SearchScope < Struct.new(
      :backup_resource_types,
      :backup_resource_creation_time,
      :source_resource_arns,
      :backup_resource_arns,
      :backup_resource_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the specified search job scope, including: </p> <ul> <li> <p>TotalBackupsToScanCount, the number of recovery points returned by the search.</p> </li> <li> <p>TotalItemsToScanCount, the number of items returned by the search.</p> </li> </ul>
    # @!attribute total_recovery_points_to_scan_count
    #   <p>This is the count of the total number of backups that will be scanned in a search.</p>
    #   @return [Integer]
    # @!attribute total_items_to_scan_count
    #   <p>This is the count of the total number of items that will be scanned in a search.</p>
    #   @return [Integer]
    class SearchScopeSummary < Struct.new(
      :total_recovery_points_to_scan_count,
      :total_items_to_scan_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request denied due to exceeding the quota limits permitted.</p>
    # @!attribute message
    #   <p>This request was not successful due to a service quota exceeding limits.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of resource.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>This is the code unique to the originating service with the quota.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>This is the code specific to the quota type.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>List of tags returned by the operation.</p>
    #   @return [Hash<String, String>]
    # @!attribute name
    #   <p>Include alphanumeric characters to create a name for this search job.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The encryption key for the specified search job.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Include this parameter to allow multiple identical calls for idempotency.</p> <p>A client token is valid for 8 hours after the first request that uses it is completed. After this time, any request with the same token is treated as a new request.</p>
    #   @return [String]
    # @!attribute search_scope
    #   <p>This object can contain BackupResourceTypes, BackupResourceArns, BackupResourceCreationTime, BackupResourceTags, and SourceResourceArns to filter the recovery points returned by the search job.</p>
    #   @return [Types::SearchScope]
    # @!attribute item_filters
    #   <p>Item Filters represent all input item properties specified when the search was created.</p> <p>Contains either EBSItemFilters or S3ItemFilters</p>
    #   @return [Types::ItemFilters]
    class StartSearchJobInput < Struct.new(
      :tags,
      :name,
      :encryption_key_arn,
      :client_token,
      :search_scope,
      :item_filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute search_job_arn
    #   <p>The unique string that identifies the Amazon Resource Name (ARN) of the specified search job.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time that a job was created, in Unix format and Coordinated Universal Time (UTC). The value of <code>CompletionTime</code> is accurate to milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute search_job_identifier
    #   <p>The unique string that specifies the search job.</p>
    #   @return [String]
    class StartSearchJobOutput < Struct.new(
      :search_job_arn,
      :creation_time,
      :search_job_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute search_job_identifier
    #   <p>The unique string that specifies the search job.</p>
    #   @return [String]
    # @!attribute export_specification
    #   <p>This specification contains a required string of the destination bucket; optionally, you can include the destination prefix.</p>
    #   @return [Types::ExportSpecification]
    # @!attribute client_token
    #   <p>Include this parameter to allow multiple identical calls for idempotency.</p> <p>A client token is valid for 8 hours after the first request that uses it is completed. After this time, any request with the same token is treated as a new request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Optional tags to include. A tag is a key-value pair you can use to manage, filter, and search for your resources. Allowed characters include UTF-8 letters, numbers, spaces, and the following characters: + - = . _ : /. </p>
    #   @return [Hash<String, String>]
    # @!attribute role_arn
    #   <p>This parameter specifies the role ARN used to start the search results export jobs.</p>
    #   @return [String]
    class StartSearchResultExportJobInput < Struct.new(
      :search_job_identifier,
      :export_specification,
      :client_token,
      :tags,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_job_arn
    #   <p>This is the unique ARN (Amazon Resource Name) that belongs to the new export job.</p>
    #   @return [String]
    # @!attribute export_job_identifier
    #   <p>This is the unique identifier that specifies the new export job.</p>
    #   @return [String]
    class StartSearchResultExportJobOutput < Struct.new(
      :export_job_arn,
      :export_job_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute search_job_identifier
    #   <p>The unique string that specifies the search job.</p>
    #   @return [String]
    class StopSearchJobInput < Struct.new(
      :search_job_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StopSearchJobOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This contains the value of the string and can contain one or more operators.</p>
    # @!attribute value
    #   <p>The value of the string.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>A string that defines what values will be returned.</p> <p>If this is included, avoid combinations of operators that will return all possible values. For example, including both <code>EQUALS_TO</code> and <code>NOT_EQUALS_TO</code> with a value of <code>4</code> will return all values.</p>
    #   @return [String]
    class StringCondition < Struct.new(
      :value,
      :operator,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:operator] = 'EQUALS_TO' unless options.key?(:operator)
        super
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the resource.</p> <p>This is the resource that will have the indicated tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Required tags to include. A tag is a key-value pair you can use to manage, filter, and search for your resources. Allowed characters include UTF-8 letters, numbers, spaces, and the following characters: + - = . _ : /. </p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   <p>Request was unsuccessful due to request throttling.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>This is the code unique to the originating service.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>This is the code unique to the originating service with the quota.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Retry the call after number of seconds.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A time condition denotes a creation time, last modification time, or other time.</p>
    # @!attribute value
    #   <p>This is the timestamp value of the time condition.</p>
    #   @return [Time]
    # @!attribute operator
    #   <p>A string that defines what values will be returned.</p> <p>If this is included, avoid combinations of operators that will return all possible values. For example, including both <code>EQUALS_TO</code> and <code>NOT_EQUALS_TO</code> with a value of <code>4</code> will return all values.</p>
    #   @return [String]
    class TimeCondition < Struct.new(
      :value,
      :operator,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:operator] = 'EQUALS_TO' unless options.key?(:operator)
        super
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the resource where you want to remove tags.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>This required parameter contains the tag keys you want to remove from the source.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by a service.</p>
    # @!attribute message
    #   <p>The input fails to satisfy the constraints specified by an Amazon service.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
