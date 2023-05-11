# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Omics
  module Types

    # @!attribute [rw] sequence_store_id
    #   The sequence store ID for the store involved in the multipart
    #   upload.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   The ID for the multipart upload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/AbortMultipartReadSetUploadRequest AWS API Documentation
    #
    class AbortMultipartReadSetUploadRequest < Struct.new(
      :sequence_store_id,
      :upload_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/AbortMultipartReadSetUploadResponse AWS API Documentation
    #
    class AbortMultipartReadSetUploadResponse < Aws::EmptyStructure; end

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A read set activation job filter.
    #
    # @!attribute [rw] status
    #   The filter's status.
    #   @return [String]
    #
    # @!attribute [rw] created_after
    #   The filter's start date.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   The filter's end date.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ActivateReadSetFilter AWS API Documentation
    #
    class ActivateReadSetFilter < Struct.new(
      :status,
      :created_after,
      :created_before)
      SENSITIVE = []
      include Aws::Structure
    end

    # A read set activation job.
    #
    # @!attribute [rw] id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] sequence_store_id
    #   The job's sequence store ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   When the job completed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ActivateReadSetJobItem AWS API Documentation
    #
    class ActivateReadSetJobItem < Struct.new(
      :id,
      :sequence_store_id,
      :status,
      :creation_time,
      :completion_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A source for a read set activation job.
    #
    # @!attribute [rw] read_set_id
    #   The source's read set ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The source's status.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The source's status message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ActivateReadSetSourceItem AWS API Documentation
    #
    class ActivateReadSetSourceItem < Struct.new(
      :read_set_id,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an imported annotation item.
    #
    # @!attribute [rw] source
    #   The source file's location in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The item's job status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/AnnotationImportItemDetail AWS API Documentation
    #
    class AnnotationImportItemDetail < Struct.new(
      :source,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A source for an annotation import job.
    #
    # @!attribute [rw] source
    #   The source file's location in Amazon S3.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/AnnotationImportItemSource AWS API Documentation
    #
    class AnnotationImportItemSource < Struct.new(
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # An annotation import job.
    #
    # @!attribute [rw] id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] destination_name
    #   The job's destination annotation store.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The job's service role ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   When the job was updated.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   When the job completed.
    #   @return [Time]
    #
    # @!attribute [rw] run_left_normalization
    #   The job's left normalization setting.
    #   @return [Boolean]
    #
    # @!attribute [rw] annotation_fields
    #   The annotation schema generated by the parsed annotation data.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/AnnotationImportJobItem AWS API Documentation
    #
    class AnnotationImportJobItem < Struct.new(
      :id,
      :destination_name,
      :role_arn,
      :status,
      :creation_time,
      :update_time,
      :completion_time,
      :run_left_normalization,
      :annotation_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # An annotation store.
    #
    # @!attribute [rw] id
    #   The store's ID.
    #   @return [String]
    #
    # @!attribute [rw] reference
    #   The store's genome reference.
    #   @return [Types::ReferenceItem]
    #
    # @!attribute [rw] status
    #   The store's status.
    #   @return [String]
    #
    # @!attribute [rw] store_arn
    #   The store's ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The store's name.
    #   @return [String]
    #
    # @!attribute [rw] store_format
    #   The store's file format.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The store's description.
    #   @return [String]
    #
    # @!attribute [rw] sse_config
    #   The store's server-side encryption (SSE) settings.
    #   @return [Types::SseConfig]
    #
    # @!attribute [rw] creation_time
    #   The store's creation time.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   When the store was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status_message
    #   The store's status message.
    #   @return [String]
    #
    # @!attribute [rw] store_size_bytes
    #   The store's size in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/AnnotationStoreItem AWS API Documentation
    #
    class AnnotationStoreItem < Struct.new(
      :id,
      :reference,
      :status,
      :store_arn,
      :name,
      :store_format,
      :description,
      :sse_config,
      :creation_time,
      :update_time,
      :status_message,
      :store_size_bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ids
    #   The read sets' IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sequence_store_id
    #   The read sets' sequence store ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/BatchDeleteReadSetRequest AWS API Documentation
    #
    class BatchDeleteReadSetRequest < Struct.new(
      :ids,
      :sequence_store_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   Errors returned by individual delete operations.
    #   @return [Array<Types::ReadSetBatchError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/BatchDeleteReadSetResponse AWS API Documentation
    #
    class BatchDeleteReadSetResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CancelAnnotationImportRequest AWS API Documentation
    #
    class CancelAnnotationImportRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CancelAnnotationImportResponse AWS API Documentation
    #
    class CancelAnnotationImportResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The run's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CancelRunRequest AWS API Documentation
    #
    class CancelRunRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CancelVariantImportRequest AWS API Documentation
    #
    class CancelVariantImportRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CancelVariantImportResponse AWS API Documentation
    #
    class CancelVariantImportResponse < Aws::EmptyStructure; end

    # @!attribute [rw] sequence_store_id
    #   The sequence store ID for the store involved in the multipart
    #   upload.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   The ID for the multipart upload.
    #   @return [String]
    #
    # @!attribute [rw] parts
    #   The individual uploads or parts of a multipart upload.
    #   @return [Array<Types::CompleteReadSetUploadPartListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CompleteMultipartReadSetUploadRequest AWS API Documentation
    #
    class CompleteMultipartReadSetUploadRequest < Struct.new(
      :sequence_store_id,
      :upload_id,
      :parts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] read_set_id
    #   The read set ID created for an uploaded read set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CompleteMultipartReadSetUploadResponse AWS API Documentation
    #
    class CompleteMultipartReadSetUploadResponse < Struct.new(
      :read_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Part of the response to the CompleteReadSetUpload API, including
    # metadata.
    #
    # @!attribute [rw] part_number
    #   A number identifying the part in a read set upload.
    #   @return [Integer]
    #
    # @!attribute [rw] part_source
    #   The source file of the part being uploaded.
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   A unique identifier used to confirm that parts are being added to
    #   the correct upload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CompleteReadSetUploadPartListItem AWS API Documentation
    #
    class CompleteReadSetUploadPartListItem < Struct.new(
      :part_number,
      :part_source,
      :checksum)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request cannot be applied to the target resource in its current
    # state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reference
    #   The genome reference for the store's annotations.
    #   @return [Types::ReferenceItem]
    #
    # @!attribute [rw] name
    #   A name for the store.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the store.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags for the store.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] sse_config
    #   Server-side encryption (SSE) settings for the store.
    #   @return [Types::SseConfig]
    #
    # @!attribute [rw] store_format
    #   The annotation file format of the store.
    #   @return [String]
    #
    # @!attribute [rw] store_options
    #   File parsing options for the annotation store.
    #   @return [Types::StoreOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateAnnotationStoreRequest AWS API Documentation
    #
    class CreateAnnotationStoreRequest < Struct.new(
      :reference,
      :name,
      :description,
      :tags,
      :sse_config,
      :store_format,
      :store_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The store's ID.
    #   @return [String]
    #
    # @!attribute [rw] reference
    #   The store's genome reference. Required for all stores except TSV
    #   format with generic annotations.
    #   @return [Types::ReferenceItem]
    #
    # @!attribute [rw] store_format
    #   The annotation file format of the store.
    #   @return [String]
    #
    # @!attribute [rw] store_options
    #   The store's file parsing options.
    #   @return [Types::StoreOptions]
    #
    # @!attribute [rw] status
    #   The store's status.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The store's name.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the store was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateAnnotationStoreResponse AWS API Documentation
    #
    class CreateAnnotationStoreResponse < Struct.new(
      :id,
      :reference,
      :store_format,
      :store_options,
      :status,
      :name,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sequence_store_id
    #   The sequence store ID for the store that is the destination of the
    #   multipart uploads.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   An idempotency token that can be used to avoid triggering multiple
    #   multipart uploads.
    #   @return [String]
    #
    # @!attribute [rw] source_file_type
    #   The type of file being uploaded.
    #   @return [String]
    #
    # @!attribute [rw] subject_id
    #   The source's subject ID.
    #   @return [String]
    #
    # @!attribute [rw] sample_id
    #   The source's sample ID.
    #   @return [String]
    #
    # @!attribute [rw] generated_from
    #   Where the source originated.
    #   @return [String]
    #
    # @!attribute [rw] reference_arn
    #   The ARN of the reference.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the read set.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the read set.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags to add to the read set.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateMultipartReadSetUploadRequest AWS API Documentation
    #
    class CreateMultipartReadSetUploadRequest < Struct.new(
      :sequence_store_id,
      :client_token,
      :source_file_type,
      :subject_id,
      :sample_id,
      :generated_from,
      :reference_arn,
      :name,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sequence_store_id
    #   The sequence store ID for the store that the read set will be
    #   created in.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   he ID for the initiated multipart upload.
    #   @return [String]
    #
    # @!attribute [rw] source_file_type
    #   The file type of the read set source.
    #   @return [String]
    #
    # @!attribute [rw] subject_id
    #   The source's subject ID.
    #   @return [String]
    #
    # @!attribute [rw] sample_id
    #   The source's sample ID.
    #   @return [String]
    #
    # @!attribute [rw] generated_from
    #   The source of the read set.
    #   @return [String]
    #
    # @!attribute [rw] reference_arn
    #   The read set source's reference ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the read set.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the read set.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the read set.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the multipart upload.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateMultipartReadSetUploadResponse AWS API Documentation
    #
    class CreateMultipartReadSetUploadResponse < Struct.new(
      :sequence_store_id,
      :upload_id,
      :source_file_type,
      :subject_id,
      :sample_id,
      :generated_from,
      :reference_arn,
      :name,
      :description,
      :tags,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for the store.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the store.
    #   @return [String]
    #
    # @!attribute [rw] sse_config
    #   Server-side encryption (SSE) settings for the store.
    #   @return [Types::SseConfig]
    #
    # @!attribute [rw] tags
    #   Tags for the store.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   To ensure that requests don't run multiple times, specify a unique
    #   token for each request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateReferenceStoreRequest AWS API Documentation
    #
    class CreateReferenceStoreRequest < Struct.new(
      :name,
      :description,
      :sse_config,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The store's ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The store's ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The store's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The store's description.
    #   @return [String]
    #
    # @!attribute [rw] sse_config
    #   The store's SSE settings.
    #   @return [Types::SseConfig]
    #
    # @!attribute [rw] creation_time
    #   When the store was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateReferenceStoreResponse AWS API Documentation
    #
    class CreateReferenceStoreResponse < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :sse_config,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for the group.
    #   @return [String]
    #
    # @!attribute [rw] max_cpus
    #   The maximum number of CPUs to use in the group.
    #   @return [Integer]
    #
    # @!attribute [rw] max_runs
    #   The maximum number of concurrent runs for the group.
    #   @return [Integer]
    #
    # @!attribute [rw] max_duration
    #   A maximum run time for the group in minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Tags for the group.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_id
    #   To ensure that requests don't run multiple times, specify a unique
    #   ID for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] max_gpus
    #   The maximum GPUs that can be used by a run group.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateRunGroupRequest AWS API Documentation
    #
    class CreateRunGroupRequest < Struct.new(
      :name,
      :max_cpus,
      :max_runs,
      :max_duration,
      :tags,
      :request_id,
      :max_gpus)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The group's ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The group's ID.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags for the run group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateRunGroupResponse AWS API Documentation
    #
    class CreateRunGroupResponse < Struct.new(
      :arn,
      :id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for the store.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the store.
    #   @return [String]
    #
    # @!attribute [rw] sse_config
    #   Server-side encryption (SSE) settings for the store.
    #   @return [Types::SseConfig]
    #
    # @!attribute [rw] tags
    #   Tags for the store.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   To ensure that requests don't run multiple times, specify a unique
    #   token for each request.
    #   @return [String]
    #
    # @!attribute [rw] fallback_location
    #   An S3 location that is used to store files that have failed a direct
    #   upload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateSequenceStoreRequest AWS API Documentation
    #
    class CreateSequenceStoreRequest < Struct.new(
      :name,
      :description,
      :sse_config,
      :tags,
      :client_token,
      :fallback_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The store's ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The store's ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The store's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The store's description.
    #   @return [String]
    #
    # @!attribute [rw] sse_config
    #   The store's SSE settings.
    #   @return [Types::SseConfig]
    #
    # @!attribute [rw] creation_time
    #   When the store was created.
    #   @return [Time]
    #
    # @!attribute [rw] fallback_location
    #   An S3 location that is used to store files that have failed a direct
    #   upload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateSequenceStoreResponse AWS API Documentation
    #
    class CreateSequenceStoreResponse < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :sse_config,
      :creation_time,
      :fallback_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reference
    #   The genome reference for the store's variants.
    #   @return [Types::ReferenceItem]
    #
    # @!attribute [rw] name
    #   A name for the store.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the store.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags for the store.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] sse_config
    #   Server-side encryption (SSE) settings for the store.
    #   @return [Types::SseConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateVariantStoreRequest AWS API Documentation
    #
    class CreateVariantStoreRequest < Struct.new(
      :reference,
      :name,
      :description,
      :tags,
      :sse_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The store's ID.
    #   @return [String]
    #
    # @!attribute [rw] reference
    #   The store's genome reference.
    #   @return [Types::ReferenceItem]
    #
    # @!attribute [rw] status
    #   The store's status.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The store's name.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the store was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateVariantStoreResponse AWS API Documentation
    #
    class CreateVariantStoreResponse < Struct.new(
      :id,
      :reference,
      :status,
      :name,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   An engine for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] definition_zip
    #   A ZIP archive for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] definition_uri
    #   The URI of a definition for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] main
    #   The path of the main definition file for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] parameter_template
    #   A parameter template for the workflow.
    #   @return [Hash<String,Types::WorkflowParameter>]
    #
    # @!attribute [rw] storage_capacity
    #   A storage capacity for the workflow in gigabytes.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Tags for the workflow.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_id
    #   To ensure that requests don't run multiple times, specify a unique
    #   ID for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] accelerators
    #   The computational accelerator specified to run the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateWorkflowRequest AWS API Documentation
    #
    class CreateWorkflowRequest < Struct.new(
      :name,
      :description,
      :engine,
      :definition_zip,
      :definition_uri,
      :main,
      :parameter_template,
      :storage_capacity,
      :tags,
      :request_id,
      :accelerators)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The workflow's ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The workflow's ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The workflow's status.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The workflow's tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateWorkflowResponse AWS API Documentation
    #
    class CreateWorkflowResponse < Struct.new(
      :arn,
      :id,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The store's name.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   Whether to force deletion.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteAnnotationStoreRequest AWS API Documentation
    #
    class DeleteAnnotationStoreRequest < Struct.new(
      :name,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The store's status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteAnnotationStoreResponse AWS API Documentation
    #
    class DeleteAnnotationStoreResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The reference's ID.
    #   @return [String]
    #
    # @!attribute [rw] reference_store_id
    #   The reference's store ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteReferenceRequest AWS API Documentation
    #
    class DeleteReferenceRequest < Struct.new(
      :id,
      :reference_store_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteReferenceResponse AWS API Documentation
    #
    class DeleteReferenceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The store's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteReferenceStoreRequest AWS API Documentation
    #
    class DeleteReferenceStoreRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteReferenceStoreResponse AWS API Documentation
    #
    class DeleteReferenceStoreResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The run group's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteRunGroupRequest AWS API Documentation
    #
    class DeleteRunGroupRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The run's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteRunRequest AWS API Documentation
    #
    class DeleteRunRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The sequence store's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteSequenceStoreRequest AWS API Documentation
    #
    class DeleteSequenceStoreRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteSequenceStoreResponse AWS API Documentation
    #
    class DeleteSequenceStoreResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The store's name.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   Whether to force deletion.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteVariantStoreRequest AWS API Documentation
    #
    class DeleteVariantStoreRequest < Struct.new(
      :name,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The store's status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteVariantStoreResponse AWS API Documentation
    #
    class DeleteVariantStoreResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The workflow's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteWorkflowRequest AWS API Documentation
    #
    class DeleteWorkflowRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A read set.
    #
    # @!attribute [rw] read_set_id
    #   The set's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ExportReadSet AWS API Documentation
    #
    class ExportReadSet < Struct.new(
      :read_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a read set.
    #
    # @!attribute [rw] id
    #   The set's ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The set's status.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The set's status message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ExportReadSetDetail AWS API Documentation
    #
    class ExportReadSetDetail < Struct.new(
      :id,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An read set export job filter.
    #
    # @!attribute [rw] status
    #   A status to filter on.
    #   @return [String]
    #
    # @!attribute [rw] created_after
    #   The filter's start date.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   The filter's end date.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ExportReadSetFilter AWS API Documentation
    #
    class ExportReadSetFilter < Struct.new(
      :status,
      :created_after,
      :created_before)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a read set export job.
    #
    # @!attribute [rw] id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] sequence_store_id
    #   The job's sequence store ID.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The job's destination in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   When the job completed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ExportReadSetJobDetail AWS API Documentation
    #
    class ExportReadSetJobDetail < Struct.new(
      :id,
      :sequence_store_id,
      :destination,
      :status,
      :creation_time,
      :completion_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a file.
    #
    # @!attribute [rw] total_parts
    #   The file's total parts.
    #   @return [Integer]
    #
    # @!attribute [rw] part_size
    #   The file's part size.
    #   @return [Integer]
    #
    # @!attribute [rw] content_length
    #   The file's content length.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/FileInformation AWS API Documentation
    #
    class FileInformation < Struct.new(
      :total_parts,
      :part_size,
      :content_length)
      SENSITIVE = []
      include Aws::Structure
    end

    # Formatting options for a file.
    #
    # @note FormatOptions is a union - when making an API calls you must set exactly one of the members.
    #
    # @note FormatOptions is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FormatOptions corresponding to the set member.
    #
    # @!attribute [rw] tsv_options
    #   Options for a TSV file.
    #   @return [Types::TsvOptions]
    #
    # @!attribute [rw] vcf_options
    #   Options for a VCF file.
    #   @return [Types::VcfOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/FormatOptions AWS API Documentation
    #
    class FormatOptions < Struct.new(
      :tsv_options,
      :vcf_options,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class TsvOptions < FormatOptions; end
      class VcfOptions < FormatOptions; end
      class Unknown < FormatOptions; end
    end

    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetAnnotationImportRequest AWS API Documentation
    #
    class GetAnnotationImportRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] destination_name
    #   The job's destination annotation store.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The job's service role ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The job's status message.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   When the job was updated.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   When the job completed.
    #   @return [Time]
    #
    # @!attribute [rw] items
    #   The job's imported items.
    #   @return [Array<Types::AnnotationImportItemDetail>]
    #
    # @!attribute [rw] run_left_normalization
    #   The job's left normalization setting.
    #   @return [Boolean]
    #
    # @!attribute [rw] format_options
    #   Formatting options for a file.
    #   @return [Types::FormatOptions]
    #
    # @!attribute [rw] annotation_fields
    #   The annotation schema generated by the parsed annotation data.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetAnnotationImportResponse AWS API Documentation
    #
    class GetAnnotationImportResponse < Struct.new(
      :id,
      :destination_name,
      :role_arn,
      :status,
      :status_message,
      :creation_time,
      :update_time,
      :completion_time,
      :items,
      :run_left_normalization,
      :format_options,
      :annotation_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The store's name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetAnnotationStoreRequest AWS API Documentation
    #
    class GetAnnotationStoreRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The store's ID.
    #   @return [String]
    #
    # @!attribute [rw] reference
    #   The store's genome reference.
    #   @return [Types::ReferenceItem]
    #
    # @!attribute [rw] status
    #   The store's status.
    #   @return [String]
    #
    # @!attribute [rw] store_arn
    #   The store's ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The store's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The store's description.
    #   @return [String]
    #
    # @!attribute [rw] sse_config
    #   The store's server-side encryption (SSE) settings.
    #   @return [Types::SseConfig]
    #
    # @!attribute [rw] creation_time
    #   When the store was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   When the store was updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The store's tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] store_options
    #   The store's parsing options.
    #   @return [Types::StoreOptions]
    #
    # @!attribute [rw] store_format
    #   The store's annotation file format.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A status message.
    #   @return [String]
    #
    # @!attribute [rw] store_size_bytes
    #   The store's size in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetAnnotationStoreResponse AWS API Documentation
    #
    class GetAnnotationStoreResponse < Struct.new(
      :id,
      :reference,
      :status,
      :store_arn,
      :name,
      :description,
      :sse_config,
      :creation_time,
      :update_time,
      :tags,
      :store_options,
      :store_format,
      :status_message,
      :store_size_bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] sequence_store_id
    #   The job's sequence store ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReadSetActivationJobRequest AWS API Documentation
    #
    class GetReadSetActivationJobRequest < Struct.new(
      :id,
      :sequence_store_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] sequence_store_id
    #   The job's sequence store ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The job's status message.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   When the job completed.
    #   @return [Time]
    #
    # @!attribute [rw] sources
    #   The job's source files.
    #   @return [Array<Types::ActivateReadSetSourceItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReadSetActivationJobResponse AWS API Documentation
    #
    class GetReadSetActivationJobResponse < Struct.new(
      :id,
      :sequence_store_id,
      :status,
      :status_message,
      :creation_time,
      :completion_time,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sequence_store_id
    #   The job's sequence store ID.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The job's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReadSetExportJobRequest AWS API Documentation
    #
    class GetReadSetExportJobRequest < Struct.new(
      :sequence_store_id,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] sequence_store_id
    #   The job's sequence store ID.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The job's destination in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The job's status message.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   When the job completed.
    #   @return [Time]
    #
    # @!attribute [rw] read_sets
    #   The job's read sets.
    #   @return [Array<Types::ExportReadSetDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReadSetExportJobResponse AWS API Documentation
    #
    class GetReadSetExportJobResponse < Struct.new(
      :id,
      :sequence_store_id,
      :destination,
      :status,
      :status_message,
      :creation_time,
      :completion_time,
      :read_sets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] sequence_store_id
    #   The job's sequence store ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReadSetImportJobRequest AWS API Documentation
    #
    class GetReadSetImportJobRequest < Struct.new(
      :id,
      :sequence_store_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] sequence_store_id
    #   The job's sequence store ID.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The job's service role ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The job's status message.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   When the job completed.
    #   @return [Time]
    #
    # @!attribute [rw] sources
    #   The job's source files.
    #   @return [Array<Types::ImportReadSetSourceItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReadSetImportJobResponse AWS API Documentation
    #
    class GetReadSetImportJobResponse < Struct.new(
      :id,
      :sequence_store_id,
      :role_arn,
      :status,
      :status_message,
      :creation_time,
      :completion_time,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The read set's ID.
    #   @return [String]
    #
    # @!attribute [rw] sequence_store_id
    #   The read set's sequence store ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReadSetMetadataRequest AWS API Documentation
    #
    class GetReadSetMetadataRequest < Struct.new(
      :id,
      :sequence_store_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The read set's ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The read set's ARN.
    #   @return [String]
    #
    # @!attribute [rw] sequence_store_id
    #   The read set's sequence store ID.
    #   @return [String]
    #
    # @!attribute [rw] subject_id
    #   The read set's subject ID.
    #   @return [String]
    #
    # @!attribute [rw] sample_id
    #   The read set's sample ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The read set's status.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The read set's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The read set's description.
    #   @return [String]
    #
    # @!attribute [rw] file_type
    #   The read set's file type.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the read set was created.
    #   @return [Time]
    #
    # @!attribute [rw] sequence_information
    #   The read set's sequence information.
    #   @return [Types::SequenceInformation]
    #
    # @!attribute [rw] reference_arn
    #   The read set's genome reference ARN.
    #   @return [String]
    #
    # @!attribute [rw] files
    #   The read set's files.
    #   @return [Types::ReadSetFiles]
    #
    # @!attribute [rw] status_message
    #   The status message for a read set. It provides more detail as to why
    #   the read set has a status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReadSetMetadataResponse AWS API Documentation
    #
    class GetReadSetMetadataResponse < Struct.new(
      :id,
      :arn,
      :sequence_store_id,
      :subject_id,
      :sample_id,
      :status,
      :name,
      :description,
      :file_type,
      :creation_time,
      :sequence_information,
      :reference_arn,
      :files,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The read set's ID.
    #   @return [String]
    #
    # @!attribute [rw] sequence_store_id
    #   The read set's sequence store ID.
    #   @return [String]
    #
    # @!attribute [rw] file
    #   The file to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] part_number
    #   The part number to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReadSetRequest AWS API Documentation
    #
    class GetReadSetRequest < Struct.new(
      :id,
      :sequence_store_id,
      :file,
      :part_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payload
    #   The read set file payload.
    #   @return [IO]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReadSetResponse AWS API Documentation
    #
    class GetReadSetResponse < Struct.new(
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] reference_store_id
    #   The job's reference store ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReferenceImportJobRequest AWS API Documentation
    #
    class GetReferenceImportJobRequest < Struct.new(
      :id,
      :reference_store_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] reference_store_id
    #   The job's reference store ID.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The job's service role ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The job's status message.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   When the job completed.
    #   @return [Time]
    #
    # @!attribute [rw] sources
    #   The job's source files.
    #   @return [Array<Types::ImportReferenceSourceItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReferenceImportJobResponse AWS API Documentation
    #
    class GetReferenceImportJobResponse < Struct.new(
      :id,
      :reference_store_id,
      :role_arn,
      :status,
      :status_message,
      :creation_time,
      :completion_time,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The reference's ID.
    #   @return [String]
    #
    # @!attribute [rw] reference_store_id
    #   The reference's reference store ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReferenceMetadataRequest AWS API Documentation
    #
    class GetReferenceMetadataRequest < Struct.new(
      :id,
      :reference_store_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The reference's ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The reference's ARN.
    #   @return [String]
    #
    # @!attribute [rw] reference_store_id
    #   The reference's reference store ID.
    #   @return [String]
    #
    # @!attribute [rw] md5
    #   The reference's MD5 checksum.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The reference's status.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The reference's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The reference's description.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the reference was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   When the reference was updated.
    #   @return [Time]
    #
    # @!attribute [rw] files
    #   The reference's files.
    #   @return [Types::ReferenceFiles]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReferenceMetadataResponse AWS API Documentation
    #
    class GetReferenceMetadataResponse < Struct.new(
      :id,
      :arn,
      :reference_store_id,
      :md5,
      :status,
      :name,
      :description,
      :creation_time,
      :update_time,
      :files)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The reference's ID.
    #   @return [String]
    #
    # @!attribute [rw] reference_store_id
    #   The reference's store ID.
    #   @return [String]
    #
    # @!attribute [rw] range
    #   The range to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] part_number
    #   The part number to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] file
    #   The file to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReferenceRequest AWS API Documentation
    #
    class GetReferenceRequest < Struct.new(
      :id,
      :reference_store_id,
      :range,
      :part_number,
      :file)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payload
    #   The reference file payload.
    #   @return [IO]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReferenceResponse AWS API Documentation
    #
    class GetReferenceResponse < Struct.new(
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The store's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReferenceStoreRequest AWS API Documentation
    #
    class GetReferenceStoreRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The store's ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The store's ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The store's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The store's description.
    #   @return [String]
    #
    # @!attribute [rw] sse_config
    #   The store's server-side encryption (SSE) settings.
    #   @return [Types::SseConfig]
    #
    # @!attribute [rw] creation_time
    #   When the store was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReferenceStoreResponse AWS API Documentation
    #
    class GetReferenceStoreResponse < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :sse_config,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The group's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetRunGroupRequest AWS API Documentation
    #
    class GetRunGroupRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The group's ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The group's ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The group's name.
    #   @return [String]
    #
    # @!attribute [rw] max_cpus
    #   The group's maximum number of CPUs to use.
    #   @return [Integer]
    #
    # @!attribute [rw] max_runs
    #   The maximum number of concurrent runs for the group.
    #   @return [Integer]
    #
    # @!attribute [rw] max_duration
    #   The group's maximum run time in minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   When the group was created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The group's tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] max_gpus
    #   The maximum GPUs that can be used by a run group.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetRunGroupResponse AWS API Documentation
    #
    class GetRunGroupResponse < Struct.new(
      :arn,
      :id,
      :name,
      :max_cpus,
      :max_runs,
      :max_duration,
      :creation_time,
      :tags,
      :max_gpus)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The run's ID.
    #   @return [String]
    #
    # @!attribute [rw] export
    #   The run's export format.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetRunRequest AWS API Documentation
    #
    class GetRunRequest < Struct.new(
      :id,
      :export)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The run's ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The run's ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The run's status.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   The run's workflow ID.
    #   @return [String]
    #
    # @!attribute [rw] workflow_type
    #   The run's workflow type.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The run's ID.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The run's service role ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The run's name.
    #   @return [String]
    #
    # @!attribute [rw] run_group_id
    #   The run's group ID.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The run's priority.
    #   @return [Integer]
    #
    # @!attribute [rw] definition
    #   The run's definition.
    #   @return [String]
    #
    # @!attribute [rw] digest
    #   The run's digest.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The run's parameters.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] storage_capacity
    #   The run's storage capacity in gigabytes.
    #   @return [Integer]
    #
    # @!attribute [rw] output_uri
    #   The run's output URI.
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   The run's log level.
    #   @return [String]
    #
    # @!attribute [rw] resource_digests
    #   The run's resource digests.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] started_by
    #   Who started the run.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the run was created.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   When the run started.
    #   @return [Time]
    #
    # @!attribute [rw] stop_time
    #   The run's stop time.
    #   @return [Time]
    #
    # @!attribute [rw] status_message
    #   The run's status message.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The run's tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] accelerators
    #   The computational accelerator used to run the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetRunResponse AWS API Documentation
    #
    class GetRunResponse < Struct.new(
      :arn,
      :id,
      :status,
      :workflow_id,
      :workflow_type,
      :run_id,
      :role_arn,
      :name,
      :run_group_id,
      :priority,
      :definition,
      :digest,
      :parameters,
      :storage_capacity,
      :output_uri,
      :log_level,
      :resource_digests,
      :started_by,
      :creation_time,
      :start_time,
      :stop_time,
      :status_message,
      :tags,
      :accelerators)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The task's ID.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The task's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetRunTaskRequest AWS API Documentation
    #
    class GetRunTaskRequest < Struct.new(
      :id,
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The task's ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The task's status.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The task's name.
    #   @return [String]
    #
    # @!attribute [rw] cpus
    #   The task's CPU usage.
    #   @return [Integer]
    #
    # @!attribute [rw] memory
    #   The task's memory use in gigabytes.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   When the task was created.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   The task's start time.
    #   @return [Time]
    #
    # @!attribute [rw] stop_time
    #   The task's stop time.
    #   @return [Time]
    #
    # @!attribute [rw] status_message
    #   The task's status message.
    #   @return [String]
    #
    # @!attribute [rw] log_stream
    #   The task's log stream.
    #   @return [String]
    #
    # @!attribute [rw] gpus
    #   The number of Graphics Processing Units (GPU) specified in the task.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetRunTaskResponse AWS API Documentation
    #
    class GetRunTaskResponse < Struct.new(
      :task_id,
      :status,
      :name,
      :cpus,
      :memory,
      :creation_time,
      :start_time,
      :stop_time,
      :status_message,
      :log_stream,
      :gpus)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The store's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetSequenceStoreRequest AWS API Documentation
    #
    class GetSequenceStoreRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The store's ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The store's ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The store's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The store's description.
    #   @return [String]
    #
    # @!attribute [rw] sse_config
    #   The store's server-side encryption (SSE) settings.
    #   @return [Types::SseConfig]
    #
    # @!attribute [rw] creation_time
    #   When the store was created.
    #   @return [Time]
    #
    # @!attribute [rw] fallback_location
    #   An S3 location that is used to store files that have failed a direct
    #   upload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetSequenceStoreResponse AWS API Documentation
    #
    class GetSequenceStoreResponse < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :sse_config,
      :creation_time,
      :fallback_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetVariantImportRequest AWS API Documentation
    #
    class GetVariantImportRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] destination_name
    #   The job's destination variant store.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The job's service role ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The job's status message.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   When the job was updated.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   When the job completed.
    #   @return [Time]
    #
    # @!attribute [rw] items
    #   The job's items.
    #   @return [Array<Types::VariantImportItemDetail>]
    #
    # @!attribute [rw] run_left_normalization
    #   The job's left normalization setting.
    #   @return [Boolean]
    #
    # @!attribute [rw] annotation_fields
    #   The annotation schema generated by the parsed annotation data.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetVariantImportResponse AWS API Documentation
    #
    class GetVariantImportResponse < Struct.new(
      :id,
      :destination_name,
      :role_arn,
      :status,
      :status_message,
      :creation_time,
      :update_time,
      :completion_time,
      :items,
      :run_left_normalization,
      :annotation_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The store's name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetVariantStoreRequest AWS API Documentation
    #
    class GetVariantStoreRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The store's ID.
    #   @return [String]
    #
    # @!attribute [rw] reference
    #   The store's genome reference.
    #   @return [Types::ReferenceItem]
    #
    # @!attribute [rw] status
    #   The store's status.
    #   @return [String]
    #
    # @!attribute [rw] store_arn
    #   The store's ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The store's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The store's description.
    #   @return [String]
    #
    # @!attribute [rw] sse_config
    #   The store's server-side encryption (SSE) settings.
    #   @return [Types::SseConfig]
    #
    # @!attribute [rw] creation_time
    #   When the store was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   When the store was updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The store's tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status_message
    #   The store's status message.
    #   @return [String]
    #
    # @!attribute [rw] store_size_bytes
    #   The store's size in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetVariantStoreResponse AWS API Documentation
    #
    class GetVariantStoreResponse < Struct.new(
      :id,
      :reference,
      :status,
      :store_arn,
      :name,
      :description,
      :sse_config,
      :creation_time,
      :update_time,
      :tags,
      :status_message,
      :store_size_bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The workflow's ID.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The workflow's type.
    #   @return [String]
    #
    # @!attribute [rw] export
    #   The export format for the workflow.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetWorkflowRequest AWS API Documentation
    #
    class GetWorkflowRequest < Struct.new(
      :id,
      :type,
      :export)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The workflow's ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The workflow's ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The workflow's status.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The workflow's type.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The workflow's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The workflow's description.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The workflow's engine.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The workflow's definition.
    #   @return [String]
    #
    # @!attribute [rw] main
    #   The path of the main definition file for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] digest
    #   The workflow's digest.
    #   @return [String]
    #
    # @!attribute [rw] parameter_template
    #   The workflow's parameter template.
    #   @return [Hash<String,Types::WorkflowParameter>]
    #
    # @!attribute [rw] storage_capacity
    #   The workflow's storage capacity in gigabytes.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   When the workflow was created.
    #   @return [Time]
    #
    # @!attribute [rw] status_message
    #   The workflow's status message.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The workflow's tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] metadata
    #   Gets metadata for workflow.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] accelerators
    #   The computational accelerator specified to run the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetWorkflowResponse AWS API Documentation
    #
    class GetWorkflowResponse < Struct.new(
      :arn,
      :id,
      :status,
      :type,
      :name,
      :description,
      :engine,
      :definition,
      :main,
      :digest,
      :parameter_template,
      :storage_capacity,
      :creation_time,
      :status_message,
      :tags,
      :metadata,
      :accelerators)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for import read set jobs.
    #
    # @!attribute [rw] status
    #   A status to filter on.
    #   @return [String]
    #
    # @!attribute [rw] created_after
    #   The filter's start date.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   The filter's end date.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ImportReadSetFilter AWS API Documentation
    #
    class ImportReadSetFilter < Struct.new(
      :status,
      :created_after,
      :created_before)
      SENSITIVE = []
      include Aws::Structure
    end

    # An import read set job.
    #
    # @!attribute [rw] id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] sequence_store_id
    #   The job's sequence store ID.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The job's service role ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   When the job completed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ImportReadSetJobItem AWS API Documentation
    #
    class ImportReadSetJobItem < Struct.new(
      :id,
      :sequence_store_id,
      :role_arn,
      :status,
      :creation_time,
      :completion_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A source for an import read set job.
    #
    # @!attribute [rw] source_files
    #   The source files' location in Amazon S3.
    #   @return [Types::SourceFiles]
    #
    # @!attribute [rw] source_file_type
    #   The source's file type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The source's status.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The source's status message.
    #   @return [String]
    #
    # @!attribute [rw] subject_id
    #   The source's subject ID.
    #   @return [String]
    #
    # @!attribute [rw] sample_id
    #   The source's sample ID.
    #   @return [String]
    #
    # @!attribute [rw] generated_from
    #   Where the source originated.
    #   @return [String]
    #
    # @!attribute [rw] reference_arn
    #   The source's genome reference ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The source's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The source's description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The source's tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ImportReadSetSourceItem AWS API Documentation
    #
    class ImportReadSetSourceItem < Struct.new(
      :source_files,
      :source_file_type,
      :status,
      :status_message,
      :subject_id,
      :sample_id,
      :generated_from,
      :reference_arn,
      :name,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for import references.
    #
    # @!attribute [rw] status
    #   A status to filter on.
    #   @return [String]
    #
    # @!attribute [rw] created_after
    #   The filter's start date.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   The filter's end date.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ImportReferenceFilter AWS API Documentation
    #
    class ImportReferenceFilter < Struct.new(
      :status,
      :created_after,
      :created_before)
      SENSITIVE = []
      include Aws::Structure
    end

    # An import reference job.
    #
    # @!attribute [rw] id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] reference_store_id
    #   The job's reference store ID.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The job's service role ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   When the job completed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ImportReferenceJobItem AWS API Documentation
    #
    class ImportReferenceJobItem < Struct.new(
      :id,
      :reference_store_id,
      :role_arn,
      :status,
      :creation_time,
      :completion_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An genome reference source.
    #
    # @!attribute [rw] source_file
    #   The source file's location in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The source's status.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The source's status message.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The source's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The source's description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The source's tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ImportReferenceSourceItem AWS API Documentation
    #
    class ImportReferenceSourceItem < Struct.new(
      :source_file,
      :status,
      :status_message,
      :name,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error occurred. Try the request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for annotation import jobs.
    #
    # @!attribute [rw] status
    #   A status to filter on.
    #   @return [String]
    #
    # @!attribute [rw] store_name
    #   A store name to filter on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListAnnotationImportJobsFilter AWS API Documentation
    #
    class ListAnnotationImportJobsFilter < Struct.new(
      :status,
      :store_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of jobs to return in one page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] ids
    #   IDs of annotation import jobs to retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter to apply to the list.
    #   @return [Types::ListAnnotationImportJobsFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListAnnotationImportJobsRequest AWS API Documentation
    #
    class ListAnnotationImportJobsRequest < Struct.new(
      :max_results,
      :ids,
      :next_token,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] annotation_import_jobs
    #   A list of jobs.
    #   @return [Array<Types::AnnotationImportJobItem>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListAnnotationImportJobsResponse AWS API Documentation
    #
    class ListAnnotationImportJobsResponse < Struct.new(
      :annotation_import_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for annotation stores.
    #
    # @!attribute [rw] status
    #   A status to filter on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListAnnotationStoresFilter AWS API Documentation
    #
    class ListAnnotationStoresFilter < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ids
    #   IDs of stores to list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of stores to return in one page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter to apply to the list.
    #   @return [Types::ListAnnotationStoresFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListAnnotationStoresRequest AWS API Documentation
    #
    class ListAnnotationStoresRequest < Struct.new(
      :ids,
      :max_results,
      :next_token,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] annotation_stores
    #   A list of stores.
    #   @return [Array<Types::AnnotationStoreItem>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListAnnotationStoresResponse AWS API Documentation
    #
    class ListAnnotationStoresResponse < Struct.new(
      :annotation_stores,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sequence_store_id
    #   The Sequence Store ID used for the multipart uploads.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of multipart uploads returned in a page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Next token returned in the response of a previous
    #   ListMultipartReadSetUploads call. Used to get the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListMultipartReadSetUploadsRequest AWS API Documentation
    #
    class ListMultipartReadSetUploadsRequest < Struct.new(
      :sequence_store_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Next token returned in the response of a previous
    #   ListMultipartReadSetUploads call. Used to get the next page of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] uploads
    #   An array of multipart uploads.
    #   @return [Array<Types::MultipartReadSetUploadListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListMultipartReadSetUploadsResponse AWS API Documentation
    #
    class ListMultipartReadSetUploadsResponse < Struct.new(
      :next_token,
      :uploads)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sequence_store_id
    #   The read set's sequence store ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of read set activation jobs to return in one page
    #   of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter to apply to the list.
    #   @return [Types::ActivateReadSetFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReadSetActivationJobsRequest AWS API Documentation
    #
    class ListReadSetActivationJobsRequest < Struct.new(
      :sequence_store_id,
      :max_results,
      :next_token,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] activation_jobs
    #   A list of jobs.
    #   @return [Array<Types::ActivateReadSetJobItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReadSetActivationJobsResponse AWS API Documentation
    #
    class ListReadSetActivationJobsResponse < Struct.new(
      :next_token,
      :activation_jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sequence_store_id
    #   The jobs' sequence store ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of jobs to return in one page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter to apply to the list.
    #   @return [Types::ExportReadSetFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReadSetExportJobsRequest AWS API Documentation
    #
    class ListReadSetExportJobsRequest < Struct.new(
      :sequence_store_id,
      :max_results,
      :next_token,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] export_jobs
    #   A list of jobs.
    #   @return [Array<Types::ExportReadSetJobDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReadSetExportJobsResponse AWS API Documentation
    #
    class ListReadSetExportJobsResponse < Struct.new(
      :next_token,
      :export_jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of jobs to return in one page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] sequence_store_id
    #   The jobs' sequence store ID.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter to apply to the list.
    #   @return [Types::ImportReadSetFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReadSetImportJobsRequest AWS API Documentation
    #
    class ListReadSetImportJobsRequest < Struct.new(
      :max_results,
      :next_token,
      :sequence_store_id,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] import_jobs
    #   A list of jobs.
    #   @return [Array<Types::ImportReadSetJobItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReadSetImportJobsResponse AWS API Documentation
    #
    class ListReadSetImportJobsResponse < Struct.new(
      :next_token,
      :import_jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sequence_store_id
    #   The Sequence Store ID used for the multipart uploads.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   The ID for the initiated multipart upload.
    #   @return [String]
    #
    # @!attribute [rw] part_source
    #   The source file for the upload part.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of read set upload parts returned in a page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Next token returned in the response of a previous
    #   ListReadSetUploadPartsRequest call. Used to get the next page of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Attributes used to filter for a specific subset of read set part
    #   uploads.
    #   @return [Types::ReadSetUploadPartListFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReadSetUploadPartsRequest AWS API Documentation
    #
    class ListReadSetUploadPartsRequest < Struct.new(
      :sequence_store_id,
      :upload_id,
      :part_source,
      :max_results,
      :next_token,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Next token returned in the response of a previous
    #   ListReadSetUploadParts call. Used to get the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] parts
    #   An array of upload parts.
    #   @return [Array<Types::ReadSetUploadPartListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReadSetUploadPartsResponse AWS API Documentation
    #
    class ListReadSetUploadPartsResponse < Struct.new(
      :next_token,
      :parts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sequence_store_id
    #   The jobs' sequence store ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of read sets to return in one page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter to apply to the list.
    #   @return [Types::ReadSetFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReadSetsRequest AWS API Documentation
    #
    class ListReadSetsRequest < Struct.new(
      :sequence_store_id,
      :max_results,
      :next_token,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] read_sets
    #   A list of read sets.
    #   @return [Array<Types::ReadSetListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReadSetsResponse AWS API Documentation
    #
    class ListReadSetsResponse < Struct.new(
      :next_token,
      :read_sets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of jobs to return in one page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] reference_store_id
    #   The job's reference store ID.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter to apply to the list.
    #   @return [Types::ImportReferenceFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReferenceImportJobsRequest AWS API Documentation
    #
    class ListReferenceImportJobsRequest < Struct.new(
      :max_results,
      :next_token,
      :reference_store_id,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] import_jobs
    #   A lis of jobs.
    #   @return [Array<Types::ImportReferenceJobItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReferenceImportJobsResponse AWS API Documentation
    #
    class ListReferenceImportJobsResponse < Struct.new(
      :next_token,
      :import_jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of stores to return in one page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter to apply to the list.
    #   @return [Types::ReferenceStoreFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReferenceStoresRequest AWS API Documentation
    #
    class ListReferenceStoresRequest < Struct.new(
      :max_results,
      :next_token,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] reference_stores
    #   A list of reference stores.
    #   @return [Array<Types::ReferenceStoreDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReferenceStoresResponse AWS API Documentation
    #
    class ListReferenceStoresResponse < Struct.new(
      :next_token,
      :reference_stores)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reference_store_id
    #   The references' reference store ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of references to return in one page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter to apply to the list.
    #   @return [Types::ReferenceFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReferencesRequest AWS API Documentation
    #
    class ListReferencesRequest < Struct.new(
      :reference_store_id,
      :max_results,
      :next_token,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] references
    #   A list of references.
    #   @return [Array<Types::ReferenceListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReferencesResponse AWS API Documentation
    #
    class ListReferencesResponse < Struct.new(
      :next_token,
      :references)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The run groups' name.
    #   @return [String]
    #
    # @!attribute [rw] starting_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of run groups to return in one page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListRunGroupsRequest AWS API Documentation
    #
    class ListRunGroupsRequest < Struct.new(
      :name,
      :starting_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of groups.
    #   @return [Array<Types::RunGroupListItem>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListRunGroupsResponse AWS API Documentation
    #
    class ListRunGroupsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The run's ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filter the list by status.
    #   @return [String]
    #
    # @!attribute [rw] starting_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of run tasks to return in one page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListRunTasksRequest AWS API Documentation
    #
    class ListRunTasksRequest < Struct.new(
      :id,
      :status,
      :starting_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of tasks.
    #   @return [Array<Types::TaskListItem>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListRunTasksResponse AWS API Documentation
    #
    class ListRunTasksResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Filter the list by run name.
    #   @return [String]
    #
    # @!attribute [rw] run_group_id
    #   Filter the list by run group ID.
    #   @return [String]
    #
    # @!attribute [rw] starting_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of runs to return in one page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of a run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListRunsRequest AWS API Documentation
    #
    class ListRunsRequest < Struct.new(
      :name,
      :run_group_id,
      :starting_token,
      :max_results,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of runs.
    #   @return [Array<Types::RunListItem>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListRunsResponse AWS API Documentation
    #
    class ListRunsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of stores to return in one page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter to apply to the list.
    #   @return [Types::SequenceStoreFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListSequenceStoresRequest AWS API Documentation
    #
    class ListSequenceStoresRequest < Struct.new(
      :max_results,
      :next_token,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] sequence_stores
    #   A list of sequence stores.
    #   @return [Array<Types::SequenceStoreDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListSequenceStoresResponse AWS API Documentation
    #
    class ListSequenceStoresResponse < Struct.new(
      :next_token,
      :sequence_stores)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource's ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for variant import jobs.
    #
    # @!attribute [rw] status
    #   A status to filter on.
    #   @return [String]
    #
    # @!attribute [rw] store_name
    #   A store name to filter on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListVariantImportJobsFilter AWS API Documentation
    #
    class ListVariantImportJobsFilter < Struct.new(
      :status,
      :store_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of import jobs to return in one page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] ids
    #   A list of job IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter to apply to the list.
    #   @return [Types::ListVariantImportJobsFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListVariantImportJobsRequest AWS API Documentation
    #
    class ListVariantImportJobsRequest < Struct.new(
      :max_results,
      :ids,
      :next_token,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] variant_import_jobs
    #   A list of jobs.
    #   @return [Array<Types::VariantImportJobItem>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListVariantImportJobsResponse AWS API Documentation
    #
    class ListVariantImportJobsResponse < Struct.new(
      :variant_import_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for variant stores.
    #
    # @!attribute [rw] status
    #   A status to filter on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListVariantStoresFilter AWS API Documentation
    #
    class ListVariantStoresFilter < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of stores to return in one page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] ids
    #   A list of store IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter to apply to the list.
    #   @return [Types::ListVariantStoresFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListVariantStoresRequest AWS API Documentation
    #
    class ListVariantStoresRequest < Struct.new(
      :max_results,
      :ids,
      :next_token,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] variant_stores
    #   A list of variant stores.
    #   @return [Array<Types::VariantStoreItem>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListVariantStoresResponse AWS API Documentation
    #
    class ListVariantStoresResponse < Struct.new(
      :variant_stores,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   The workflows' type.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The workflows' name.
    #   @return [String]
    #
    # @!attribute [rw] starting_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of workflows to return in one page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListWorkflowsRequest AWS API Documentation
    #
    class ListWorkflowsRequest < Struct.new(
      :type,
      :name,
      :starting_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The workflows' items.
    #   @return [Array<Types::WorkflowListItem>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListWorkflowsResponse AWS API Documentation
    #
    class ListWorkflowsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Part of the response to ListMultipartReadSetUploads, excluding
    # completed and aborted multipart uploads.
    #
    # @!attribute [rw] sequence_store_id
    #   The sequence store ID used for the multipart upload.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   The ID for the initiated multipart upload.
    #   @return [String]
    #
    # @!attribute [rw] source_file_type
    #   The type of file the read set originated from.
    #   @return [String]
    #
    # @!attribute [rw] subject_id
    #   The read set source's subject ID.
    #   @return [String]
    #
    # @!attribute [rw] sample_id
    #   The read set source's sample ID.
    #   @return [String]
    #
    # @!attribute [rw] generated_from
    #   The source of an uploaded part.
    #   @return [String]
    #
    # @!attribute [rw] reference_arn
    #   The source's reference ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a read set.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a read set.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags you wish to add to a read set.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] creation_time
    #   The time stamp for when a direct upload was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/MultipartReadSetUploadListItem AWS API Documentation
    #
    class MultipartReadSetUploadListItem < Struct.new(
      :sequence_store_id,
      :upload_id,
      :source_file_type,
      :subject_id,
      :sample_id,
      :generated_from,
      :reference_arn,
      :name,
      :description,
      :tags,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation is not supported by Amazon Omics, or the API does not
    # exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/NotSupportedOperationException AWS API Documentation
    #
    class NotSupportedOperationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ranges specified in the request are not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/RangeNotSatisfiableException AWS API Documentation
    #
    class RangeNotSatisfiableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Read options for an annotation import job.
    #
    # @!attribute [rw] sep
    #   The file's field separator.
    #   @return [String]
    #
    # @!attribute [rw] encoding
    #   The file's encoding.
    #   @return [String]
    #
    # @!attribute [rw] quote
    #   The file's quote character.
    #   @return [String]
    #
    # @!attribute [rw] quote_all
    #   Whether all values need to be quoted, or just those that contain
    #   quotes.
    #   @return [Boolean]
    #
    # @!attribute [rw] escape
    #   A character for escaping quotes in the file.
    #   @return [String]
    #
    # @!attribute [rw] escape_quotes
    #   Whether quotes need to be escaped in the file.
    #   @return [Boolean]
    #
    # @!attribute [rw] comment
    #   The file's comment character.
    #   @return [String]
    #
    # @!attribute [rw] header
    #   Whether the file has a header row.
    #   @return [Boolean]
    #
    # @!attribute [rw] line_sep
    #   A line separator for the file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ReadOptions AWS API Documentation
    #
    class ReadOptions < Struct.new(
      :sep,
      :encoding,
      :quote,
      :quote_all,
      :escape,
      :escape_quotes,
      :comment,
      :header,
      :line_sep)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error from a batch read set operation.
    #
    # @!attribute [rw] id
    #   The error's ID.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error's code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error's message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ReadSetBatchError AWS API Documentation
    #
    class ReadSetBatchError < Struct.new(
      :id,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Files in a read set.
    #
    # @!attribute [rw] source1
    #   The location of the first file in Amazon S3.
    #   @return [Types::FileInformation]
    #
    # @!attribute [rw] source2
    #   The location of the second file in Amazon S3.
    #   @return [Types::FileInformation]
    #
    # @!attribute [rw] index
    #   The files' index.
    #   @return [Types::FileInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ReadSetFiles AWS API Documentation
    #
    class ReadSetFiles < Struct.new(
      :source1,
      :source2,
      :index)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for read sets.
    #
    # @!attribute [rw] name
    #   A name to filter on.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A status to filter on.
    #   @return [String]
    #
    # @!attribute [rw] reference_arn
    #   A genome reference ARN to filter on.
    #   @return [String]
    #
    # @!attribute [rw] created_after
    #   The filter's start date.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   The filter's end date.
    #   @return [Time]
    #
    # @!attribute [rw] sample_id
    #   The read set source's sample ID.
    #   @return [String]
    #
    # @!attribute [rw] subject_id
    #   The read set source's subject ID.
    #   @return [String]
    #
    # @!attribute [rw] generated_from
    #   Where the source originated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ReadSetFilter AWS API Documentation
    #
    class ReadSetFilter < Struct.new(
      :name,
      :status,
      :reference_arn,
      :created_after,
      :created_before,
      :sample_id,
      :subject_id,
      :generated_from)
      SENSITIVE = []
      include Aws::Structure
    end

    # A read set.
    #
    # @!attribute [rw] id
    #   The read set's ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The read set's ARN.
    #   @return [String]
    #
    # @!attribute [rw] sequence_store_id
    #   The read set's sequence store ID.
    #   @return [String]
    #
    # @!attribute [rw] subject_id
    #   The read set's subject ID.
    #   @return [String]
    #
    # @!attribute [rw] sample_id
    #   The read set's sample ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The read set's status.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The read set's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The read set's description.
    #   @return [String]
    #
    # @!attribute [rw] reference_arn
    #   The read set's genome reference ARN.
    #   @return [String]
    #
    # @!attribute [rw] file_type
    #   The read set's file type.
    #   @return [String]
    #
    # @!attribute [rw] sequence_information
    #   Details about a sequence.
    #   @return [Types::SequenceInformation]
    #
    # @!attribute [rw] creation_time
    #   When the read set was created.
    #   @return [Time]
    #
    # @!attribute [rw] status_message
    #   The status for a read set. It provides more detail as to why the
    #   read set has a status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ReadSetListItem AWS API Documentation
    #
    class ReadSetListItem < Struct.new(
      :id,
      :arn,
      :sequence_store_id,
      :subject_id,
      :sample_id,
      :status,
      :name,
      :description,
      :reference_arn,
      :file_type,
      :sequence_information,
      :creation_time,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter settings that select for read set upload parts of interest.
    #
    # @!attribute [rw] created_after
    #   Filters for read set uploads after a specified time.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   Filters for read set part uploads before a specified time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ReadSetUploadPartListFilter AWS API Documentation
    #
    class ReadSetUploadPartListFilter < Struct.new(
      :created_after,
      :created_before)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata of a single part of a file that was added to a multipart
    # upload. A list of these parts is returned in the response to the
    # ListReadSetUploadParts API.
    #
    # @!attribute [rw] part_number
    #   The number identifying the part in an upload.
    #   @return [Integer]
    #
    # @!attribute [rw] part_size
    #   The size of the the part in an upload.
    #   @return [Integer]
    #
    # @!attribute [rw] part_source
    #   The origin of the part being direct uploaded.
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   A unique identifier used to confirm that parts are being added to
    #   the correct upload.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time stamp for when a direct upload was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time stamp for the most recent update to an uploaded part.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ReadSetUploadPartListItem AWS API Documentation
    #
    class ReadSetUploadPartListItem < Struct.new(
      :part_number,
      :part_size,
      :part_source,
      :checksum,
      :creation_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of genome reference files.
    #
    # @!attribute [rw] source
    #   The source file's location in Amazon S3.
    #   @return [Types::FileInformation]
    #
    # @!attribute [rw] index
    #   The files' index.
    #   @return [Types::FileInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ReferenceFiles AWS API Documentation
    #
    class ReferenceFiles < Struct.new(
      :source,
      :index)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for references.
    #
    # @!attribute [rw] name
    #   A name to filter on.
    #   @return [String]
    #
    # @!attribute [rw] md5
    #   An MD5 checksum to filter on.
    #   @return [String]
    #
    # @!attribute [rw] created_after
    #   The filter's start date.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   The filter's end date.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ReferenceFilter AWS API Documentation
    #
    class ReferenceFilter < Struct.new(
      :name,
      :md5,
      :created_after,
      :created_before)
      SENSITIVE = []
      include Aws::Structure
    end

    # A genome reference.
    #
    # @note ReferenceItem is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ReferenceItem is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ReferenceItem corresponding to the set member.
    #
    # @!attribute [rw] reference_arn
    #   The reference's ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ReferenceItem AWS API Documentation
    #
    class ReferenceItem < Struct.new(
      :reference_arn,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ReferenceArn < ReferenceItem; end
      class Unknown < ReferenceItem; end
    end

    # A genome reference.
    #
    # @!attribute [rw] id
    #   The reference's ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The reference's ARN.
    #   @return [String]
    #
    # @!attribute [rw] reference_store_id
    #   The reference's store ID.
    #   @return [String]
    #
    # @!attribute [rw] md5
    #   The reference's MD5 checksum.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The reference's status.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The reference's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The reference's description.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the reference was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   When the reference was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ReferenceListItem AWS API Documentation
    #
    class ReferenceListItem < Struct.new(
      :id,
      :arn,
      :reference_store_id,
      :md5,
      :status,
      :name,
      :description,
      :creation_time,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a reference store.
    #
    # @!attribute [rw] arn
    #   The store's ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The store's ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The store's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The store's description.
    #   @return [String]
    #
    # @!attribute [rw] sse_config
    #   The store's server-side encryption (SSE) settings.
    #   @return [Types::SseConfig]
    #
    # @!attribute [rw] creation_time
    #   When the store was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ReferenceStoreDetail AWS API Documentation
    #
    class ReferenceStoreDetail < Struct.new(
      :arn,
      :id,
      :name,
      :description,
      :sse_config,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for reference stores.
    #
    # @!attribute [rw] name
    #   The name to filter on.
    #   @return [String]
    #
    # @!attribute [rw] created_after
    #   The filter's start date.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   The filter's end date.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ReferenceStoreFilter AWS API Documentation
    #
    class ReferenceStoreFilter < Struct.new(
      :name,
      :created_after,
      :created_before)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request timed out.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/RequestTimeoutException AWS API Documentation
    #
    class RequestTimeoutException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target resource was not found in the current Region.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A run group.
    #
    # @!attribute [rw] arn
    #   The group's ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The group's ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The group's name.
    #   @return [String]
    #
    # @!attribute [rw] max_cpus
    #   The group's maximum CPU count setting.
    #   @return [Integer]
    #
    # @!attribute [rw] max_runs
    #   The group's maximum concurrent run setting.
    #   @return [Integer]
    #
    # @!attribute [rw] max_duration
    #   The group's maximum duration setting in minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   When the group was created.
    #   @return [Time]
    #
    # @!attribute [rw] max_gpus
    #   The maximum GPUs that can be used by a run group.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/RunGroupListItem AWS API Documentation
    #
    class RunGroupListItem < Struct.new(
      :arn,
      :id,
      :name,
      :max_cpus,
      :max_runs,
      :max_duration,
      :creation_time,
      :max_gpus)
      SENSITIVE = []
      include Aws::Structure
    end

    # A workflow run.
    #
    # @!attribute [rw] arn
    #   The run's ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The run's ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The run's status.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   The run's workflow ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The run's name.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The run's priority.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_capacity
    #   The run's storage capacity.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   When the run was created.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   When the run started.
    #   @return [Time]
    #
    # @!attribute [rw] stop_time
    #   When the run stopped.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/RunListItem AWS API Documentation
    #
    class RunListItem < Struct.new(
      :arn,
      :id,
      :status,
      :workflow_id,
      :name,
      :priority,
      :storage_capacity,
      :creation_time,
      :start_time,
      :stop_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a sequence.
    #
    # @!attribute [rw] total_read_count
    #   The sequence's total read count.
    #   @return [Integer]
    #
    # @!attribute [rw] total_base_count
    #   The sequence's total base count.
    #   @return [Integer]
    #
    # @!attribute [rw] generated_from
    #   Where the sequence originated.
    #   @return [String]
    #
    # @!attribute [rw] alignment
    #   The sequence's alignment setting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/SequenceInformation AWS API Documentation
    #
    class SequenceInformation < Struct.new(
      :total_read_count,
      :total_base_count,
      :generated_from,
      :alignment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a sequence store.
    #
    # @!attribute [rw] arn
    #   The store's ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The store's ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The store's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The store's description.
    #   @return [String]
    #
    # @!attribute [rw] sse_config
    #   The store's server-side encryption (SSE) settings.
    #   @return [Types::SseConfig]
    #
    # @!attribute [rw] creation_time
    #   When the store was created.
    #   @return [Time]
    #
    # @!attribute [rw] fallback_location
    #   An S3 location that is used to store files that have failed a direct
    #   upload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/SequenceStoreDetail AWS API Documentation
    #
    class SequenceStoreDetail < Struct.new(
      :arn,
      :id,
      :name,
      :description,
      :sse_config,
      :creation_time,
      :fallback_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for a sequence store.
    #
    # @!attribute [rw] name
    #   A name to filter on.
    #   @return [String]
    #
    # @!attribute [rw] created_after
    #   The filter's start date.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   The filter's end date.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/SequenceStoreFilter AWS API Documentation
    #
    class SequenceStoreFilter < Struct.new(
      :name,
      :created_after,
      :created_before)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds a service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Source files for a sequence.
    #
    # @!attribute [rw] source1
    #   The location of the first file in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] source2
    #   The location of the second file in Amazon S3.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/SourceFiles AWS API Documentation
    #
    class SourceFiles < Struct.new(
      :source1,
      :source2)
      SENSITIVE = []
      include Aws::Structure
    end

    # Server-side encryption (SSE) settings for a store.
    #
    # @!attribute [rw] type
    #   The encryption type.
    #   @return [String]
    #
    # @!attribute [rw] key_arn
    #   An encryption key ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/SseConfig AWS API Documentation
    #
    class SseConfig < Struct.new(
      :type,
      :key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination_name
    #   A destination annotation store for the job.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   A service role for the job.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Items to import.
    #   @return [Array<Types::AnnotationImportItemSource>]
    #
    # @!attribute [rw] format_options
    #   Formatting options for the annotation file.
    #   @return [Types::FormatOptions]
    #
    # @!attribute [rw] run_left_normalization
    #   The job's left normalization setting.
    #   @return [Boolean]
    #
    # @!attribute [rw] annotation_fields
    #   The annotation schema generated by the parsed annotation data.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartAnnotationImportRequest AWS API Documentation
    #
    class StartAnnotationImportRequest < Struct.new(
      :destination_name,
      :role_arn,
      :items,
      :format_options,
      :run_left_normalization,
      :annotation_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartAnnotationImportResponse AWS API Documentation
    #
    class StartAnnotationImportResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sequence_store_id
    #   The read set's sequence store ID.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   To ensure that jobs don't run multiple times, specify a unique
    #   token for each job.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The job's source files.
    #   @return [Array<Types::StartReadSetActivationJobSourceItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartReadSetActivationJobRequest AWS API Documentation
    #
    class StartReadSetActivationJobRequest < Struct.new(
      :sequence_store_id,
      :client_token,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] sequence_store_id
    #   The read set's sequence store ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the job was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartReadSetActivationJobResponse AWS API Documentation
    #
    class StartReadSetActivationJobResponse < Struct.new(
      :id,
      :sequence_store_id,
      :status,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A source for a read set activation job.
    #
    # @!attribute [rw] read_set_id
    #   The source's read set ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartReadSetActivationJobSourceItem AWS API Documentation
    #
    class StartReadSetActivationJobSourceItem < Struct.new(
      :read_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sequence_store_id
    #   The read set's sequence store ID.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   A location for exported files in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   A service role for the job.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   To ensure that jobs don't run multiple times, specify a unique
    #   token for each job.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The job's source files.
    #   @return [Array<Types::ExportReadSet>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartReadSetExportJobRequest AWS API Documentation
    #
    class StartReadSetExportJobRequest < Struct.new(
      :sequence_store_id,
      :destination,
      :role_arn,
      :client_token,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] sequence_store_id
    #   The read set's sequence store ID.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The job's output location.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the job was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartReadSetExportJobResponse AWS API Documentation
    #
    class StartReadSetExportJobResponse < Struct.new(
      :id,
      :sequence_store_id,
      :destination,
      :status,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sequence_store_id
    #   The read set's sequence store ID.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   A service role for the job.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   To ensure that jobs don't run multiple times, specify a unique
    #   token for each job.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The job's source files.
    #   @return [Array<Types::StartReadSetImportJobSourceItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartReadSetImportJobRequest AWS API Documentation
    #
    class StartReadSetImportJobRequest < Struct.new(
      :sequence_store_id,
      :role_arn,
      :client_token,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] sequence_store_id
    #   The read set's sequence store ID.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The job's service role ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the job was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartReadSetImportJobResponse AWS API Documentation
    #
    class StartReadSetImportJobResponse < Struct.new(
      :id,
      :sequence_store_id,
      :role_arn,
      :status,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A source for a read set import job.
    #
    # @!attribute [rw] source_files
    #   The source files' location in Amazon S3.
    #   @return [Types::SourceFiles]
    #
    # @!attribute [rw] source_file_type
    #   The source's file type.
    #   @return [String]
    #
    # @!attribute [rw] subject_id
    #   The source's subject ID.
    #   @return [String]
    #
    # @!attribute [rw] sample_id
    #   The source's sample ID.
    #   @return [String]
    #
    # @!attribute [rw] generated_from
    #   Where the source originated.
    #   @return [String]
    #
    # @!attribute [rw] reference_arn
    #   The source's reference ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The source's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The source's description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The source's tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartReadSetImportJobSourceItem AWS API Documentation
    #
    class StartReadSetImportJobSourceItem < Struct.new(
      :source_files,
      :source_file_type,
      :subject_id,
      :sample_id,
      :generated_from,
      :reference_arn,
      :name,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reference_store_id
    #   The job's reference store ID.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   A service role for the job.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   To ensure that jobs don't run multiple times, specify a unique
    #   token for each job.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The job's source files.
    #   @return [Array<Types::StartReferenceImportJobSourceItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartReferenceImportJobRequest AWS API Documentation
    #
    class StartReferenceImportJobRequest < Struct.new(
      :reference_store_id,
      :role_arn,
      :client_token,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] reference_store_id
    #   The job's reference store ID.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The job's service role ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the job was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartReferenceImportJobResponse AWS API Documentation
    #
    class StartReferenceImportJobResponse < Struct.new(
      :id,
      :reference_store_id,
      :role_arn,
      :status,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A source for a reference import job.
    #
    # @!attribute [rw] source_file
    #   The source file's location in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The source's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The source's description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The source's tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartReferenceImportJobSourceItem AWS API Documentation
    #
    class StartReferenceImportJobSourceItem < Struct.new(
      :source_file,
      :name,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_id
    #   The run's workflow ID.
    #   @return [String]
    #
    # @!attribute [rw] workflow_type
    #   The run's workflows type.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The run's ID.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   A service role for the run.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the run.
    #   @return [String]
    #
    # @!attribute [rw] run_group_id
    #   The run's group ID.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   A priority for the run.
    #   @return [Integer]
    #
    # @!attribute [rw] parameters
    #   Parameters for the run.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] storage_capacity
    #   A storage capacity for the run in gigabytes.
    #   @return [Integer]
    #
    # @!attribute [rw] output_uri
    #   An output URI for the run.
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   A log level for the run.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags for the run.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_id
    #   To ensure that requests don't run multiple times, specify a unique
    #   ID for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartRunRequest AWS API Documentation
    #
    class StartRunRequest < Struct.new(
      :workflow_id,
      :workflow_type,
      :run_id,
      :role_arn,
      :name,
      :run_group_id,
      :priority,
      :parameters,
      :storage_capacity,
      :output_uri,
      :log_level,
      :tags,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The run's ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The run's ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The run's status.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The run's tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartRunResponse AWS API Documentation
    #
    class StartRunResponse < Struct.new(
      :arn,
      :id,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination_name
    #   The destination variant store for the job.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   A service role for the job.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Items to import.
    #   @return [Array<Types::VariantImportItemSource>]
    #
    # @!attribute [rw] run_left_normalization
    #   The job's left normalization setting.
    #   @return [Boolean]
    #
    # @!attribute [rw] annotation_fields
    #   The annotation schema generated by the parsed annotation data.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartVariantImportRequest AWS API Documentation
    #
    class StartVariantImportRequest < Struct.new(
      :destination_name,
      :role_arn,
      :items,
      :run_left_normalization,
      :annotation_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartVariantImportResponse AWS API Documentation
    #
    class StartVariantImportResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for a store.
    #
    # @note StoreOptions is a union - when making an API calls you must set exactly one of the members.
    #
    # @note StoreOptions is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of StoreOptions corresponding to the set member.
    #
    # @!attribute [rw] tsv_store_options
    #   File settings for a TSV store.
    #   @return [Types::TsvStoreOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StoreOptions AWS API Documentation
    #
    class StoreOptions < Struct.new(
      :tsv_store_options,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class TsvStoreOptions < StoreOptions; end
      class Unknown < StoreOptions; end
    end

    # @!attribute [rw] resource_arn
    #   The resource's ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # A workflow run task.
    #
    # @!attribute [rw] task_id
    #   The task's ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The task's status.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The task's name.
    #   @return [String]
    #
    # @!attribute [rw] cpus
    #   The task's CPU count.
    #   @return [Integer]
    #
    # @!attribute [rw] memory
    #   The task's memory use in gigabyes.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   When the task was created.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   When the task started.
    #   @return [Time]
    #
    # @!attribute [rw] stop_time
    #   When the task stopped.
    #   @return [Time]
    #
    # @!attribute [rw] gpus
    #   The number of Graphics Processing Units (GPU) specified for the
    #   task.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/TaskListItem AWS API Documentation
    #
    class TaskListItem < Struct.new(
      :task_id,
      :status,
      :name,
      :cpus,
      :memory,
      :creation_time,
      :start_time,
      :stop_time,
      :gpus)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Formatting options for a TSV file.
    #
    # @!attribute [rw] read_options
    #   The file's read options.
    #   @return [Types::ReadOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/TsvOptions AWS API Documentation
    #
    class TsvOptions < Struct.new(
      :read_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # File settings for a TSV store.
    #
    # @!attribute [rw] annotation_type
    #   The store's annotation type.
    #   @return [String]
    #
    # @!attribute [rw] format_to_header
    #   The store's header key to column name mapping.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] schema
    #   The store's schema.
    #   @return [Array<Hash<String,String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/TsvStoreOptions AWS API Documentation
    #
    class TsvStoreOptions < Struct.new(
      :annotation_type,
      :format_to_header,
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource's ARN.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Keys of tags to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   A name for the store.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateAnnotationStoreRequest AWS API Documentation
    #
    class UpdateAnnotationStoreRequest < Struct.new(
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The store's ID.
    #   @return [String]
    #
    # @!attribute [rw] reference
    #   The store's genome reference.
    #   @return [Types::ReferenceItem]
    #
    # @!attribute [rw] status
    #   The store's status.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The store's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The store's description.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the store was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   When the store was updated.
    #   @return [Time]
    #
    # @!attribute [rw] store_options
    #   Parsing options for the store.
    #   @return [Types::StoreOptions]
    #
    # @!attribute [rw] store_format
    #   The annotation file format of the store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateAnnotationStoreResponse AWS API Documentation
    #
    class UpdateAnnotationStoreResponse < Struct.new(
      :id,
      :reference,
      :status,
      :name,
      :description,
      :creation_time,
      :update_time,
      :store_options,
      :store_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The group's ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the group.
    #   @return [String]
    #
    # @!attribute [rw] max_cpus
    #   The maximum number of CPUs to use.
    #   @return [Integer]
    #
    # @!attribute [rw] max_runs
    #   The maximum number of concurrent runs for the group.
    #   @return [Integer]
    #
    # @!attribute [rw] max_duration
    #   A maximum run time for the group in minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] max_gpus
    #   The maximum GPUs that can be used by a run group.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateRunGroupRequest AWS API Documentation
    #
    class UpdateRunGroupRequest < Struct.new(
      :id,
      :name,
      :max_cpus,
      :max_runs,
      :max_duration,
      :max_gpus)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for the store.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateVariantStoreRequest AWS API Documentation
    #
    class UpdateVariantStoreRequest < Struct.new(
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The store's ID.
    #   @return [String]
    #
    # @!attribute [rw] reference
    #   The store's genome reference.
    #   @return [Types::ReferenceItem]
    #
    # @!attribute [rw] status
    #   The store's status.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The store's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The store's description.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the store was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   When the store was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateVariantStoreResponse AWS API Documentation
    #
    class UpdateVariantStoreResponse < Struct.new(
      :id,
      :reference,
      :status,
      :name,
      :description,
      :creation_time,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The workflow's ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateWorkflowRequest AWS API Documentation
    #
    class UpdateWorkflowRequest < Struct.new(
      :id,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sequence_store_id
    #   The Sequence Store ID used for the multipart upload.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   The ID for the initiated multipart upload.
    #   @return [String]
    #
    # @!attribute [rw] part_source
    #   The source file for an upload part.
    #   @return [String]
    #
    # @!attribute [rw] part_number
    #   The number of the part being uploaded.
    #   @return [Integer]
    #
    # @!attribute [rw] payload
    #   The read set data to upload for a part.
    #   @return [IO]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UploadReadSetPartRequest AWS API Documentation
    #
    class UploadReadSetPartRequest < Struct.new(
      :sequence_store_id,
      :upload_id,
      :part_source,
      :part_number,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] checksum
    #   An identifier used to confirm that parts are being added to the
    #   intended upload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UploadReadSetPartResponse AWS API Documentation
    #
    class UploadReadSetPartResponse < Struct.new(
      :checksum)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an imported variant item.
    #
    # @!attribute [rw] source
    #   The source file's location in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The item's job status.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message that provides additional context about a job
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/VariantImportItemDetail AWS API Documentation
    #
    class VariantImportItemDetail < Struct.new(
      :source,
      :job_status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A imported variant item's source.
    #
    # @!attribute [rw] source
    #   The source file's location in Amazon S3.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/VariantImportItemSource AWS API Documentation
    #
    class VariantImportItemSource < Struct.new(
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # A variant import job.
    #
    # @!attribute [rw] id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] destination_name
    #   The job's destination variant store.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The job's service role ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   When the job was updated.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   When the job completed.
    #   @return [Time]
    #
    # @!attribute [rw] run_left_normalization
    #   The job's left normalization setting.
    #   @return [Boolean]
    #
    # @!attribute [rw] annotation_fields
    #   The annotation schema generated by the parsed annotation data.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/VariantImportJobItem AWS API Documentation
    #
    class VariantImportJobItem < Struct.new(
      :id,
      :destination_name,
      :role_arn,
      :status,
      :creation_time,
      :update_time,
      :completion_time,
      :run_left_normalization,
      :annotation_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # A variant store.
    #
    # @!attribute [rw] id
    #   The store's ID.
    #   @return [String]
    #
    # @!attribute [rw] reference
    #   The store's genome reference.
    #   @return [Types::ReferenceItem]
    #
    # @!attribute [rw] status
    #   The store's status.
    #   @return [String]
    #
    # @!attribute [rw] store_arn
    #   The store's ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The store's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The store's description.
    #   @return [String]
    #
    # @!attribute [rw] sse_config
    #   The store's server-side encryption (SSE) settings.
    #   @return [Types::SseConfig]
    #
    # @!attribute [rw] creation_time
    #   When the store was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   When the store was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status_message
    #   The store's status message.
    #   @return [String]
    #
    # @!attribute [rw] store_size_bytes
    #   The store's size in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/VariantStoreItem AWS API Documentation
    #
    class VariantStoreItem < Struct.new(
      :id,
      :reference,
      :status,
      :store_arn,
      :name,
      :description,
      :sse_config,
      :creation_time,
      :update_time,
      :status_message,
      :store_size_bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Formatting options for a VCF file.
    #
    # @!attribute [rw] ignore_qual_field
    #   The file's ignore qual field setting.
    #   @return [Boolean]
    #
    # @!attribute [rw] ignore_filter_field
    #   The file's ignore filter field setting.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/VcfOptions AWS API Documentation
    #
    class VcfOptions < Struct.new(
      :ignore_qual_field,
      :ignore_filter_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # A workflow.
    #
    # @!attribute [rw] arn
    #   The workflow's ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The workflow's ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The workflow's name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The workflow's status.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The workflow's type.
    #   @return [String]
    #
    # @!attribute [rw] digest
    #   The workflow's digest.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the workflow was created.
    #   @return [Time]
    #
    # @!attribute [rw] metadata
    #   Any metadata available for workflow. The information listed may vary
    #   depending on the workflow, and there may also be no metadata to
    #   return.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/WorkflowListItem AWS API Documentation
    #
    class WorkflowListItem < Struct.new(
      :arn,
      :id,
      :name,
      :status,
      :type,
      :digest,
      :creation_time,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # A workflow parameter.
    #
    # @!attribute [rw] description
    #   The parameter's description.
    #   @return [String]
    #
    # @!attribute [rw] optional
    #   Whether the parameter is optional.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/WorkflowParameter AWS API Documentation
    #
    class WorkflowParameter < Struct.new(
      :description,
      :optional)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
