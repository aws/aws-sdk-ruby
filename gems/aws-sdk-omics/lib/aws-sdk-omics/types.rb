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

    # @!attribute [rw] share_id
    #   The ID of the resource share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/AcceptShareRequest AWS API Documentation
    #
    class AcceptShareRequest < Struct.new(
      :share_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the resource share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/AcceptShareResponse AWS API Documentation
    #
    class AcceptShareResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] version_name
    #   The name of the annotation store version.
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
      :version_name,
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

    # Annotation store versions.
    #
    # @!attribute [rw] store_id
    #   The store ID for an annotation store version.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The annotation store version ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of an annotation store version.
    #   @return [String]
    #
    # @!attribute [rw] version_arn
    #   The Arn for an annotation store version.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name given to an annotation store version to distinguish it from
    #   others.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The name of an annotation store version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of an annotation store version.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time stamp for when an annotation store version was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time stamp for when an annotation store version was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status_message
    #   The status of an annotation store version.
    #   @return [String]
    #
    # @!attribute [rw] version_size_bytes
    #   The size of an annotation store version in Bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/AnnotationStoreVersionItem AWS API Documentation
    #
    class AnnotationStoreVersionItem < Struct.new(
      :store_id,
      :id,
      :status,
      :version_arn,
      :name,
      :version_name,
      :description,
      :creation_time,
      :update_time,
      :status_message,
      :version_size_bytes)
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

    # Use a container registry map to specify mappings between the ECR
    # private repository and one or more upstream registries. For more
    # information, see [Container images][1] in the *Amazon Web Services
    # HealthOmics User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/omics/latest/dev/workflows-ecr.html
    #
    # @!attribute [rw] registry_mappings
    #   Mapping that provides the ECR repository path where upstream
    #   container images are pulled and synchronized.
    #   @return [Array<Types::RegistryMapping>]
    #
    # @!attribute [rw] image_mappings
    #   Image mappings specify path mappings between the ECR private
    #   repository and their corresponding external repositories.
    #   @return [Array<Types::ImageMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ContainerRegistryMap AWS API Documentation
    #
    class ContainerRegistryMap < Struct.new(
      :registry_mappings,
      :image_mappings)
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
    # @!attribute [rw] version_name
    #   The name given to an annotation store version to distinguish it from
    #   other versions.
    #   @return [String]
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
      :version_name,
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
    # @!attribute [rw] version_name
    #   The name given to an annotation store version to distinguish it from
    #   other versions.
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
      :version_name,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of an annotation store version from which versions are
    #   being created.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The name given to an annotation store version to distinguish it from
    #   other versions.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of an annotation store version.
    #   @return [String]
    #
    # @!attribute [rw] version_options
    #   The options for an annotation store version.
    #   @return [Types::VersionOptions]
    #
    # @!attribute [rw] tags
    #   Any tags added to annotation store version.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateAnnotationStoreVersionRequest AWS API Documentation
    #
    class CreateAnnotationStoreVersionRequest < Struct.new(
      :name,
      :version_name,
      :description,
      :version_options,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   A generated ID for the annotation store
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The name given to an annotation store version to distinguish it from
    #   other versions.
    #   @return [String]
    #
    # @!attribute [rw] store_id
    #   The ID for the annotation store from which new versions are being
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] version_options
    #   The options for an annotation store version.
    #   @return [Types::VersionOptions]
    #
    # @!attribute [rw] name
    #   The name given to an annotation store version to distinguish it from
    #   other versions.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a annotation store version.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time stamp for the creation of an annotation store version.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateAnnotationStoreVersionResponse AWS API Documentation
    #
    class CreateAnnotationStoreVersionResponse < Struct.new(
      :id,
      :version_name,
      :store_id,
      :version_options,
      :name,
      :status,
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
    #   The ID for the initiated multipart upload.
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

    # @!attribute [rw] cache_behavior
    #   Default cache behavior for runs that use this cache. Supported
    #   values are:
    #
    #   `CACHE_ON_FAILURE`: Caches task outputs from completed tasks for
    #   runs that fail. This setting is useful if you're debugging a
    #   workflow that fails after several tasks completed successfully. The
    #   subsequent run uses the cache outputs for previously-completed tasks
    #   if the task definition, inputs, and container in ECR are identical
    #   to the prior run.
    #
    #   `CACHE_ALWAYS`: Caches task outputs from completed tasks for all
    #   runs. This setting is useful in development mode, but do not use it
    #   in a production setting.
    #
    #   If you don't specify a value, the default behavior is
    #   CACHE\_ON\_FAILURE. When you start a run that uses this cache, you
    #   can override the default cache behavior.
    #
    #   For more information, see [Run cache behavior][1] in the *Amazon Web
    #   Services HealthOmics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/how-run-cache.html#run-cache-behavior
    #   @return [String]
    #
    # @!attribute [rw] cache_s3_location
    #   Specify the S3 location for storing the cached task outputs. This
    #   data must be immediately accessible (not in an archived state).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Enter a description of the run cache.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Enter a user-friendly name for the run cache.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   A unique request token, to ensure idempotency. If you don't specify
    #   a token, Amazon Web Services HealthOmics automatically generates a
    #   universally unique identifier (UUID) for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specify one or more tags to associate with this run cache.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] cache_bucket_owner_id
    #   The Amazon Web Services account ID of the expected owner of the S3
    #   bucket for the run cache. If not provided, your account ID is set as
    #   the owner of the bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateRunCacheRequest AWS API Documentation
    #
    class CreateRunCacheRequest < Struct.new(
      :cache_behavior,
      :cache_s3_location,
      :description,
      :name,
      :request_id,
      :tags,
      :cache_bucket_owner_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Unique resource identifier for the run cache.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Identifier for the run cache.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Run cache status.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with this run cache.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateRunCacheResponse AWS API Documentation
    #
    class CreateRunCacheResponse < Struct.new(
      :arn,
      :id,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for the group.
    #   @return [String]
    #
    # @!attribute [rw] max_cpus
    #   The maximum number of CPUs that can run concurrently across all
    #   active runs in the run group.
    #   @return [Integer]
    #
    # @!attribute [rw] max_runs
    #   The maximum number of runs that can be running at the same time.
    #   @return [Integer]
    #
    # @!attribute [rw] max_duration
    #   The maximum time for each run (in minutes). If a run exceeds the
    #   maximum run time, the run fails automatically.
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
    #   The maximum number of GPUs that can run concurrently across all
    #   active runs in the run group.
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
    #   Tags for the store. You can configure up to 50 tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   An idempotency token used to dedupe retry requests so that duplicate
    #   runs are not created.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] fallback_location
    #   An S3 location that is used to store files that have failed a direct
    #   upload. You can add or change the `fallbackLocation` after creating
    #   a sequence store. This is not required if you are uploading files
    #   from a different S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] e_tag_algorithm_family
    #   The ETag algorithm family to use for ingested read sets. The default
    #   value is MD5up. For more information on ETags, see [ETags and data
    #   provenance][1] in the *Amazon Web Services HealthOmics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/etags-and-provenance.html
    #   @return [String]
    #
    # @!attribute [rw] propagated_set_level_tags
    #   The tags keys to propagate to the S3 objects associated with read
    #   sets in the sequence store. These tags can be used as input to add
    #   metadata to your read sets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] s3_access_config
    #   S3 access configuration parameters. This specifies the parameters
    #   needed to access logs stored in S3 buckets. The S3 bucket must be in
    #   the same region and account as the sequence store.
    #   @return [Types::S3AccessConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateSequenceStoreRequest AWS API Documentation
    #
    class CreateSequenceStoreRequest < Struct.new(
      :name,
      :description,
      :sse_config,
      :tags,
      :client_token,
      :fallback_location,
      :e_tag_algorithm_family,
      :propagated_set_level_tags,
      :s3_access_config)
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
    #   Server-side encryption (SSE) settings for the store. This contains
    #   the KMS key ARN that is used to encrypt read set objects.
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
    # @!attribute [rw] e_tag_algorithm_family
    #   The algorithm family of the ETag.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the sequence store.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message of the sequence store.
    #   @return [String]
    #
    # @!attribute [rw] propagated_set_level_tags
    #   The tags keys to propagate to the S3 objects associated with read
    #   sets in the sequence store.
    #   @return [Array<String>]
    #
    # @!attribute [rw] s3_access
    #   The S3 access metadata of the sequence store.
    #   @return [Types::SequenceStoreS3Access]
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
      :fallback_location,
      :e_tag_algorithm_family,
      :status,
      :status_message,
      :propagated_set_level_tags,
      :s3_access)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to be shared.
    #   @return [String]
    #
    # @!attribute [rw] principal_subscriber
    #   The principal subscriber is the account being offered shared access
    #   to the resource.
    #   @return [String]
    #
    # @!attribute [rw] share_name
    #   A name that the owner defines for the share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateShareRequest AWS API Documentation
    #
    class CreateShareRequest < Struct.new(
      :resource_arn,
      :principal_subscriber,
      :share_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] share_id
    #   The ID that HealthOmics generates for the share.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the share.
    #   @return [String]
    #
    # @!attribute [rw] share_name
    #   The name of the share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateShareResponse AWS API Documentation
    #
    class CreateShareResponse < Struct.new(
      :share_id,
      :status,
      :share_name)
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
    #   Name (optional but highly recommended) for the workflow to locate
    #   relevant information in the CloudWatch logs and Amazon Web Services
    #   HealthOmics console.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The workflow engine for the workflow. This is only required if you
    #   have workflow definition files from more than one engine in your zip
    #   file. Otherwise, the service can detect the engine automatically
    #   from your workflow definition.
    #   @return [String]
    #
    # @!attribute [rw] definition_zip
    #   A ZIP archive containing the main workflow definition file and
    #   dependencies that it imports for the workflow. You can use a file
    #   with a ://fileb prefix instead of the Base64 string. For more
    #   information, see [Workflow definition requirements][1] in the
    #   *Amazon Web Services HealthOmics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/workflow-defn-requirements.html
    #   @return [String]
    #
    # @!attribute [rw] definition_uri
    #   The S3 URI of a definition for the workflow. The S3 bucket must be
    #   in the same region as the workflow.
    #   @return [String]
    #
    # @!attribute [rw] main
    #   The path of the main definition file for the workflow. This
    #   parameter is not required if the ZIP archive contains only one
    #   workflow definition file, or if the main definition file is named
    #   “main”. An example path is: `workflow-definition/main-file.wdl`.
    #   @return [String]
    #
    # @!attribute [rw] parameter_template
    #   A parameter template for the workflow. If this field is blank,
    #   Amazon Web Services HealthOmics will automatically parse the
    #   parameter template values from your workflow definition file. To
    #   override these service generated default values, provide a parameter
    #   template. To view an example of a parameter template, see [Parameter
    #   template files][1] in the *Amazon Web Services HealthOmics User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/parameter-templates.html
    #   @return [Hash<String,Types::WorkflowParameter>]
    #
    # @!attribute [rw] storage_capacity
    #   The default static storage capacity (in gibibytes) for runs that use
    #   this workflow or workflow version. The `storageCapacity` can be
    #   overwritten at run time. The storage capacity is not required for
    #   runs with a `DYNAMIC` storage type.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Tags for the workflow. You can define up to 50 tags for the
    #   workflow. For more information, see [Adding a tag][1] in the *Amazon
    #   Web Services HealthOmics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/add-a-tag.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_id
    #   An idempotency token to ensure that duplicate workflows are not
    #   created when Amazon Web Services HealthOmics submits retry requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] accelerators
    #   The computational accelerator specified to run the workflow.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   The default storage type for runs that use this workflow. The
    #   `storageType` can be overridden at run time. `DYNAMIC` storage
    #   dynamically scales the storage up or down, based on file system
    #   utilization. `STATIC` storage allocates a fixed amount of storage.
    #   For more information about dynamic and static storage types, see
    #   [Run storage types][1] in the *Amazon Web Services HealthOmics User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/workflows-run-types.html
    #   @return [String]
    #
    # @!attribute [rw] container_registry_map
    #   (Optional) Use a container registry map to specify mappings between
    #   the ECR private repository and one or more upstream registries. For
    #   more information, see [Container images][1] in the *Amazon Web
    #   Services HealthOmics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/workflows-ecr.html
    #   @return [Types::ContainerRegistryMap]
    #
    # @!attribute [rw] container_registry_map_uri
    #   (Optional) URI of the S3 location for the registry mapping file.
    #   @return [String]
    #
    # @!attribute [rw] readme_markdown
    #   The markdown content for the workflow's README file. This provides
    #   documentation and usage information for users of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] parameter_template_path
    #   The path to the workflow parameter template JSON file within the
    #   repository. This file defines the input parameters for runs that use
    #   this workflow. If not specified, the workflow will be created
    #   without a parameter template.
    #   @return [String]
    #
    # @!attribute [rw] readme_path
    #   The path to the workflow README markdown file within the repository.
    #   This file provides documentation and usage information for the
    #   workflow. If not specified, the `README.md` file from the root
    #   directory of the repository will be used.
    #   @return [String]
    #
    # @!attribute [rw] definition_repository
    #   The repository information for the workflow definition. This allows
    #   you to source your workflow definition directly from a code
    #   repository.
    #   @return [Types::DefinitionRepository]
    #
    # @!attribute [rw] workflow_bucket_owner_id
    #   The Amazon Web Services account ID of the expected owner of the S3
    #   bucket that contains the workflow definition. If not specified, the
    #   service skips the validation.
    #   @return [String]
    #
    # @!attribute [rw] readme_uri
    #   The S3 URI of the README file for the workflow. This file provides
    #   documentation and usage information for the workflow. Requirements
    #   include:
    #
    #   * The S3 URI must begin with `s3://USER-OWNED-BUCKET/`
    #
    #   * The requester must have access to the S3 bucket and object.
    #
    #   * The max README content length is 500 KiB.
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
      :accelerators,
      :storage_type,
      :container_registry_map,
      :container_registry_map_uri,
      :readme_markdown,
      :parameter_template_path,
      :readme_path,
      :definition_repository,
      :workflow_bucket_owner_id,
      :readme_uri)
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
    # @!attribute [rw] uuid
    #   The universally unique identifier (UUID) value for this workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateWorkflowResponse AWS API Documentation
    #
    class CreateWorkflowResponse < Struct.new(
      :arn,
      :id,
      :status,
      :tags,
      :uuid)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_id
    #   The ID of the workflow where you are creating the new version. The
    #   `workflowId` is not the UUID.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   A name for the workflow version. Provide a version name that is
    #   unique for this workflow. You cannot change the name after
    #   HealthOmics creates the version.
    #
    #   The version name must start with a letter or number and it can
    #   include upper-case and lower-case letters, numbers, hyphens, periods
    #   and underscores. The maximum length is 64 characters. You can use a
    #   simple naming scheme, such as version1, version2, version3. You can
    #   also match your workflow versions with your own internal versioning
    #   conventions, such as 2.7.0, 2.7.1, 2.7.2.
    #   @return [String]
    #
    # @!attribute [rw] definition_zip
    #   A ZIP archive containing the main workflow definition file and
    #   dependencies that it imports for this workflow version. You can use
    #   a file with a ://fileb prefix instead of the Base64 string. For more
    #   information, see Workflow definition requirements in the *Amazon Web
    #   Services HealthOmics User Guide*.
    #   @return [String]
    #
    # @!attribute [rw] definition_uri
    #   The S3 URI of a definition for this workflow version. The S3 bucket
    #   must be in the same region as this workflow version.
    #   @return [String]
    #
    # @!attribute [rw] accelerators
    #   The computational accelerator for this workflow version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for this workflow version.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The workflow engine for this workflow version. This is only required
    #   if you have workflow definition files from more than one engine in
    #   your zip file. Otherwise, the service can detect the engine
    #   automatically from your workflow definition.
    #   @return [String]
    #
    # @!attribute [rw] main
    #   The path of the main definition file for this workflow version. This
    #   parameter is not required if the ZIP archive contains only one
    #   workflow definition file, or if the main definition file is named
    #   “main”. An example path is: `workflow-definition/main-file.wdl`.
    #   @return [String]
    #
    # @!attribute [rw] parameter_template
    #   A parameter template for this workflow version. If this field is
    #   blank, Amazon Web Services HealthOmics will automatically parse the
    #   parameter template values from your workflow definition file. To
    #   override these service generated default values, provide a parameter
    #   template. To view an example of a parameter template, see [Parameter
    #   template files][1] in the *Amazon Web Services HealthOmics User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/parameter-templates.html
    #   @return [Hash<String,Types::WorkflowParameter>]
    #
    # @!attribute [rw] request_id
    #   An idempotency token to ensure that duplicate workflows are not
    #   created when Amazon Web Services HealthOmics submits retry requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   The default storage type for runs that use this workflow version.
    #   The `storageType` can be overridden at run time. `DYNAMIC` storage
    #   dynamically scales the storage up or down, based on file system
    #   utilization. STATIC storage allocates a fixed amount of storage. For
    #   more information about dynamic and static storage types, see [Run
    #   storage types][1] in the *Amazon Web Services HealthOmics User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/workflows-run-types.html
    #   @return [String]
    #
    # @!attribute [rw] storage_capacity
    #   The default static storage capacity (in gibibytes) for runs that use
    #   this workflow version. The `storageCapacity` can be overwritten at
    #   run time. The storage capacity is not required for runs with a
    #   `DYNAMIC` storage type.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Tags for this workflow version. You can define up to 50 tags for the
    #   workflow. For more information, see [Adding a tag][1] in the *Amazon
    #   Web Services HealthOmics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/add-a-tag.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workflow_bucket_owner_id
    #   Amazon Web Services Id of the owner of the S3 bucket that contains
    #   the workflow definition. You need to specify this parameter if your
    #   account is not the bucket owner.
    #   @return [String]
    #
    # @!attribute [rw] container_registry_map
    #   (Optional) Use a container registry map to specify mappings between
    #   the ECR private repository and one or more upstream registries. For
    #   more information, see [Container images][1] in the *Amazon Web
    #   Services HealthOmics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/workflows-ecr.html
    #   @return [Types::ContainerRegistryMap]
    #
    # @!attribute [rw] container_registry_map_uri
    #   (Optional) URI of the S3 location for the registry mapping file.
    #   @return [String]
    #
    # @!attribute [rw] readme_markdown
    #   The markdown content for the workflow version's README file. This
    #   provides documentation and usage information for users of this
    #   specific workflow version.
    #   @return [String]
    #
    # @!attribute [rw] parameter_template_path
    #   The path to the workflow version parameter template JSON file within
    #   the repository. This file defines the input parameters for runs that
    #   use this workflow version. If not specified, the workflow version
    #   will be created without a parameter template.
    #   @return [String]
    #
    # @!attribute [rw] readme_path
    #   The path to the workflow version README markdown file within the
    #   repository. This file provides documentation and usage information
    #   for the workflow. If not specified, the `README.md` file from the
    #   root directory of the repository will be used.
    #   @return [String]
    #
    # @!attribute [rw] definition_repository
    #   The repository information for the workflow version definition. This
    #   allows you to source your workflow version definition directly from
    #   a code repository.
    #   @return [Types::DefinitionRepository]
    #
    # @!attribute [rw] readme_uri
    #   The S3 URI of the README file for the workflow version. This file
    #   provides documentation and usage information for the workflow
    #   version. Requirements include:
    #
    #   * The S3 URI must begin with `s3://USER-OWNED-BUCKET/`
    #
    #   * The requester must have access to the S3 bucket and object.
    #
    #   * The max README content length is 500 KiB.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateWorkflowVersionRequest AWS API Documentation
    #
    class CreateWorkflowVersionRequest < Struct.new(
      :workflow_id,
      :version_name,
      :definition_zip,
      :definition_uri,
      :accelerators,
      :description,
      :engine,
      :main,
      :parameter_template,
      :request_id,
      :storage_type,
      :storage_capacity,
      :tags,
      :workflow_bucket_owner_id,
      :container_registry_map,
      :container_registry_map_uri,
      :readme_markdown,
      :parameter_template_path,
      :readme_path,
      :definition_repository,
      :readme_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of the workflow version.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   The workflow's ID.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The workflow version name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The workflow version status.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The workflow version's tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] uuid
    #   The universally unique identifier (UUID) value for this workflow
    #   version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateWorkflowVersionResponse AWS API Documentation
    #
    class CreateWorkflowVersionResponse < Struct.new(
      :arn,
      :workflow_id,
      :version_name,
      :status,
      :tags,
      :uuid)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a source code repository that hosts the
    # workflow definition files.
    #
    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of the connection to the source code
    #   repository.
    #   @return [String]
    #
    # @!attribute [rw] full_repository_id
    #   The full repository identifier, including the repository owner and
    #   name. For example, 'repository-owner/repository-name'.
    #   @return [String]
    #
    # @!attribute [rw] source_reference
    #   The source reference for the repository, such as a branch name, tag,
    #   or commit ID.
    #   @return [Types::SourceReference]
    #
    # @!attribute [rw] exclude_file_patterns
    #   A list of file patterns to exclude when retrieving the workflow
    #   definition from the repository.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DefinitionRepository AWS API Documentation
    #
    class DefinitionRepository < Struct.new(
      :connection_arn,
      :full_repository_id,
      :source_reference,
      :exclude_file_patterns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed information about the source code repository that
    # hosts the workflow definition files.
    #
    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of the connection to the source code
    #   repository.
    #   @return [String]
    #
    # @!attribute [rw] full_repository_id
    #   The full repository identifier, including the repository owner and
    #   name. For example, 'repository-owner/repository-name'.
    #   @return [String]
    #
    # @!attribute [rw] source_reference
    #   The source reference for the repository, such as a branch name, tag,
    #   or commit ID.
    #   @return [Types::SourceReference]
    #
    # @!attribute [rw] provider_type
    #   The provider type of the source code repository, such as Bitbucket,
    #   GitHub, GitHubEnterpriseServer, GitLab, and GitLabSelfManaged.
    #   @return [String]
    #
    # @!attribute [rw] provider_endpoint
    #   The endpoint URL of the source code repository provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DefinitionRepositoryDetails AWS API Documentation
    #
    class DefinitionRepositoryDetails < Struct.new(
      :connection_arn,
      :full_repository_id,
      :source_reference,
      :provider_type,
      :provider_endpoint)
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

    # @!attribute [rw] name
    #   The name of the annotation store from which versions are being
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   The versions of an annotation store to be deleted.
    #   @return [Array<String>]
    #
    # @!attribute [rw] force
    #   Forces the deletion of an annotation store version when imports are
    #   in-progress..
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteAnnotationStoreVersionsRequest AWS API Documentation
    #
    class DeleteAnnotationStoreVersionsRequest < Struct.new(
      :name,
      :versions,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   Any errors that occur when attempting to delete an annotation store
    #   version.
    #   @return [Array<Types::VersionDeleteError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteAnnotationStoreVersionsResponse AWS API Documentation
    #
    class DeleteAnnotationStoreVersionsResponse < Struct.new(
      :errors)
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
    #   Run cache identifier for the cache you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteRunCacheRequest AWS API Documentation
    #
    class DeleteRunCacheRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] s3_access_point_arn
    #   The S3 access point ARN that has the access policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteS3AccessPolicyRequest AWS API Documentation
    #
    class DeleteS3AccessPolicyRequest < Struct.new(
      :s3_access_point_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteS3AccessPolicyResponse AWS API Documentation
    #
    class DeleteS3AccessPolicyResponse < Aws::EmptyStructure; end

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

    # @!attribute [rw] share_id
    #   The ID for the resource share to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteShareRequest AWS API Documentation
    #
    class DeleteShareRequest < Struct.new(
      :share_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the share being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteShareResponse AWS API Documentation
    #
    class DeleteShareResponse < Struct.new(
      :status)
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

    # @!attribute [rw] workflow_id
    #   The workflow's ID.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The workflow version name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteWorkflowVersionRequest AWS API Documentation
    #
    class DeleteWorkflowVersionRequest < Struct.new(
      :workflow_id,
      :version_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The entity tag (ETag) is a hash of the object representing its
    # semantic content.
    #
    # @!attribute [rw] algorithm
    #   The algorithm used to calculate the read set’s ETag(s).
    #   @return [String]
    #
    # @!attribute [rw] source1
    #   The ETag hash calculated on Source1 of the read set.
    #   @return [String]
    #
    # @!attribute [rw] source2
    #   The ETag hash calculated on Source2 of the read set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ETag AWS API Documentation
    #
    class ETag < Struct.new(
      :algorithm,
      :source1,
      :source2)
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
    # @!attribute [rw] s3_access
    #   The S3 URI metadata of a sequence store.
    #   @return [Types::ReadSetS3Access]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/FileInformation AWS API Documentation
    #
    class FileInformation < Struct.new(
      :total_parts,
      :part_size,
      :content_length,
      :s3_access)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use filters to return a subset of resources. You can define filters
    # for specific parameters, such as the resource status.
    #
    # @!attribute [rw] resource_arns
    #   Filter based on the Amazon Resource Number (ARN) of the resource.
    #   You can specify up to 10 values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   Filter based on the resource status. You can specify up to 10
    #   values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of resources to be filtered. You can specify one or more of
    #   the resource types.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :resource_arns,
      :status,
      :type)
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
    # @!attribute [rw] version_name
    #   The name of the annotation store version.
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
      :version_name,
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
    # @!attribute [rw] num_versions
    #   An integer indicating how many versions of an annotation store
    #   exist.
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
      :store_size_bytes,
      :num_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name given to an annotation store version to distinguish it from
    #   others.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The name given to an annotation store version to distinguish it from
    #   others.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetAnnotationStoreVersionRequest AWS API Documentation
    #
    class GetAnnotationStoreVersionRequest < Struct.new(
      :name,
      :version_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] store_id
    #   The store ID for annotation store version.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The annotation store version ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of an annotation store version.
    #   @return [String]
    #
    # @!attribute [rw] version_arn
    #   The Arn for the annotation store.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the annotation store.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The name given to an annotation store version to distinguish it from
    #   others.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for an annotation store version.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time stamp for when an annotation store version was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time stamp for when an annotation store version was updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Any tags associated with an annotation store version.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] version_options
    #   The options for an annotation store version.
    #   @return [Types::VersionOptions]
    #
    # @!attribute [rw] status_message
    #   The status of an annotation store version.
    #   @return [String]
    #
    # @!attribute [rw] version_size_bytes
    #   The size of the annotation store version in Bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetAnnotationStoreVersionResponse AWS API Documentation
    #
    class GetAnnotationStoreVersionResponse < Struct.new(
      :store_id,
      :id,
      :status,
      :version_arn,
      :name,
      :version_name,
      :description,
      :creation_time,
      :update_time,
      :tags,
      :version_options,
      :status_message,
      :version_size_bytes)
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
    # @!attribute [rw] creation_type
    #   The creation type of the read set.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The entity tag (ETag) is a hash of the object meant to represent its
    #   semantic content.
    #   @return [Types::ETag]
    #
    # @!attribute [rw] creation_job_id
    #   The read set's creation job ID.
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
      :status_message,
      :creation_type,
      :etag,
      :creation_job_id)
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
    # @!attribute [rw] creation_type
    #   The reference's creation type.
    #   @return [String]
    #
    # @!attribute [rw] creation_job_id
    #   The reference's creation job ID.
    #   @return [String]
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
      :files,
      :creation_type,
      :creation_job_id)
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
    #   The identifier of the run cache to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetRunCacheRequest AWS API Documentation
    #
    class GetRunCacheRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Unique resource identifier for the run cache.
    #   @return [String]
    #
    # @!attribute [rw] cache_behavior
    #   The default cache behavior for runs using this cache.
    #   @return [String]
    #
    # @!attribute [rw] cache_bucket_owner_id
    #   The identifier of the bucket owner.
    #   @return [String]
    #
    # @!attribute [rw] cache_s3_uri
    #   The S3 URI where the cache data is stored.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Creation time of the run cache (an ISO 8601 formatted string).
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The run cache description.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The run cache ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The run cache name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The run cache status.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the run cache.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetRunCacheResponse AWS API Documentation
    #
    class GetRunCacheResponse < Struct.new(
      :arn,
      :cache_behavior,
      :cache_bucket_owner_id,
      :cache_s3_uri,
      :creation_time,
      :description,
      :id,
      :name,
      :status,
      :tags)
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
    # @!attribute [rw] cache_id
    #   The run cache associated with the run.
    #   @return [String]
    #
    # @!attribute [rw] cache_behavior
    #   The run cache behavior for the run.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The actual Nextflow engine version that Amazon Web Services
    #   HealthOmics used for the run. The other workflow definition
    #   languages don't provide a value for this field.
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
    #   The run's storage capacity in gibibytes. For dynamic storage, after
    #   the run has completed, this value is the maximum amount of storage
    #   used during the run.
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
    # @!attribute [rw] retention_mode
    #   The run's retention mode.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason a run has failed.
    #   @return [String]
    #
    # @!attribute [rw] log_location
    #   The location of the run log.
    #   @return [Types::RunLogLocation]
    #
    # @!attribute [rw] uuid
    #   The universally unique identifier for a run.
    #   @return [String]
    #
    # @!attribute [rw] run_output_uri
    #   The destination for workflow outputs.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   The run's storage type.
    #   @return [String]
    #
    # @!attribute [rw] workflow_owner_id
    #   The ID of the workflow owner.
    #   @return [String]
    #
    # @!attribute [rw] workflow_version_name
    #   The workflow version name.
    #   @return [String]
    #
    # @!attribute [rw] workflow_uuid
    #   The universally unique identifier (UUID) value for the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetRunResponse AWS API Documentation
    #
    class GetRunResponse < Struct.new(
      :arn,
      :id,
      :cache_id,
      :cache_behavior,
      :engine_version,
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
      :accelerators,
      :retention_mode,
      :failure_reason,
      :log_location,
      :uuid,
      :run_output_uri,
      :storage_type,
      :workflow_owner_id,
      :workflow_version_name,
      :workflow_uuid)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The workflow run ID.
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
    # @!attribute [rw] cache_hit
    #   Set to true if Amazon Web Services HealthOmics found a matching
    #   entry in the run cache for this task.
    #   @return [Boolean]
    #
    # @!attribute [rw] cache_s3_uri
    #   The S3 URI of the cache location.
    #   @return [String]
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
    # @!attribute [rw] instance_type
    #   The instance type for a task.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason a task has failed.
    #   @return [String]
    #
    # @!attribute [rw] image_details
    #   Details about the container image that this task uses.
    #   @return [Types::ImageDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetRunTaskResponse AWS API Documentation
    #
    class GetRunTaskResponse < Struct.new(
      :task_id,
      :status,
      :name,
      :cpus,
      :cache_hit,
      :cache_s3_uri,
      :memory,
      :creation_time,
      :start_time,
      :stop_time,
      :status_message,
      :log_stream,
      :gpus,
      :instance_type,
      :failure_reason,
      :image_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] s3_access_point_arn
    #   The S3 access point ARN that has the access policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetS3AccessPolicyRequest AWS API Documentation
    #
    class GetS3AccessPolicyRequest < Struct.new(
      :s3_access_point_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] s3_access_point_arn
    #   The S3 access point ARN that has the access policy.
    #   @return [String]
    #
    # @!attribute [rw] store_id
    #   The Amazon Web Services-generated Sequence Store or Reference Store
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] store_type
    #   The type of store associated with the access point.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The time when the policy was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] s3_access_policy
    #   The current resource policy that controls S3 access on the store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetS3AccessPolicyResponse AWS API Documentation
    #
    class GetS3AccessPolicyResponse < Struct.new(
      :s3_access_point_arn,
      :store_id,
      :store_type,
      :update_time,
      :s3_access_policy)
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
    # @!attribute [rw] s3_access
    #   The S3 metadata of a sequence store, including the ARN and S3 URI of
    #   the S3 bucket.
    #   @return [Types::SequenceStoreS3Access]
    #
    # @!attribute [rw] e_tag_algorithm_family
    #   The algorithm family of the ETag.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the sequence store.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message of the sequence store.
    #   @return [String]
    #
    # @!attribute [rw] propagated_set_level_tags
    #   The tags keys to propagate to the S3 objects associated with read
    #   sets in the sequence store.
    #   @return [Array<String>]
    #
    # @!attribute [rw] update_time
    #   The last-updated time of the sequence store.
    #   @return [Time]
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
      :fallback_location,
      :s3_access,
      :e_tag_algorithm_family,
      :status,
      :status_message,
      :propagated_set_level_tags,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] share_id
    #   The ID of the share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetShareRequest AWS API Documentation
    #
    class GetShareRequest < Struct.new(
      :share_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] share
    #   A resource share details object. The object includes the status, the
    #   resourceArn, and ownerId.
    #   @return [Types::ShareDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetShareResponse AWS API Documentation
    #
    class GetShareResponse < Struct.new(
      :share)
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
    # @!attribute [rw] workflow_owner_id
    #   The ID of the workflow owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetWorkflowRequest AWS API Documentation
    #
    class GetWorkflowRequest < Struct.new(
      :id,
      :type,
      :export,
      :workflow_owner_id)
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
    #   The default static storage capacity (in gibibytes) for runs that use
    #   this workflow or workflow version.
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
    #   Gets metadata for the workflow.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] accelerators
    #   The computational accelerator specified to run the workflow.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   The default storage type for runs using this workflow.
    #   @return [String]
    #
    # @!attribute [rw] uuid
    #   The universally unique identifier (UUID) value for this workflow.
    #   @return [String]
    #
    # @!attribute [rw] container_registry_map
    #   The registry map that this workflow is using.
    #   @return [Types::ContainerRegistryMap]
    #
    # @!attribute [rw] readme
    #   The README content for the workflow, providing documentation and
    #   usage information.
    #   @return [String]
    #
    # @!attribute [rw] definition_repository_details
    #   Details about the source code repository that hosts the workflow
    #   definition files.
    #   @return [Types::DefinitionRepositoryDetails]
    #
    # @!attribute [rw] readme_path
    #   The path to the workflow README markdown file within the repository.
    #   This file provides documentation and usage information for the
    #   workflow. If not specified, the `README.md` file from the root
    #   directory of the repository will be used.
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
      :accelerators,
      :storage_type,
      :uuid,
      :container_registry_map,
      :readme,
      :definition_repository_details,
      :readme_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_id
    #   The workflow's ID. The `workflowId` is not the UUID.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The workflow version name.
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
    # @!attribute [rw] workflow_owner_id
    #   The 12-digit account ID of the workflow owner. The workflow owner ID
    #   can be retrieved using the `GetShare` API operation. If you are the
    #   workflow owner, you do not need to include this ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetWorkflowVersionRequest AWS API Documentation
    #
    class GetWorkflowVersionRequest < Struct.new(
      :workflow_id,
      :version_name,
      :type,
      :export,
      :workflow_owner_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of the workflow version.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   The workflow's ID.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The workflow version name.
    #   @return [String]
    #
    # @!attribute [rw] accelerators
    #   The accelerator for this workflow version.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the workflow version was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   Description of the workflow version.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Definition of the workflow version.
    #   @return [String]
    #
    # @!attribute [rw] digest
    #   The workflow version's digest.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The workflow engine for this workflow version.
    #   @return [String]
    #
    # @!attribute [rw] main
    #   The path of the main definition file for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata for the workflow version.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] parameter_template
    #   The parameter template for the workflow version.
    #   @return [Hash<String,Types::WorkflowParameter>]
    #
    # @!attribute [rw] status
    #   The workflow version status
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The workflow version status message
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   The default storage type for the run.
    #   @return [String]
    #
    # @!attribute [rw] storage_capacity
    #   The default run storage capacity for static storage.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The workflow version type
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The workflow version tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] uuid
    #   The universally unique identifier (UUID) value for this workflow
    #   version
    #   @return [String]
    #
    # @!attribute [rw] workflow_bucket_owner_id
    #   Amazon Web Services Id of the owner of the bucket.
    #   @return [String]
    #
    # @!attribute [rw] container_registry_map
    #   The registry map that this workflow version uses.
    #   @return [Types::ContainerRegistryMap]
    #
    # @!attribute [rw] readme
    #   The README content for the workflow version, providing documentation
    #   and usage information specific to this version.
    #   @return [String]
    #
    # @!attribute [rw] definition_repository_details
    #   Details about the source code repository that hosts the workflow
    #   version definition files.
    #   @return [Types::DefinitionRepositoryDetails]
    #
    # @!attribute [rw] readme_path
    #   The path to the workflow version README markdown file within the
    #   repository. This file provides documentation and usage information
    #   for the workflow. If not specified, the `README.md` file from the
    #   root directory of the repository will be used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetWorkflowVersionResponse AWS API Documentation
    #
    class GetWorkflowVersionResponse < Struct.new(
      :arn,
      :workflow_id,
      :version_name,
      :accelerators,
      :creation_time,
      :description,
      :definition,
      :digest,
      :engine,
      :main,
      :metadata,
      :parameter_template,
      :status,
      :status_message,
      :storage_type,
      :storage_capacity,
      :type,
      :tags,
      :uuid,
      :workflow_bucket_owner_id,
      :container_registry_map,
      :readme,
      :definition_repository_details,
      :readme_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the container image used for a task.
    #
    # @!attribute [rw] image
    #   The URI of the container image.
    #   @return [String]
    #
    # @!attribute [rw] image_digest
    #   The container image digest. If the image URI was transformed, this
    #   will be the digest of the container image referenced by the
    #   transformed URI.
    #   @return [String]
    #
    # @!attribute [rw] source_image
    #   URI of the source registry. If the URI is from a third-party
    #   registry, Amazon Web Services HealthOmics transforms the URI to the
    #   corresponding ECR path, using the pull-through cache mapping rules.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ImageDetails AWS API Documentation
    #
    class ImageDetails < Struct.new(
      :image,
      :image_digest,
      :source_image)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies image mappings that workflow tasks can use. For example, you
    # can replace all the task references of a public image to use an
    # equivalent image in your private ECR repository. You can use image
    # mappings with upstream registries that don't support pull through
    # cache. You need to manually synchronize the upstream registry with
    # your private repository.
    #
    # @!attribute [rw] source_image
    #   Specifies the URI of the source image in the upstream registry.
    #   @return [String]
    #
    # @!attribute [rw] destination_image
    #   Specifies the URI of the corresponding image in the private ECR
    #   registry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ImageMapping AWS API Documentation
    #
    class ImageMapping < Struct.new(
      :source_image,
      :destination_image)
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
    # @!attribute [rw] read_set_id
    #   The source's read set ID.
    #   @return [String]
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
      :tags,
      :read_set_id)
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
    # @!attribute [rw] reference_id
    #   The source's reference ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ImportReferenceSourceItem AWS API Documentation
    #
    class ImportReferenceSourceItem < Struct.new(
      :source_file,
      :status,
      :status_message,
      :name,
      :description,
      :tags,
      :reference_id)
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
    #   Specifies the pagination token from a previous request to retrieve
    #   the next page of results.
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
    #   Specifies the pagination token from a previous request to retrieve
    #   the next page of results.
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

    # Use filters to focus the returned annotation store versions on a
    # specific parameter, such as the status of the annotation store.
    #
    # @!attribute [rw] status
    #   The status of an annotation store version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListAnnotationStoreVersionsFilter AWS API Documentation
    #
    class ListAnnotationStoreVersionsFilter < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of an annotation store.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of annotation store versions to return in one
    #   page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies the pagination token from a previous request to retrieve
    #   the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter to apply to the list of annotation store versions.
    #   @return [Types::ListAnnotationStoreVersionsFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListAnnotationStoreVersionsRequest AWS API Documentation
    #
    class ListAnnotationStoreVersionsRequest < Struct.new(
      :name,
      :max_results,
      :next_token,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] annotation_store_versions
    #   Lists all versions of an annotation store.
    #   @return [Array<Types::AnnotationStoreVersionItem>]
    #
    # @!attribute [rw] next_token
    #   Specifies the pagination token from a previous request to retrieve
    #   the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListAnnotationStoreVersionsResponse AWS API Documentation
    #
    class ListAnnotationStoreVersionsResponse < Struct.new(
      :annotation_store_versions,
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

    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] starting_token
    #   Optional pagination token returned from a prior call to the
    #   `ListRunCaches` API operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListRunCachesRequest AWS API Documentation
    #
    class ListRunCachesRequest < Struct.new(
      :max_results,
      :starting_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Details about each run cache in the response.
    #   @return [Array<Types::RunCacheListItem>]
    #
    # @!attribute [rw] next_token
    #   Pagination token to retrieve additional run caches. If the response
    #   does not have a `nextToken`value, you have reached to the end of the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListRunCachesResponse AWS API Documentation
    #
    class ListRunCachesResponse < Struct.new(
      :items,
      :next_token)
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

    # @!attribute [rw] resource_owner
    #   The account that owns the resource shares.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Attributes that you use to filter for a specific subset of resource
    #   shares.
    #   @return [Types::Filter]
    #
    # @!attribute [rw] next_token
    #   Next token returned in the response of a previous
    #   ListReadSetUploadPartsRequest call. Used to get the next page of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of shares to return in one page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListSharesRequest AWS API Documentation
    #
    class ListSharesRequest < Struct.new(
      :resource_owner,
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] shares
    #   The shares available and their metadata details.
    #   @return [Array<Types::ShareDetails>]
    #
    # @!attribute [rw] next_token
    #   Next token returned in the response of a previous ListSharesResponse
    #   call. Used to get the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListSharesResponse AWS API Documentation
    #
    class ListSharesResponse < Struct.new(
      :shares,
      :next_token)
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

    # @!attribute [rw] workflow_id
    #   The workflow's ID. The `workflowId` is not the UUID.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The workflow type.
    #   @return [String]
    #
    # @!attribute [rw] workflow_owner_id
    #   The 12-digit account ID of the workflow owner. The workflow owner ID
    #   can be retrieved using the `GetShare` API operation. If you are the
    #   workflow owner, you do not need to include this ID.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListWorkflowVersionsRequest AWS API Documentation
    #
    class ListWorkflowVersionsRequest < Struct.new(
      :workflow_id,
      :type,
      :workflow_owner_id,
      :starting_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of workflow version items.
    #   @return [Array<Types::WorkflowVersionListItem>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListWorkflowVersionsResponse AWS API Documentation
    #
    class ListWorkflowVersionsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   Filter the list by workflow type.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Filter the list by workflow name.
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
    #   A list of workflow items.
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

    # @!attribute [rw] s3_access_point_arn
    #   The S3 access point ARN where you want to put the access policy.
    #   @return [String]
    #
    # @!attribute [rw] s3_access_policy
    #   The resource policy that controls S3 access to the store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/PutS3AccessPolicyRequest AWS API Documentation
    #
    class PutS3AccessPolicyRequest < Struct.new(
      :s3_access_point_arn,
      :s3_access_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] s3_access_point_arn
    #   The S3 access point ARN that now has the access policy.
    #   @return [String]
    #
    # @!attribute [rw] store_id
    #   The Amazon Web Services-generated Sequence Store or Reference Store
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] store_type
    #   The type of store associated with the access point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/PutS3AccessPolicyResponse AWS API Documentation
    #
    class PutS3AccessPolicyResponse < Struct.new(
      :s3_access_point_arn,
      :store_id,
      :store_type)
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
    # @!attribute [rw] creation_type
    #   The creation type of the read set.
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
      :generated_from,
      :creation_type)
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
    # @!attribute [rw] creation_type
    #   The creation type of the read set.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The entity tag (ETag) is a hash of the object representing its
    #   semantic content.
    #   @return [Types::ETag]
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
      :status_message,
      :creation_type,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 URI for each read set file.
    #
    # @!attribute [rw] s3_uri
    #   The S3 URI for each read set file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ReadSetS3Access AWS API Documentation
    #
    class ReadSetS3Access < Struct.new(
      :s3_uri)
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

    # If you are using the ECR pull through cache feature, the registry
    # mapping maps between the ECR repository and the upstream registry
    # where container images are pulled and synchronized.
    #
    # @!attribute [rw] upstream_registry_url
    #   The URI of the upstream registry.
    #   @return [String]
    #
    # @!attribute [rw] ecr_repository_prefix
    #   The repository prefix to use in the ECR private repository.
    #   @return [String]
    #
    # @!attribute [rw] upstream_repository_prefix
    #   The repository prefix of the corresponding repository in the
    #   upstream registry.
    #   @return [String]
    #
    # @!attribute [rw] ecr_account_id
    #   Account ID of the account that owns the upstream container image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/RegistryMapping AWS API Documentation
    #
    class RegistryMapping < Struct.new(
      :upstream_registry_url,
      :ecr_repository_prefix,
      :upstream_repository_prefix,
      :ecr_account_id)
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

    # List entry for one run cache.
    #
    # @!attribute [rw] arn
    #   Unique resource identifier for the run cache.
    #   @return [String]
    #
    # @!attribute [rw] cache_behavior
    #   Default cache behavior for the run cache.
    #   @return [String]
    #
    # @!attribute [rw] cache_s3_uri
    #   The S3 uri for the run cache data.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that this run cache was created (an ISO 8601 formatted
    #   string).
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The identifier for this run cache.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the run cache.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The run cache status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/RunCacheListItem AWS API Documentation
    #
    class RunCacheListItem < Struct.new(
      :arn,
      :cache_behavior,
      :cache_s3_uri,
      :creation_time,
      :id,
      :name,
      :status)
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
    #   The run's storage capacity in gibibytes. For dynamic storage, after
    #   the run has completed, this value is the maximum amount of storage
    #   used during the run.
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
    # @!attribute [rw] storage_type
    #   The run's storage type.
    #   @return [String]
    #
    # @!attribute [rw] workflow_version_name
    #   The name of the workflow version.
    #   @return [String]
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
      :stop_time,
      :storage_type,
      :workflow_version_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The URI for the run log.
    #
    # @!attribute [rw] engine_log_stream
    #   The log stream ARN for the engine log.
    #   @return [String]
    #
    # @!attribute [rw] run_log_stream
    #   The log stream ARN for the run log.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/RunLogLocation AWS API Documentation
    #
    class RunLogLocation < Struct.new(
      :engine_log_stream,
      :run_log_stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # S3 access configuration parameters.
    #
    # @!attribute [rw] access_log_location
    #   Location of the access logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/S3AccessConfig AWS API Documentation
    #
    class S3AccessConfig < Struct.new(
      :access_log_location)
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
    # @!attribute [rw] e_tag_algorithm_family
    #   The algorithm family of the ETag.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the sequence store.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message of the sequence store.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The last-updated time of the Sequence Store.
    #   @return [Time]
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
      :fallback_location,
      :e_tag_algorithm_family,
      :status,
      :status_message,
      :update_time)
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
    # @!attribute [rw] status
    #   Filter results based on status.
    #   @return [String]
    #
    # @!attribute [rw] updated_after
    #   Filter results based on stores updated after the specified time.
    #   @return [Time]
    #
    # @!attribute [rw] updated_before
    #   Filter results based on stores updated before the specified time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/SequenceStoreFilter AWS API Documentation
    #
    class SequenceStoreFilter < Struct.new(
      :name,
      :created_after,
      :created_before,
      :status,
      :updated_after,
      :updated_before)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 access metadata of the sequence store.
    #
    # @!attribute [rw] s3_uri
    #   The S3 URI of the sequence store.
    #   @return [String]
    #
    # @!attribute [rw] s3_access_point_arn
    #   This is ARN of the access point associated with the S3 bucket
    #   storing read sets.
    #   @return [String]
    #
    # @!attribute [rw] access_log_location
    #   Location of the access logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/SequenceStoreS3Access AWS API Documentation
    #
    class SequenceStoreS3Access < Struct.new(
      :s3_uri,
      :s3_access_point_arn,
      :access_log_location)
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

    # The details of a resource share.
    #
    # @!attribute [rw] share_id
    #   The ID of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Arn of the shared resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the shared resource.
    #   @return [String]
    #
    # @!attribute [rw] principal_subscriber
    #   The principal subscriber is the account that is sharing the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The account ID for the data owner. The owner creates the resource
    #   share.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the share.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for a resource share. It provides additional
    #   details about the share status.
    #   @return [String]
    #
    # @!attribute [rw] share_name
    #   The name of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp of when the resource share was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The timestamp of the resource share update.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ShareDetails AWS API Documentation
    #
    class ShareDetails < Struct.new(
      :share_id,
      :resource_arn,
      :resource_id,
      :principal_subscriber,
      :owner_id,
      :status,
      :status_message,
      :share_name,
      :creation_time,
      :update_time)
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

    # Contains information about the source reference in a code repository,
    # such as a branch, tag, or commit.
    #
    # @!attribute [rw] type
    #   The type of source reference, such as branch, tag, or commit.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the source reference, such as the branch name, tag
    #   name, or commit ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/SourceReference AWS API Documentation
    #
    class SourceReference < Struct.new(
      :type,
      :value)
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
    # @!attribute [rw] version_name
    #   The name of the annotation store version.
    #   @return [String]
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
      :version_name,
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
    #   The run's workflow ID. The `workflowId` is not the UUID.
    #   @return [String]
    #
    # @!attribute [rw] workflow_type
    #   The run's workflow type. The `workflowType` must be specified if
    #   you are running a `READY2RUN` workflow. If you are running a
    #   `PRIVATE` workflow (default), you do not need to include the
    #   workflow type.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The ID of a run to duplicate.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   A service role for the run. The `roleArn` requires access to Amazon
    #   Web Services HealthOmics, S3, Cloudwatch logs, and EC2. An example
    #   `roleArn` is
    #   `arn:aws:iam::123456789012:role/omics-service-role-serviceRole-W8O1XMPL7QZ`.
    #   In this example, the AWS account ID is `123456789012` and the role
    #   name is `omics-service-role-serviceRole-W8O1XMPL7QZ`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the run. This is recommended to view and organize runs in
    #   the Amazon Web Services HealthOmics console and CloudWatch logs.
    #   @return [String]
    #
    # @!attribute [rw] cache_id
    #   Identifier of the cache associated with this run. If you don't
    #   specify a cache ID, no task outputs are cached for this run.
    #   @return [String]
    #
    # @!attribute [rw] cache_behavior
    #   The cache behavior for the run. You specify this value if you want
    #   to override the default behavior for the cache. You had set the
    #   default value when you created the cache. For more information, see
    #   [Run cache behavior][1] in the *Amazon Web Services HealthOmics User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/how-run-cache.html#run-cache-behavior
    #   @return [String]
    #
    # @!attribute [rw] run_group_id
    #   The run's group ID. Use a run group to cap the compute resources
    #   (and number of concurrent runs) for the runs that you add to the run
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   Use the run priority (highest: 1) to establish the order of runs in
    #   a run group when you start a run. If multiple runs share the same
    #   priority, the run that was initiated first will have the higher
    #   priority. Runs that do not belong to a run group can be assigned a
    #   priority. The priorities of these runs are ranked among other runs
    #   that are not in a run group. For more information, see [Run
    #   priority][1] in the *Amazon Web Services HealthOmics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/creating-run-groups.html#run-priority
    #   @return [Integer]
    #
    # @!attribute [rw] parameters
    #   Parameters for the run. The run needs all required parameters and
    #   can include optional parameters. The run cannot include any
    #   parameters that are not defined in the parameter template. To
    #   retrieve parameters from the run, use the GetRun API operation.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] storage_capacity
    #   The `STATIC` storage capacity (in gibibytes, GiB) for this run. The
    #   default run storage capacity is 1200 GiB. If your requested storage
    #   capacity is unavailable, the system rounds up the value to the
    #   nearest 1200 GiB multiple. If the requested storage capacity is
    #   still unavailable, the system rounds up the value to the nearest
    #   2400 GiB multiple. This field is not required if the storage type is
    #   `DYNAMIC` (the system ignores any value that you enter).
    #   @return [Integer]
    #
    # @!attribute [rw] output_uri
    #   An output S3 URI for the run. The S3 bucket must be in the same
    #   region as the workflow. The role ARN must have permission to write
    #   to this S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   A log level for the run.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags for the run. You can add up to 50 tags per run. For more
    #   information, see [Adding a tag][1] in the *Amazon Web Services
    #   HealthOmics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/add-a-tag.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_id
    #   An idempotency token used to dedupe retry requests so that duplicate
    #   runs are not created.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] retention_mode
    #   The retention mode for the run. The default value is `RETAIN`.
    #
    #   Amazon Web Services HealthOmics stores a fixed number of runs that
    #   are available to the console and API. In the default mode
    #   (`RETAIN`), you need to remove runs manually when the number of run
    #   exceeds the maximum. If you set the retention mode to `REMOVE`,
    #   Amazon Web Services HealthOmics automatically removes runs (that
    #   have mode set to `REMOVE`) when the number of run exceeds the
    #   maximum. All run logs are available in CloudWatch logs, if you need
    #   information about a run that is no longer available to the API.
    #
    #   For more information about retention mode, see [Specifying run
    #   retention mode][1] in the *Amazon Web Services HealthOmics User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/starting-a-run.html
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   The storage type for the run. If you set the storage type to
    #   `DYNAMIC`, Amazon Web Services HealthOmics dynamically scales the
    #   storage up or down, based on file system utilization. By default,
    #   the run uses `STATIC` storage type, which allocates a fixed amount
    #   of storage. For more information about `DYNAMIC` and `STATIC`
    #   storage, see [Run storage types][1] in the *Amazon Web Services
    #   HealthOmics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/workflows-run-types.html
    #   @return [String]
    #
    # @!attribute [rw] workflow_owner_id
    #   The 12-digit account ID of the workflow owner that is used for
    #   running a shared workflow. The workflow owner ID can be retrieved
    #   using the `GetShare` API operation. If you are the workflow owner,
    #   you do not need to include this ID.
    #   @return [String]
    #
    # @!attribute [rw] workflow_version_name
    #   The name of the workflow version. Use workflow versions to track and
    #   organize changes to the workflow. If your workflow has multiple
    #   versions, the run uses the default version unless you specify a
    #   version name. To learn more, see [Workflow versioning][1] in the
    #   *Amazon Web Services HealthOmics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html
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
      :cache_id,
      :cache_behavior,
      :run_group_id,
      :priority,
      :parameters,
      :storage_capacity,
      :output_uri,
      :log_level,
      :tags,
      :request_id,
      :retention_mode,
      :storage_type,
      :workflow_owner_id,
      :workflow_version_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Unique resource identifier for the run.
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
    # @!attribute [rw] uuid
    #   The universally unique identifier for a run.
    #   @return [String]
    #
    # @!attribute [rw] run_output_uri
    #   The destination for workflow outputs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartRunResponse AWS API Documentation
    #
    class StartRunResponse < Struct.new(
      :arn,
      :id,
      :status,
      :tags,
      :uuid,
      :run_output_uri)
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
    # @!attribute [rw] cache_hit
    #   Set to true if Amazon Web Services HealthOmics found a matching
    #   entry in the run cache for this task.
    #   @return [Boolean]
    #
    # @!attribute [rw] cache_s3_uri
    #   The S3 URI of the cache location.
    #   @return [String]
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
    # @!attribute [rw] instance_type
    #   The instance type for a task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/TaskListItem AWS API Documentation
    #
    class TaskListItem < Struct.new(
      :task_id,
      :status,
      :name,
      :cpus,
      :cache_hit,
      :cache_s3_uri,
      :memory,
      :creation_time,
      :start_time,
      :stop_time,
      :gpus,
      :instance_type)
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

    # The options for a TSV file.
    #
    # @!attribute [rw] annotation_type
    #   The store version's annotation type.
    #   @return [String]
    #
    # @!attribute [rw] format_to_header
    #   The annotation store version's header key to column name mapping.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] schema
    #   The TSV schema for an annotation store version.
    #   @return [Array<Hash<String,String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/TsvVersionOptions AWS API Documentation
    #
    class TsvVersionOptions < Struct.new(
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

    # @!attribute [rw] name
    #   The name of an annotation store.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The name of an annotation store version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of an annotation store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateAnnotationStoreVersionRequest AWS API Documentation
    #
    class UpdateAnnotationStoreVersionRequest < Struct.new(
      :name,
      :version_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] store_id
    #   The annotation store ID.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The annotation store version ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of an annotation store version.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of an annotation store.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The name of an annotation store version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of an annotation store version.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time stamp for when an annotation store version was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time stamp for when an annotation store version was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateAnnotationStoreVersionResponse AWS API Documentation
    #
    class UpdateAnnotationStoreVersionResponse < Struct.new(
      :store_id,
      :id,
      :status,
      :name,
      :version_name,
      :description,
      :creation_time,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_behavior
    #   Update the default run cache behavior.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Update the run cache description.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the run cache you want to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Update the name of the run cache.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateRunCacheRequest AWS API Documentation
    #
    class UpdateRunCacheRequest < Struct.new(
      :cache_behavior,
      :description,
      :id,
      :name)
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

    # @!attribute [rw] id
    #   The ID of the sequence store.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the sequence store.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the sequence store.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   To ensure that requests don't run multiple times, specify a unique
    #   token for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] fallback_location
    #   The S3 URI of a bucket and folder to store Read Sets that fail to
    #   upload.
    #   @return [String]
    #
    # @!attribute [rw] propagated_set_level_tags
    #   The tags keys to propagate to the S3 objects associated with read
    #   sets in the sequence store.
    #   @return [Array<String>]
    #
    # @!attribute [rw] s3_access_config
    #   S3 access configuration parameters.
    #   @return [Types::S3AccessConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateSequenceStoreRequest AWS API Documentation
    #
    class UpdateSequenceStoreRequest < Struct.new(
      :id,
      :name,
      :description,
      :client_token,
      :fallback_location,
      :propagated_set_level_tags,
      :s3_access_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the sequence store.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the sequence store.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the sequence store.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the sequence store.
    #   @return [String]
    #
    # @!attribute [rw] sse_config
    #   Server-side encryption (SSE) settings for a store.
    #   @return [Types::SseConfig]
    #
    # @!attribute [rw] creation_time
    #   The time when the store was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The last-updated time of the Sequence Store.
    #   @return [Time]
    #
    # @!attribute [rw] propagated_set_level_tags
    #   The tags keys to propagate to the S3 objects associated with read
    #   sets in the sequence store.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the sequence store.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message of the sequence store.
    #   @return [String]
    #
    # @!attribute [rw] fallback_location
    #   The S3 URI of a bucket and folder to store Read Sets that fail to
    #   upload.
    #   @return [String]
    #
    # @!attribute [rw] s3_access
    #   The S3 access metadata of the sequence store.
    #   @return [Types::SequenceStoreS3Access]
    #
    # @!attribute [rw] e_tag_algorithm_family
    #   The ETag algorithm family to use on ingested read sets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateSequenceStoreResponse AWS API Documentation
    #
    class UpdateSequenceStoreResponse < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :sse_config,
      :creation_time,
      :update_time,
      :propagated_set_level_tags,
      :status,
      :status_message,
      :fallback_location,
      :s3_access,
      :e_tag_algorithm_family)
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
    # @!attribute [rw] storage_type
    #   The default storage type for runs that use this workflow. STATIC
    #   storage allocates a fixed amount of storage. DYNAMIC storage
    #   dynamically scales the storage up or down, based on file system
    #   utilization. For more information about static and dynamic storage,
    #   see [Running workflows][1] in the *Amazon Web Services HealthOmics
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/Using-workflows.html
    #   @return [String]
    #
    # @!attribute [rw] storage_capacity
    #   The default static storage capacity (in gibibytes) for runs that use
    #   this workflow or workflow version.
    #   @return [Integer]
    #
    # @!attribute [rw] readme_markdown
    #   The markdown content for the workflow's README file. This provides
    #   documentation and usage information for users of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateWorkflowRequest AWS API Documentation
    #
    class UpdateWorkflowRequest < Struct.new(
      :id,
      :name,
      :description,
      :storage_type,
      :storage_capacity,
      :readme_markdown)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_id
    #   The workflow's ID. The `workflowId` is not the UUID.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The name of the workflow version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the workflow version.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   The default storage type for runs that use this workflow version.
    #   The `storageType` can be overridden at run time. `DYNAMIC` storage
    #   dynamically scales the storage up or down, based on file system
    #   utilization. STATIC storage allocates a fixed amount of storage. For
    #   more information about dynamic and static storage types, see [Run
    #   storage types][1] in the <i>in the <i>Amazon Web Services
    #   HealthOmics User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/workflows-run-types.html
    #   @return [String]
    #
    # @!attribute [rw] storage_capacity
    #   The default static storage capacity (in gibibytes) for runs that use
    #   this workflow version. The `storageCapacity` can be overwritten at
    #   run time. The storage capacity is not required for runs with a
    #   `DYNAMIC` storage type.
    #   @return [Integer]
    #
    # @!attribute [rw] readme_markdown
    #   The markdown content for the workflow version's README file. This
    #   provides documentation and usage information for users of this
    #   specific workflow version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateWorkflowVersionRequest AWS API Documentation
    #
    class UpdateWorkflowVersionRequest < Struct.new(
      :workflow_id,
      :version_name,
      :description,
      :storage_type,
      :storage_capacity,
      :readme_markdown)
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

    # The error preventing deletion of the annotation store version.
    #
    # @!attribute [rw] version_name
    #   The name given to an annotation store version.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message explaining the error in annotation store deletion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/VersionDeleteError AWS API Documentation
    #
    class VersionDeleteError < Struct.new(
      :version_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options for an annotation store version.
    #
    # @note VersionOptions is a union - when making an API calls you must set exactly one of the members.
    #
    # @note VersionOptions is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of VersionOptions corresponding to the set member.
    #
    # @!attribute [rw] tsv_version_options
    #   File settings for a version of a TSV store.
    #   @return [Types::TsvVersionOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/VersionOptions AWS API Documentation
    #
    class VersionOptions < Struct.new(
      :tsv_version_options,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class TsvVersionOptions < VersionOptions; end
      class Unknown < VersionOptions; end
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

    # A list of workflow version items.
    #
    # @!attribute [rw] arn
    #   ARN of the workflow version.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   The workflow's ID.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The name of the workflow version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the workflow version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the workflow version.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the workflow version.
    #   @return [String]
    #
    # @!attribute [rw] digest
    #   The digist of the workflow version.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the workflow version.
    #   @return [Time]
    #
    # @!attribute [rw] metadata
    #   Metadata for the workflow version.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/WorkflowVersionListItem AWS API Documentation
    #
    class WorkflowVersionListItem < Struct.new(
      :arn,
      :workflow_id,
      :version_name,
      :description,
      :status,
      :type,
      :digest,
      :creation_time,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

