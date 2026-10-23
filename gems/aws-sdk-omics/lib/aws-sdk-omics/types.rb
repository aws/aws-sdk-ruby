# frozen_string_literal: true

# This is generated code!

module Aws::Omics
  # This module contains the types returned by client operations.
  module Types

    # @!attribute sequence_store_id
    #   <p>The sequence store ID for the store involved in the multipart upload.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>The ID for the multipart upload.</p>
    #   @return [String]
    class AbortMultipartReadSetUploadRequest < Struct.new(
      nil,
      :sequence_store_id,
      :upload_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AbortMultipartReadSetUploadResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute share_id
    #   <p>The ID of the resource share.</p>
    #   @return [String]
    class AcceptShareRequest < Struct.new(
      nil,
      :share_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the resource share.</p>
    #   @return [String]
    class AcceptShareResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A read set activation job filter.</p>
    # @!attribute status
    #   <p>The filter's status.</p>
    #   @return [String]
    # @!attribute created_after
    #   <p>The filter's start date.</p>
    #   @return [Time]
    # @!attribute created_before
    #   <p>The filter's end date.</p>
    #   @return [Time]
    class ActivateReadSetFilter < Struct.new(
      nil,
      :status,
      :created_after,
      :created_before,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A read set activation job.</p>
    # @!attribute id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute sequence_store_id
    #   <p>The job's sequence store ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p>When the job completed.</p>
    #   @return [Time]
    class ActivateReadSetJobItem < Struct.new(
      nil,
      :id,
      :sequence_store_id,
      :status,
      :creation_time,
      :completion_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A source for a read set activation job.</p>
    # @!attribute read_set_id
    #   <p>The source's read set ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The source's status.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The source's status message.</p>
    #   @return [String]
    class ActivateReadSetSourceItem < Struct.new(
      nil,
      :read_set_id,
      :status,
      :status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an imported annotation item.</p>
    # @!attribute source
    #   <p>The source file's location in Amazon S3.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The item's job status.</p>
    #   @return [String]
    class AnnotationImportItemDetail < Struct.new(
      nil,
      :source,
      :job_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A source for an annotation import job.</p>
    # @!attribute source
    #   <p>The source file's location in Amazon S3.</p>
    #   @return [String]
    class AnnotationImportItemSource < Struct.new(
      nil,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An annotation import job.</p>
    # @!attribute id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute destination_name
    #   <p>The job's destination annotation store.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p> The name of the annotation store version. </p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The job's service role ARN.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>When the job was updated.</p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p>When the job completed.</p>
    #   @return [Time]
    # @!attribute run_left_normalization
    #   <p>The job's left normalization setting.</p>
    #   @return [Boolean]
    # @!attribute annotation_fields
    #   <p> The annotation schema generated by the parsed annotation data. </p>
    #   @return [Hash<String, String>]
    class AnnotationImportJobItem < Struct.new(
      nil,
      :id,
      :destination_name,
      :version_name,
      :role_arn,
      :status,
      :creation_time,
      :update_time,
      :completion_time,
      :run_left_normalization,
      :annotation_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:run_left_normalization] = false unless options.key?(:run_left_normalization)
        super
      end
    end

    # <p>An annotation store.</p>
    # @!attribute id
    #   <p>The store's ID.</p>
    #   @return [String]
    # @!attribute reference
    #   <p>The store's genome reference.</p>
    #   @return [Types::ReferenceItem]
    # @!attribute status
    #   <p>The store's status.</p>
    #   @return [String]
    # @!attribute store_arn
    #   <p>The store's ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The store's name.</p>
    #   @return [String]
    # @!attribute store_format
    #   <p>The store's file format.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The store's description.</p>
    #   @return [String]
    # @!attribute sse_config
    #   <p>The store's server-side encryption (SSE) settings.</p>
    #   @return [Types::SseConfig]
    # @!attribute creation_time
    #   <p>The store's creation time.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>When the store was updated.</p>
    #   @return [Time]
    # @!attribute status_message
    #   <p>The store's status message.</p>
    #   @return [String]
    # @!attribute store_size_bytes
    #   <p>The store's size in bytes.</p>
    #   @return [Integer]
    class AnnotationStoreItem < Struct.new(
      nil,
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
      :store_size_bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Annotation store versions. </p>
    # @!attribute store_id
    #   <p> The store ID for an annotation store version. </p>
    #   @return [String]
    # @!attribute id
    #   <p> The annotation store version ID. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of an annotation store version. </p>
    #   @return [String]
    # @!attribute version_arn
    #   <p> The Arn for an annotation store version. </p>
    #   @return [String]
    # @!attribute name
    #   <p> A name given to an annotation store version to distinguish it from others. </p>
    #   @return [String]
    # @!attribute version_name
    #   <p> The name of an annotation store version. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of an annotation store version. </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p> The time stamp for when an annotation store version was created. </p>
    #   @return [Time]
    # @!attribute update_time
    #   <p> The time stamp for when an annotation store version was updated. </p>
    #   @return [Time]
    # @!attribute status_message
    #   <p> The status of an annotation store version. </p>
    #   @return [String]
    # @!attribute version_size_bytes
    #   <p> The size of an annotation store version in Bytes. </p>
    #   @return [Integer]
    class AnnotationStoreVersionItem < Struct.new(
      nil,
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
      :version_size_bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ids
    #   <p>The read sets' IDs.</p>
    #   @return [Array<String>]
    # @!attribute sequence_store_id
    #   <p>The read sets' sequence store ID.</p>
    #   @return [String]
    class BatchDeleteReadSetRequest < Struct.new(
      nil,
      :ids,
      :sequence_store_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>Errors returned by individual delete operations.</p>
    #   @return [Array<Types::ReadSetBatchError>]
    class BatchDeleteReadSetResponse < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #   @return [String]
    class CancelAnnotationImportRequest < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelAnnotationImportResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The run's ID.</p>
    #   @return [String]
    class CancelRunRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #   @return [String]
    class CancelVariantImportRequest < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelVariantImportResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sequence_store_id
    #   <p>The sequence store ID for the store involved in the multipart upload.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>The ID for the multipart upload.</p>
    #   @return [String]
    # @!attribute parts
    #   <p>The individual uploads or parts of a multipart upload.</p>
    #   @return [Array<Types::CompleteReadSetUploadPartListItem>]
    class CompleteMultipartReadSetUploadRequest < Struct.new(
      nil,
      :sequence_store_id,
      :upload_id,
      :parts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute read_set_id
    #   <p>The read set ID created for an uploaded read set.</p>
    #   @return [String]
    class CompleteMultipartReadSetUploadResponse < Struct.new(
      nil,
      :read_set_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Part of the response to the CompleteReadSetUpload API, including metadata. </p>
    # @!attribute part_number
    #   <p> A number identifying the part in a read set upload. </p>
    #   @return [Integer]
    # @!attribute part_source
    #   <p> The source file of the part being uploaded. </p>
    #   @return [String]
    # @!attribute checksum
    #   <p> A unique identifier used to confirm that parts are being added to the correct upload. </p>
    #   @return [String]
    class CompleteReadSetUploadPartListItem < Struct.new(
      nil,
      :part_number,
      :part_source,
      :checksum,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request cannot be applied to the target resource in its current state.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Use a container registry map to specify mappings between the ECR private repository and one or more upstream registries. For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflows-ecr.html">Container images</a> in the <i>Amazon Web Services HealthOmics User Guide</i>. </p>
    # @!attribute registry_mappings
    #   <p>Mapping that provides the ECR repository path where upstream container images are pulled and synchronized.</p>
    #   @return [Array<Types::RegistryMapping>]
    # @!attribute image_mappings
    #   <p>Image mappings specify path mappings between the ECR private repository and their corresponding external repositories.</p>
    #   @return [Array<Types::ImageMapping>]
    class ContainerRegistryMap < Struct.new(
      nil,
      :registry_mappings,
      :image_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reference
    #   <p>The genome reference for the store's annotations.</p>
    #   @return [Types::ReferenceItem]
    # @!attribute name
    #   <p>A name for the store.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the store.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags for the store.</p>
    #   @return [Hash<String, String>]
    # @!attribute version_name
    #   <p> The name given to an annotation store version to distinguish it from other versions. </p>
    #   @return [String]
    # @!attribute sse_config
    #   <p>Server-side encryption (SSE) settings for the store.</p>
    #   @return [Types::SseConfig]
    # @!attribute store_format
    #   <p>The annotation file format of the store.</p>
    #   @return [String]
    # @!attribute store_options
    #   <p>File parsing options for the annotation store.</p>
    #   @return [Types::StoreOptions]
    class CreateAnnotationStoreRequest < Struct.new(
      nil,
      :reference,
      :name,
      :description,
      :tags,
      :version_name,
      :sse_config,
      :store_format,
      :store_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The store's ID.</p>
    #   @return [String]
    # @!attribute reference
    #   <p>The store's genome reference. Required for all stores except TSV format with generic annotations.</p>
    #   @return [Types::ReferenceItem]
    # @!attribute store_format
    #   <p>The annotation file format of the store.</p>
    #   @return [String]
    # @!attribute store_options
    #   <p>The store's file parsing options.</p>
    #   @return [Types::StoreOptions]
    # @!attribute status
    #   <p>The store's status.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The store's name.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p> The name given to an annotation store version to distinguish it from other versions. </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the store was created.</p>
    #   @return [Time]
    class CreateAnnotationStoreResponse < Struct.new(
      nil,
      :id,
      :reference,
      :store_format,
      :store_options,
      :status,
      :name,
      :version_name,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of an annotation store version from which versions are being created. </p>
    #   @return [String]
    # @!attribute version_name
    #   <p> The name given to an annotation store version to distinguish it from other versions. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of an annotation store version. </p>
    #   @return [String]
    # @!attribute version_options
    #   <p> The options for an annotation store version. </p>
    #   @return [Types::VersionOptions]
    # @!attribute tags
    #   <p> Any tags added to annotation store version. </p>
    #   @return [Hash<String, String>]
    class CreateAnnotationStoreVersionRequest < Struct.new(
      nil,
      :name,
      :version_name,
      :description,
      :version_options,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> A generated ID for the annotation store </p>
    #   @return [String]
    # @!attribute version_name
    #   <p> The name given to an annotation store version to distinguish it from other versions. </p>
    #   @return [String]
    # @!attribute store_id
    #   <p> The ID for the annotation store from which new versions are being created. </p>
    #   @return [String]
    # @!attribute version_options
    #   <p> The options for an annotation store version. </p>
    #   @return [Types::VersionOptions]
    # @!attribute name
    #   <p> The name given to an annotation store version to distinguish it from other versions. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of a annotation store version. </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p> The time stamp for the creation of an annotation store version. </p>
    #   @return [Time]
    class CreateAnnotationStoreVersionResponse < Struct.new(
      nil,
      :id,
      :version_name,
      :store_id,
      :version_options,
      :name,
      :status,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sequence_store_id
    #   <p>The sequence store ID for the store that is the destination of the multipart uploads.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>An idempotency token that can be used to avoid triggering multiple multipart uploads.</p>
    #   @return [String]
    # @!attribute source_file_type
    #   <p>The type of file being uploaded.</p>
    #   @return [String]
    # @!attribute subject_id
    #   <p>The source's subject ID.</p>
    #   @return [String]
    # @!attribute sample_id
    #   <p>The source's sample ID.</p>
    #   @return [String]
    # @!attribute generated_from
    #   <p>Where the source originated.</p>
    #   @return [String]
    # @!attribute reference_arn
    #   <p>The ARN of the reference.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the read set.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the read set.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Any tags to add to the read set.</p>
    #   @return [Hash<String, String>]
    class CreateMultipartReadSetUploadRequest < Struct.new(
      nil,
      :sequence_store_id,
      :client_token,
      :source_file_type,
      :subject_id,
      :sample_id,
      :generated_from,
      :reference_arn,
      :name,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sequence_store_id
    #   <p>The sequence store ID for the store that the read set will be created in.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>The ID for the initiated multipart upload.</p>
    #   @return [String]
    # @!attribute source_file_type
    #   <p>The file type of the read set source.</p>
    #   @return [String]
    # @!attribute subject_id
    #   <p>The source's subject ID.</p>
    #   @return [String]
    # @!attribute sample_id
    #   <p>The source's sample ID.</p>
    #   @return [String]
    # @!attribute generated_from
    #   <p>The source of the read set.</p>
    #   @return [String]
    # @!attribute reference_arn
    #   <p>The read set source's reference ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the read set.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the read set.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the read set.</p>
    #   @return [Hash<String, String>]
    # @!attribute creation_time
    #   <p>The creation time of the multipart upload.</p>
    #   @return [Time]
    class CreateMultipartReadSetUploadResponse < Struct.new(
      nil,
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
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the store.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the store.</p>
    #   @return [String]
    # @!attribute sse_config
    #   <p>Server-side encryption (SSE) settings for the store.</p>
    #   @return [Types::SseConfig]
    # @!attribute tags
    #   <p>Tags for the store.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>To ensure that requests don't run multiple times, specify a unique token for each request.</p>
    #   @return [String]
    class CreateReferenceStoreRequest < Struct.new(
      nil,
      :name,
      :description,
      :sse_config,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The store's ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The store's ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The store's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The store's description.</p>
    #   @return [String]
    # @!attribute sse_config
    #   <p>The store's SSE settings.</p>
    #   @return [Types::SseConfig]
    # @!attribute creation_time
    #   <p>When the store was created.</p>
    #   @return [Time]
    class CreateReferenceStoreResponse < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :description,
      :sse_config,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_behavior
    #   <p>Default cache behavior for runs that use this cache. Supported values are:</p> <p> <code>CACHE_ON_FAILURE</code>: Caches task outputs from completed tasks for runs that fail. This setting is useful if you're debugging a workflow that fails after several tasks completed successfully. The subsequent run uses the cache outputs for previously-completed tasks if the task definition, inputs, and container in ECR are identical to the prior run.</p> <p> <code>CACHE_ALWAYS</code>: Caches task outputs from completed tasks for all runs. This setting is useful in development mode, but do not use it in a production setting.</p> <p>If you don't specify a value, the default behavior is CACHE_ON_FAILURE. When you start a run that uses this cache, you can override the default cache behavior.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/how-run-cache.html#run-cache-behavior">Run cache behavior</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    #   @return [String]
    # @!attribute cache_s3_location
    #   <p>Specify the S3 location for storing the cached task outputs. This data must be immediately accessible (not in an archived state).</p>
    #   @return [String]
    # @!attribute description
    #   <p>Enter a description of the run cache.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Enter a user-friendly name for the run cache.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>A unique request token, to ensure idempotency. If you don't specify a token, Amazon Web Services HealthOmics automatically generates a universally unique identifier (UUID) for the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Specify one or more tags to associate with this run cache.</p>
    #   @return [Hash<String, String>]
    # @!attribute cache_bucket_owner_id
    #   <p>The Amazon Web Services account ID of the expected owner of the S3 bucket for the run cache. If not provided, your account ID is set as the owner of the bucket.</p>
    #   @return [String]
    class CreateRunCacheRequest < Struct.new(
      nil,
      :cache_behavior,
      :cache_s3_location,
      :description,
      :name,
      :request_id,
      :tags,
      :cache_bucket_owner_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>Unique resource identifier for the run cache.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Identifier for the run cache.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Run cache status.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with this run cache.</p>
    #   @return [Hash<String, String>]
    class CreateRunCacheResponse < Struct.new(
      nil,
      :arn,
      :id,
      :status,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the group.</p>
    #   @return [String]
    # @!attribute max_cpus
    #   <p>The maximum number of CPUs that can run concurrently across all active runs in the run group.</p>
    #   @return [Integer]
    # @!attribute max_runs
    #   <p>The maximum number of runs that can be running at the same time.</p>
    #   @return [Integer]
    # @!attribute max_duration
    #   <p>The maximum time for each run (in minutes). If a run exceeds the maximum run time, the run fails automatically.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>Tags for the group.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_id
    #   <p>To ensure that requests don't run multiple times, specify a unique ID for each request.</p>
    #   @return [String]
    # @!attribute max_gpus
    #   <p>The maximum number of GPUs that can run concurrently across all active runs in the run group.</p>
    #   @return [Integer]
    class CreateRunGroupRequest < Struct.new(
      nil,
      :name,
      :max_cpus,
      :max_runs,
      :max_duration,
      :tags,
      :request_id,
      :max_gpus,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The group's ARN.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The group's ID.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags for the run group.</p>
    #   @return [Hash<String, String>]
    class CreateRunGroupResponse < Struct.new(
      nil,
      :arn,
      :id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the store.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the store.</p>
    #   @return [String]
    # @!attribute sse_config
    #   <p>Server-side encryption (SSE) settings for the store.</p>
    #   @return [Types::SseConfig]
    # @!attribute tags
    #   <p>Tags for the store. You can configure up to 50 tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>An idempotency token used to dedupe retry requests so that duplicate runs are not created.</p>
    #   @return [String]
    # @!attribute fallback_location
    #   <p>An S3 location that is used to store files that have failed a direct upload. You can add or change the <code>fallbackLocation</code> after creating a sequence store. This is not required if you are uploading files from a different S3 bucket.</p>
    #   @return [String]
    # @!attribute e_tag_algorithm_family
    #   <p>The ETag algorithm family to use for ingested read sets. The default value is MD5up. For more information on ETags, see <a href="https://docs.aws.amazon.com/omics/latest/dev/etags-and-provenance.html">ETags and data provenance</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    #   @return [String]
    # @!attribute propagated_set_level_tags
    #   <p>The tags keys to propagate to the S3 objects associated with read sets in the sequence store. These tags can be used as input to add metadata to your read sets.</p>
    #   @return [Array<String>]
    # @!attribute s3_access_config
    #   <p>S3 access configuration parameters. This specifies the parameters needed to access logs stored in S3 buckets. The S3 bucket must be in the same region and account as the sequence store. </p>
    #   @return [Types::S3AccessConfig]
    class CreateSequenceStoreRequest < Struct.new(
      nil,
      :name,
      :description,
      :sse_config,
      :tags,
      :client_token,
      :fallback_location,
      :e_tag_algorithm_family,
      :propagated_set_level_tags,
      :s3_access_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The store's ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The store's ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The store's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The store's description.</p>
    #   @return [String]
    # @!attribute sse_config
    #   <p>Server-side encryption (SSE) settings for the store. This contains the KMS key ARN that is used to encrypt read set objects.</p>
    #   @return [Types::SseConfig]
    # @!attribute creation_time
    #   <p>When the store was created.</p>
    #   @return [Time]
    # @!attribute fallback_location
    #   <p>An S3 location that is used to store files that have failed a direct upload.</p>
    #   @return [String]
    # @!attribute e_tag_algorithm_family
    #   <p>The algorithm family of the ETag.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the sequence store.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message of the sequence store.</p>
    #   @return [String]
    # @!attribute propagated_set_level_tags
    #   <p>The tags keys to propagate to the S3 objects associated with read sets in the sequence store.</p>
    #   @return [Array<String>]
    # @!attribute s3_access
    #   <p>The S3 access metadata of the sequence store.</p>
    #   @return [Types::SequenceStoreS3Access]
    class CreateSequenceStoreResponse < Struct.new(
      nil,
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
      :s3_access,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to be shared.</p>
    #   @return [String]
    # @!attribute principal_subscriber
    #   <p>The principal subscriber is the account being offered shared access to the resource. </p>
    #   @return [String]
    # @!attribute share_name
    #   <p>A name that the owner defines for the share.</p>
    #   @return [String]
    class CreateShareRequest < Struct.new(
      nil,
      :resource_arn,
      :principal_subscriber,
      :share_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute share_id
    #   <p>The ID that HealthOmics generates for the share.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the share.</p>
    #   @return [String]
    # @!attribute share_name
    #   <p>The name of the share.</p>
    #   @return [String]
    class CreateShareResponse < Struct.new(
      nil,
      :share_id,
      :status,
      :share_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reference
    #   <p>The genome reference for the store's variants.</p>
    #   @return [Types::ReferenceItem]
    # @!attribute name
    #   <p>A name for the store.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the store.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags for the store.</p>
    #   @return [Hash<String, String>]
    # @!attribute sse_config
    #   <p>Server-side encryption (SSE) settings for the store.</p>
    #   @return [Types::SseConfig]
    class CreateVariantStoreRequest < Struct.new(
      nil,
      :reference,
      :name,
      :description,
      :tags,
      :sse_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The store's ID.</p>
    #   @return [String]
    # @!attribute reference
    #   <p>The store's genome reference.</p>
    #   @return [Types::ReferenceItem]
    # @!attribute status
    #   <p>The store's status.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The store's name.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the store was created.</p>
    #   @return [Time]
    class CreateVariantStoreResponse < Struct.new(
      nil,
      :id,
      :reference,
      :status,
      :name,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Name (optional but highly recommended) for the workflow to locate relevant information in the CloudWatch logs and Amazon Web Services HealthOmics console. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the workflow.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The workflow engine for the workflow. This is only required if you have workflow definition files from more than one engine in your zip file. Otherwise, the service can detect the engine automatically from your workflow definition.</p>
    #   @return [String]
    # @!attribute definition_zip
    #   <p>A ZIP archive containing the main workflow definition file and dependencies that it imports for the workflow. You can use a file with a ://fileb prefix instead of the Base64 string. For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflow-defn-requirements.html">Workflow definition requirements</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    #   @return [String]
    # @!attribute definition_uri
    #   <p>The S3 URI of a definition for the workflow. The S3 bucket must be in the same region as the workflow.</p>
    #   @return [String]
    # @!attribute main
    #   <p>The path of the main definition file for the workflow. This parameter is not required if the ZIP archive contains only one workflow definition file, or if the main definition file is named “main”. An example path is: <code>workflow-definition/main-file.wdl</code>. </p>
    #   @return [String]
    # @!attribute parameter_template
    #   <p>A parameter template for the workflow. If this field is blank, Amazon Web Services HealthOmics will automatically parse the parameter template values from your workflow definition file. To override these service generated default values, provide a parameter template. To view an example of a parameter template, see <a href="https://docs.aws.amazon.com/omics/latest/dev/parameter-templates.html">Parameter template files</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    #   @return [Hash<String, Types::WorkflowParameter>]
    # @!attribute storage_capacity
    #   <p>The default static storage capacity (in gibibytes) for runs that use this workflow or workflow version. The <code>storageCapacity</code> can be overwritten at run time. The storage capacity is not required for runs with a <code>DYNAMIC</code> storage type.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>Tags for the workflow. You can define up to 50 tags for the workflow. For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/add-a-tag.html">Adding a tag</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_id
    #   <p>An idempotency token to ensure that duplicate workflows are not created when Amazon Web Services HealthOmics submits retry requests.</p>
    #   @return [String]
    # @!attribute accelerators
    #   <p>The computational accelerator specified to run the workflow.</p>
    #   @return [String]
    # @!attribute storage_type
    #   <p>The default storage type for runs that use this workflow. The <code>storageType</code> can be overridden at run time. <code>DYNAMIC</code> storage dynamically scales the storage up or down, based on file system utilization. <code>STATIC</code> storage allocates a fixed amount of storage. For more information about dynamic and static storage types, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflows-run-types.html">Run storage types</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    #   @return [String]
    # @!attribute container_registry_map
    #   <p>(Optional) Use a container registry map to specify mappings between the ECR private repository and one or more upstream registries. For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflows-ecr.html">Container images</a> in the <i>Amazon Web Services HealthOmics User Guide</i>. </p>
    #   @return [Types::ContainerRegistryMap]
    # @!attribute container_registry_map_uri
    #   <p>(Optional) URI of the S3 location for the registry mapping file.</p>
    #   @return [String]
    # @!attribute readme_markdown
    #   <p>The markdown content for the workflow's README file. This provides documentation and usage information for users of the workflow.</p>
    #   @return [String]
    # @!attribute parameter_template_path
    #   <p>The path to the workflow parameter template JSON file within the repository. This file defines the input parameters for runs that use this workflow. If not specified, the workflow will be created without a parameter template.</p>
    #   @return [String]
    # @!attribute readme_path
    #   <p>The path to the workflow README markdown file within the repository. This file provides documentation and usage information for the workflow. If not specified, the <code>README.md</code> file from the root directory of the repository will be used.</p>
    #   @return [String]
    # @!attribute definition_repository
    #   <p>The repository information for the workflow definition. This allows you to source your workflow definition directly from a code repository.</p>
    #   @return [Types::DefinitionRepository]
    # @!attribute workflow_bucket_owner_id
    #   <p>The Amazon Web Services account ID of the expected owner of the S3 bucket that contains the workflow definition. If not specified, the service skips the validation.</p>
    #   @return [String]
    # @!attribute readme_uri
    #   <p>The S3 URI of the README file for the workflow. This file provides documentation and usage information for the workflow. Requirements include:</p> <ul> <li> <p>The S3 URI must begin with <code>s3://USER-OWNED-BUCKET/</code> </p> </li> <li> <p>The requester must have access to the S3 bucket and object.</p> </li> <li> <p>The max README content length is 500 KiB.</p> </li> </ul>
    #   @return [String]
    class CreateWorkflowRequest < Struct.new(
      nil,
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
      :readme_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The workflow's ARN.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The workflow's ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The workflow's status.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The workflow's tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute uuid
    #   <p>The universally unique identifier (UUID) value for this workflow.</p>
    #   @return [String]
    class CreateWorkflowResponse < Struct.new(
      nil,
      :arn,
      :id,
      :status,
      :tags,
      :uuid,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_id
    #   <p>The ID of the workflow where you are creating the new version. The <code>workflowId</code> is not the UUID.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>A name for the workflow version. Provide a version name that is unique for this workflow. You cannot change the name after HealthOmics creates the version. </p> <p>The version name must start with a letter or number and it can include upper-case and lower-case letters, numbers, hyphens, periods and underscores. The maximum length is 64 characters. You can use a simple naming scheme, such as version1, version2, version3. You can also match your workflow versions with your own internal versioning conventions, such as 2.7.0, 2.7.1, 2.7.2.</p>
    #   @return [String]
    # @!attribute definition_zip
    #   <p>A ZIP archive containing the main workflow definition file and dependencies that it imports for this workflow version. You can use a file with a ://fileb prefix instead of the Base64 string. For more information, see Workflow definition requirements in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    #   @return [String]
    # @!attribute definition_uri
    #   <p>The S3 URI of a definition for this workflow version. The S3 bucket must be in the same region as this workflow version.</p>
    #   @return [String]
    # @!attribute accelerators
    #   <p>The computational accelerator for this workflow version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for this workflow version.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The workflow engine for this workflow version. This is only required if you have workflow definition files from more than one engine in your zip file. Otherwise, the service can detect the engine automatically from your workflow definition.</p>
    #   @return [String]
    # @!attribute main
    #   <p>The path of the main definition file for this workflow version. This parameter is not required if the ZIP archive contains only one workflow definition file, or if the main definition file is named “main”. An example path is: <code>workflow-definition/main-file.wdl</code>. </p>
    #   @return [String]
    # @!attribute parameter_template
    #   <p>A parameter template for this workflow version. If this field is blank, Amazon Web Services HealthOmics will automatically parse the parameter template values from your workflow definition file. To override these service generated default values, provide a parameter template. To view an example of a parameter template, see <a href="https://docs.aws.amazon.com/omics/latest/dev/parameter-templates.html">Parameter template files</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    #   @return [Hash<String, Types::WorkflowParameter>]
    # @!attribute request_id
    #   <p>An idempotency token to ensure that duplicate workflows are not created when Amazon Web Services HealthOmics submits retry requests.</p>
    #   @return [String]
    # @!attribute storage_type
    #   <p>The default storage type for runs that use this workflow version. The <code>storageType</code> can be overridden at run time. <code>DYNAMIC</code> storage dynamically scales the storage up or down, based on file system utilization. STATIC storage allocates a fixed amount of storage. For more information about dynamic and static storage types, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflows-run-types.html">Run storage types</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    #   @return [String]
    # @!attribute storage_capacity
    #   <p>The default static storage capacity (in gibibytes) for runs that use this workflow version. The <code>storageCapacity</code> can be overwritten at run time. The storage capacity is not required for runs with a <code>DYNAMIC</code> storage type.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>Tags for this workflow version. You can define up to 50 tags for the workflow. For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/add-a-tag.html">Adding a tag</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute workflow_bucket_owner_id
    #   <p>Amazon Web Services Id of the owner of the S3 bucket that contains the workflow definition. You need to specify this parameter if your account is not the bucket owner.</p>
    #   @return [String]
    # @!attribute container_registry_map
    #   <p>(Optional) Use a container registry map to specify mappings between the ECR private repository and one or more upstream registries. For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflows-ecr.html">Container images</a> in the <i>Amazon Web Services HealthOmics User Guide</i>. </p>
    #   @return [Types::ContainerRegistryMap]
    # @!attribute container_registry_map_uri
    #   <p>(Optional) URI of the S3 location for the registry mapping file.</p>
    #   @return [String]
    # @!attribute readme_markdown
    #   <p>The markdown content for the workflow version's README file. This provides documentation and usage information for users of this specific workflow version.</p>
    #   @return [String]
    # @!attribute parameter_template_path
    #   <p>The path to the workflow version parameter template JSON file within the repository. This file defines the input parameters for runs that use this workflow version. If not specified, the workflow version will be created without a parameter template.</p>
    #   @return [String]
    # @!attribute readme_path
    #   <p>The path to the workflow version README markdown file within the repository. This file provides documentation and usage information for the workflow. If not specified, the <code>README.md</code> file from the root directory of the repository will be used.</p>
    #   @return [String]
    # @!attribute definition_repository
    #   <p>The repository information for the workflow version definition. This allows you to source your workflow version definition directly from a code repository.</p>
    #   @return [Types::DefinitionRepository]
    # @!attribute readme_uri
    #   <p>The S3 URI of the README file for the workflow version. This file provides documentation and usage information for the workflow version. Requirements include:</p> <ul> <li> <p>The S3 URI must begin with <code>s3://USER-OWNED-BUCKET/</code> </p> </li> <li> <p>The requester must have access to the S3 bucket and object.</p> </li> <li> <p>The max README content length is 500 KiB.</p> </li> </ul>
    #   @return [String]
    class CreateWorkflowVersionRequest < Struct.new(
      nil,
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
      :readme_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the workflow version.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The workflow's ID.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>The workflow version name.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The workflow version status.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The workflow version's tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute uuid
    #   <p>The universally unique identifier (UUID) value for this workflow version.</p>
    #   @return [String]
    class CreateWorkflowVersionResponse < Struct.new(
      nil,
      :arn,
      :workflow_id,
      :version_name,
      :status,
      :tags,
      :uuid,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a source code repository that hosts the workflow definition files.</p>
    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of the connection to the source code repository.</p>
    #   @return [String]
    # @!attribute full_repository_id
    #   <p>The full repository identifier, including the repository owner and name. For example, 'repository-owner/repository-name'.</p>
    #   @return [String]
    # @!attribute source_reference
    #   <p>The source reference for the repository, such as a branch name, tag, or commit ID.</p>
    #   @return [Types::SourceReference]
    # @!attribute exclude_file_patterns
    #   <p>A list of file patterns to exclude when retrieving the workflow definition from the repository.</p>
    #   @return [Array<String>]
    class DefinitionRepository < Struct.new(
      nil,
      :connection_arn,
      :full_repository_id,
      :source_reference,
      :exclude_file_patterns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about the source code repository that hosts the workflow definition files.</p>
    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of the connection to the source code repository.</p>
    #   @return [String]
    # @!attribute full_repository_id
    #   <p>The full repository identifier, including the repository owner and name. For example, 'repository-owner/repository-name'.</p>
    #   @return [String]
    # @!attribute source_reference
    #   <p>The source reference for the repository, such as a branch name, tag, or commit ID.</p>
    #   @return [Types::SourceReference]
    # @!attribute provider_type
    #   <p>The provider type of the source code repository, such as Bitbucket, GitHub, GitHubEnterpriseServer, GitLab, and GitLabSelfManaged.</p>
    #   @return [String]
    # @!attribute provider_endpoint
    #   <p>The endpoint URL of the source code repository provider.</p>
    #   @return [String]
    class DefinitionRepositoryDetails < Struct.new(
      nil,
      :connection_arn,
      :full_repository_id,
      :source_reference,
      :provider_type,
      :provider_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The store's name.</p>
    #   @return [String]
    # @!attribute force
    #   <p>Whether to force deletion.</p>
    #   @return [Boolean]
    class DeleteAnnotationStoreRequest < Struct.new(
      nil,
      :name,
      :force,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The store's status.</p>
    #   @return [String]
    class DeleteAnnotationStoreResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the annotation store from which versions are being deleted. </p>
    #   @return [String]
    # @!attribute versions
    #   <p> The versions of an annotation store to be deleted. </p>
    #   @return [Array<String>]
    # @!attribute force
    #   <p> Forces the deletion of an annotation store version when imports are in-progress.. </p>
    #   @return [Boolean]
    class DeleteAnnotationStoreVersionsRequest < Struct.new(
      nil,
      :name,
      :versions,
      :force,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p> Any errors that occur when attempting to delete an annotation store version. </p>
    #   @return [Array<Types::VersionDeleteError>]
    class DeleteAnnotationStoreVersionsResponse < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The reference's ID.</p>
    #   @return [String]
    # @!attribute reference_store_id
    #   <p>The reference's store ID.</p>
    #   @return [String]
    class DeleteReferenceRequest < Struct.new(
      nil,
      :id,
      :reference_store_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteReferenceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The store's ID.</p>
    #   @return [String]
    class DeleteReferenceStoreRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteReferenceStoreResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Run cache identifier for the cache you want to delete.</p>
    #   @return [String]
    class DeleteRunCacheRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The run group's ID.</p>
    #   @return [String]
    class DeleteRunGroupRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The run's ID.</p>
    #   @return [String]
    class DeleteRunRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute s3_access_point_arn
    #   <p>The S3 access point ARN that has the access policy.</p>
    #   @return [String]
    class DeleteS3AccessPolicyRequest < Struct.new(
      nil,
      :s3_access_point_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteS3AccessPolicyResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The sequence store's ID.</p>
    #   @return [String]
    class DeleteSequenceStoreRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteSequenceStoreResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute share_id
    #   <p>The ID for the resource share to be deleted.</p>
    #   @return [String]
    class DeleteShareRequest < Struct.new(
      nil,
      :share_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the share being deleted.</p>
    #   @return [String]
    class DeleteShareResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The store's name.</p>
    #   @return [String]
    # @!attribute force
    #   <p>Whether to force deletion.</p>
    #   @return [Boolean]
    class DeleteVariantStoreRequest < Struct.new(
      nil,
      :name,
      :force,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The store's status.</p>
    #   @return [String]
    class DeleteVariantStoreResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The workflow's ID.</p>
    #   @return [String]
    class DeleteWorkflowRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_id
    #   <p>The workflow's ID.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>The workflow version name.</p>
    #   @return [String]
    class DeleteWorkflowVersionRequest < Struct.new(
      nil,
      :workflow_id,
      :version_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The entity tag (ETag) is a hash of the object representing its semantic content.</p>
    # @!attribute algorithm
    #   <p>The algorithm used to calculate the read set’s ETag(s).</p>
    #   @return [String]
    # @!attribute source1
    #   <p>The ETag hash calculated on Source1 of the read set.</p>
    #   @return [String]
    # @!attribute source2
    #   <p>The ETag hash calculated on Source2 of the read set.</p>
    #   @return [String]
    class ETag < Struct.new(
      nil,
      :algorithm,
      :source1,
      :source2,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A read set.</p>
    # @!attribute read_set_id
    #   <p>The set's ID.</p>
    #   @return [String]
    class ExportReadSet < Struct.new(
      nil,
      :read_set_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a read set.</p>
    # @!attribute id
    #   <p>The set's ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The set's status.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The set's status message.</p>
    #   @return [String]
    class ExportReadSetDetail < Struct.new(
      nil,
      :id,
      :status,
      :status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An read set export job filter.</p>
    # @!attribute status
    #   <p>A status to filter on.</p>
    #   @return [String]
    # @!attribute created_after
    #   <p>The filter's start date.</p>
    #   @return [Time]
    # @!attribute created_before
    #   <p>The filter's end date.</p>
    #   @return [Time]
    class ExportReadSetFilter < Struct.new(
      nil,
      :status,
      :created_after,
      :created_before,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a read set export job.</p>
    # @!attribute id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute sequence_store_id
    #   <p>The job's sequence store ID.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The job's destination in Amazon S3.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p>When the job completed.</p>
    #   @return [Time]
    class ExportReadSetJobDetail < Struct.new(
      nil,
      :id,
      :sequence_store_id,
      :destination,
      :status,
      :creation_time,
      :completion_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a file.</p>
    # @!attribute total_parts
    #   <p>The file's total parts.</p>
    #   @return [Integer]
    # @!attribute part_size
    #   <p>The file's part size.</p>
    #   @return [Integer]
    # @!attribute content_length
    #   <p>The file's content length.</p>
    #   @return [Integer]
    # @!attribute s3_access
    #   <p>The S3 URI metadata of a sequence store.</p>
    #   @return [Types::ReadSetS3Access]
    class FileInformation < Struct.new(
      nil,
      :total_parts,
      :part_size,
      :content_length,
      :s3_access,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Use filters to return a subset of resources. You can define filters for specific parameters, such as the resource status.</p>
    # @!attribute resource_arns
    #   <p>Filter based on the Amazon Resource Number (ARN) of the resource. You can specify up to 10 values.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>Filter based on the resource status. You can specify up to 10 values.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>The type of resources to be filtered. You can specify one or more of the resource types.</p>
    #   @return [Array<String>]
    class Filter < Struct.new(
      nil,
      :resource_arns,
      :status,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Formatting options for a file.</p>
    # @!attribute tsv_options
    #   <p>Options for a TSV file.</p>
    #   @return [Types::TsvOptions]
    # @!attribute vcf_options
    #   <p>Options for a VCF file.</p>
    #   @return [Types::VcfOptions]
    class FormatOptions < Struct.new(
      :tsv_options,
      :vcf_options,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TsvOptions < FormatOptions; end
      class VcfOptions < FormatOptions; end
      class Unknown < FormatOptions; end
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #   @return [String]
    class GetAnnotationImportRequest < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute destination_name
    #   <p>The job's destination annotation store.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p> The name of the annotation store version. </p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The job's service role ARN.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The job's status message.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>When the job was updated.</p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p>When the job completed.</p>
    #   @return [Time]
    # @!attribute items
    #   <p>The job's imported items.</p>
    #   @return [Array<Types::AnnotationImportItemDetail>]
    # @!attribute run_left_normalization
    #   <p>The job's left normalization setting.</p>
    #   @return [Boolean]
    # @!attribute format_options
    #   <p>Formatting options for a file.</p>
    #   @return [Types::FormatOptions]
    # @!attribute annotation_fields
    #   <p>The annotation schema generated by the parsed annotation data.</p>
    #   @return [Hash<String, String>]
    class GetAnnotationImportResponse < Struct.new(
      nil,
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
      :annotation_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:run_left_normalization] = false unless options.key?(:run_left_normalization)
        super
      end
    end

    # @!attribute name
    #   <p>The store's name.</p>
    #   @return [String]
    class GetAnnotationStoreRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The store's ID.</p>
    #   @return [String]
    # @!attribute reference
    #   <p>The store's genome reference.</p>
    #   @return [Types::ReferenceItem]
    # @!attribute status
    #   <p>The store's status.</p>
    #   @return [String]
    # @!attribute store_arn
    #   <p>The store's ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The store's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The store's description.</p>
    #   @return [String]
    # @!attribute sse_config
    #   <p>The store's server-side encryption (SSE) settings.</p>
    #   @return [Types::SseConfig]
    # @!attribute creation_time
    #   <p>When the store was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>When the store was updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The store's tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute store_options
    #   <p>The store's parsing options.</p>
    #   @return [Types::StoreOptions]
    # @!attribute store_format
    #   <p>The store's annotation file format.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A status message.</p>
    #   @return [String]
    # @!attribute store_size_bytes
    #   <p>The store's size in bytes.</p>
    #   @return [Integer]
    # @!attribute num_versions
    #   <p> An integer indicating how many versions of an annotation store exist. </p>
    #   @return [Integer]
    class GetAnnotationStoreResponse < Struct.new(
      nil,
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
      :num_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name given to an annotation store version to distinguish it from others. </p>
    #   @return [String]
    # @!attribute version_name
    #   <p> The name given to an annotation store version to distinguish it from others. </p>
    #   @return [String]
    class GetAnnotationStoreVersionRequest < Struct.new(
      nil,
      :name,
      :version_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute store_id
    #   <p> The store ID for annotation store version. </p>
    #   @return [String]
    # @!attribute id
    #   <p> The annotation store version ID. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of an annotation store version. </p>
    #   @return [String]
    # @!attribute version_arn
    #   <p> The Arn for the annotation store. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the annotation store. </p>
    #   @return [String]
    # @!attribute version_name
    #   <p> The name given to an annotation store version to distinguish it from others. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description for an annotation store version. </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p> The time stamp for when an annotation store version was created. </p>
    #   @return [Time]
    # @!attribute update_time
    #   <p> The time stamp for when an annotation store version was updated. </p>
    #   @return [Time]
    # @!attribute tags
    #   <p> Any tags associated with an annotation store version. </p>
    #   @return [Hash<String, String>]
    # @!attribute version_options
    #   <p> The options for an annotation store version. </p>
    #   @return [Types::VersionOptions]
    # @!attribute status_message
    #   <p> The status of an annotation store version. </p>
    #   @return [String]
    # @!attribute version_size_bytes
    #   <p> The size of the annotation store version in Bytes. </p>
    #   @return [Integer]
    class GetAnnotationStoreVersionResponse < Struct.new(
      nil,
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
      :version_size_bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute sequence_store_id
    #   <p>The job's sequence store ID.</p>
    #   @return [String]
    class GetReadSetActivationJobRequest < Struct.new(
      nil,
      :id,
      :sequence_store_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute sequence_store_id
    #   <p>The job's sequence store ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The job's status message.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p>When the job completed.</p>
    #   @return [Time]
    # @!attribute sources
    #   <p>The job's source files.</p>
    #   @return [Array<Types::ActivateReadSetSourceItem>]
    class GetReadSetActivationJobResponse < Struct.new(
      nil,
      :id,
      :sequence_store_id,
      :status,
      :status_message,
      :creation_time,
      :completion_time,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sequence_store_id
    #   <p>The job's sequence store ID.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The job's ID.</p>
    #   @return [String]
    class GetReadSetExportJobRequest < Struct.new(
      nil,
      :sequence_store_id,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute sequence_store_id
    #   <p>The job's sequence store ID.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The job's destination in Amazon S3.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The job's status message.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p>When the job completed.</p>
    #   @return [Time]
    # @!attribute read_sets
    #   <p>The job's read sets.</p>
    #   @return [Array<Types::ExportReadSetDetail>]
    class GetReadSetExportJobResponse < Struct.new(
      nil,
      :id,
      :sequence_store_id,
      :destination,
      :status,
      :status_message,
      :creation_time,
      :completion_time,
      :read_sets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute sequence_store_id
    #   <p>The job's sequence store ID.</p>
    #   @return [String]
    class GetReadSetImportJobRequest < Struct.new(
      nil,
      :id,
      :sequence_store_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute sequence_store_id
    #   <p>The job's sequence store ID.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The job's service role ARN.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The job's status message.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p>When the job completed.</p>
    #   @return [Time]
    # @!attribute sources
    #   <p>The job's source files.</p>
    #   @return [Array<Types::ImportReadSetSourceItem>]
    class GetReadSetImportJobResponse < Struct.new(
      nil,
      :id,
      :sequence_store_id,
      :role_arn,
      :status,
      :status_message,
      :creation_time,
      :completion_time,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The read set's ID.</p>
    #   @return [String]
    # @!attribute sequence_store_id
    #   <p>The read set's sequence store ID.</p>
    #   @return [String]
    class GetReadSetMetadataRequest < Struct.new(
      nil,
      :id,
      :sequence_store_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The read set's ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The read set's ARN.</p>
    #   @return [String]
    # @!attribute sequence_store_id
    #   <p>The read set's sequence store ID.</p>
    #   @return [String]
    # @!attribute subject_id
    #   <p>The read set's subject ID.</p>
    #   @return [String]
    # @!attribute sample_id
    #   <p>The read set's sample ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The read set's status.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The read set's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The read set's description.</p>
    #   @return [String]
    # @!attribute file_type
    #   <p>The read set's file type.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the read set was created.</p>
    #   @return [Time]
    # @!attribute sequence_information
    #   <p>The read set's sequence information.</p>
    #   @return [Types::SequenceInformation]
    # @!attribute reference_arn
    #   <p>The read set's genome reference ARN.</p>
    #   @return [String]
    # @!attribute files
    #   <p>The read set's files.</p>
    #   @return [Types::ReadSetFiles]
    # @!attribute status_message
    #   <p>The status message for a read set. It provides more detail as to why the read set has a status. </p>
    #   @return [String]
    # @!attribute creation_type
    #   <p> The creation type of the read set. </p>
    #   @return [String]
    # @!attribute etag
    #   <p>The entity tag (ETag) is a hash of the object meant to represent its semantic content.</p>
    #   @return [Types::ETag]
    # @!attribute creation_job_id
    #   <p>The read set's creation job ID.</p>
    #   @return [String]
    class GetReadSetMetadataResponse < Struct.new(
      nil,
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
      :creation_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The read set's ID.</p>
    #   @return [String]
    # @!attribute sequence_store_id
    #   <p>The read set's sequence store ID.</p>
    #   @return [String]
    # @!attribute file
    #   <p>The file to retrieve.</p>
    #   @return [String]
    # @!attribute part_number
    #   <p>The part number to retrieve.</p>
    #   @return [Integer]
    class GetReadSetRequest < Struct.new(
      nil,
      :id,
      :sequence_store_id,
      :file,
      :part_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payload
    #   <p>The read set file payload.</p>
    #   @return [String]
    class GetReadSetResponse < Struct.new(
      nil,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:payload] = Base64.strict_decode64('') unless options.key?(:payload)
        super
      end
    end

    # @!attribute id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute reference_store_id
    #   <p>The job's reference store ID.</p>
    #   @return [String]
    class GetReferenceImportJobRequest < Struct.new(
      nil,
      :id,
      :reference_store_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute reference_store_id
    #   <p>The job's reference store ID.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The job's service role ARN.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The job's status message.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p>When the job completed.</p>
    #   @return [Time]
    # @!attribute sources
    #   <p>The job's source files.</p>
    #   @return [Array<Types::ImportReferenceSourceItem>]
    class GetReferenceImportJobResponse < Struct.new(
      nil,
      :id,
      :reference_store_id,
      :role_arn,
      :status,
      :status_message,
      :creation_time,
      :completion_time,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The reference's ID.</p>
    #   @return [String]
    # @!attribute reference_store_id
    #   <p>The reference's reference store ID.</p>
    #   @return [String]
    class GetReferenceMetadataRequest < Struct.new(
      nil,
      :id,
      :reference_store_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The reference's ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The reference's ARN.</p>
    #   @return [String]
    # @!attribute reference_store_id
    #   <p>The reference's reference store ID.</p>
    #   @return [String]
    # @!attribute md5
    #   <p>The reference's MD5 checksum.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The reference's status.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The reference's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The reference's description.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the reference was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>When the reference was updated.</p>
    #   @return [Time]
    # @!attribute files
    #   <p>The reference's files.</p>
    #   @return [Types::ReferenceFiles]
    # @!attribute creation_type
    #   <p>The reference's creation type.</p>
    #   @return [String]
    # @!attribute creation_job_id
    #   <p>The reference's creation job ID.</p>
    #   @return [String]
    class GetReferenceMetadataResponse < Struct.new(
      nil,
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
      :creation_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The reference's ID.</p>
    #   @return [String]
    # @!attribute reference_store_id
    #   <p>The reference's store ID.</p>
    #   @return [String]
    # @!attribute range
    #   <p>The range to retrieve.</p>
    #   @return [String]
    # @!attribute part_number
    #   <p>The part number to retrieve.</p>
    #   @return [Integer]
    # @!attribute file
    #   <p>The file to retrieve.</p>
    #   @return [String]
    class GetReferenceRequest < Struct.new(
      nil,
      :id,
      :reference_store_id,
      :range,
      :part_number,
      :file,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payload
    #   <p>The reference file payload.</p>
    #   @return [String]
    class GetReferenceResponse < Struct.new(
      nil,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:payload] = Base64.strict_decode64('') unless options.key?(:payload)
        super
      end
    end

    # @!attribute id
    #   <p>The store's ID.</p>
    #   @return [String]
    class GetReferenceStoreRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The store's ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The store's ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The store's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The store's description.</p>
    #   @return [String]
    # @!attribute sse_config
    #   <p>The store's server-side encryption (SSE) settings.</p>
    #   @return [Types::SseConfig]
    # @!attribute creation_time
    #   <p>When the store was created.</p>
    #   @return [Time]
    class GetReferenceStoreResponse < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :description,
      :sse_config,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the run cache to retrieve.</p>
    #   @return [String]
    class GetRunCacheRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>Unique resource identifier for the run cache.</p>
    #   @return [String]
    # @!attribute cache_behavior
    #   <p>The default cache behavior for runs using this cache.</p>
    #   @return [String]
    # @!attribute cache_bucket_owner_id
    #   <p>The identifier of the bucket owner.</p>
    #   @return [String]
    # @!attribute cache_s3_uri
    #   <p>The S3 URI where the cache data is stored.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Creation time of the run cache (an ISO 8601 formatted string).</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The run cache description.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The run cache ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The run cache name.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The run cache status.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the run cache.</p>
    #   @return [Hash<String, String>]
    class GetRunCacheResponse < Struct.new(
      nil,
      :arn,
      :cache_behavior,
      :cache_bucket_owner_id,
      :cache_s3_uri,
      :creation_time,
      :description,
      :id,
      :name,
      :status,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The group's ID.</p>
    #   @return [String]
    class GetRunGroupRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The group's ARN.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The group's ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The group's name.</p>
    #   @return [String]
    # @!attribute max_cpus
    #   <p>The group's maximum number of CPUs to use.</p>
    #   @return [Integer]
    # @!attribute max_runs
    #   <p>The maximum number of concurrent runs for the group.</p>
    #   @return [Integer]
    # @!attribute max_duration
    #   <p>The group's maximum run time in minutes.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>When the group was created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The group's tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute max_gpus
    #   <p>The maximum GPUs that can be used by a run group.</p>
    #   @return [Integer]
    class GetRunGroupResponse < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :max_cpus,
      :max_runs,
      :max_duration,
      :creation_time,
      :tags,
      :max_gpus,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The run's ID.</p>
    #   @return [String]
    # @!attribute export
    #   <p>The run's export format.</p>
    #   @return [Array<String>]
    class GetRunRequest < Struct.new(
      nil,
      :id,
      :export,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The run's ARN.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The run's ID.</p>
    #   @return [String]
    # @!attribute cache_id
    #   <p>The run cache associated with the run.</p>
    #   @return [String]
    # @!attribute cache_behavior
    #   <p>The run cache behavior for the run.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The actual Nextflow engine version that Amazon Web Services HealthOmics used for the run. The other workflow definition languages don't provide a value for this field.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The run's status.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The run's workflow ID.</p>
    #   @return [String]
    # @!attribute workflow_type
    #   <p>The run's workflow type.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The run's ID.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The run's service role ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The run's name.</p>
    #   @return [String]
    # @!attribute run_group_id
    #   <p>The run's group ID.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The run's priority.</p>
    #   @return [Integer]
    # @!attribute definition
    #   <p>The run's definition.</p>
    #   @return [String]
    # @!attribute digest
    #   <p>The run's digest.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The run's parameters.</p>
    #   @return [JSON]
    # @!attribute storage_capacity
    #   <p>The run's storage capacity in gibibytes. For dynamic storage, after the run has completed, this value is the maximum amount of storage used during the run.</p>
    #   @return [Integer]
    # @!attribute output_uri
    #   <p>The run's output URI.</p>
    #   @return [String]
    # @!attribute log_level
    #   <p>The run's log level.</p>
    #   @return [String]
    # @!attribute resource_digests
    #   <p>The run's resource digests.</p>
    #   @return [Hash<String, String>]
    # @!attribute started_by
    #   <p>Who started the run.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the run was created.</p>
    #   @return [Time]
    # @!attribute start_time
    #   <p>When the run started.</p>
    #   @return [Time]
    # @!attribute stop_time
    #   <p>The run's stop time.</p>
    #   @return [Time]
    # @!attribute status_message
    #   <p>The run's status message.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The run's tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute accelerators
    #   <p>The computational accelerator used to run the workflow.</p>
    #   @return [String]
    # @!attribute retention_mode
    #   <p>The run's retention mode.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason a run has failed.</p>
    #   @return [String]
    # @!attribute log_location
    #   <p>The location of the run log.</p>
    #   @return [Types::RunLogLocation]
    # @!attribute uuid
    #   <p>The universally unique identifier for a run.</p>
    #   @return [String]
    # @!attribute run_output_uri
    #   <p>The destination for workflow outputs.</p>
    #   @return [String]
    # @!attribute storage_type
    #   <p>The run's storage type.</p>
    #   @return [String]
    # @!attribute workflow_owner_id
    #   <p>The ID of the workflow owner.</p>
    #   @return [String]
    # @!attribute workflow_version_name
    #   <p>The workflow version name.</p>
    #   @return [String]
    # @!attribute workflow_uuid
    #   <p>The universally unique identifier (UUID) value for the workflow.</p>
    #   @return [String]
    class GetRunResponse < Struct.new(
      nil,
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
      :workflow_uuid,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The workflow run ID.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The task's ID.</p>
    #   @return [String]
    class GetRunTaskRequest < Struct.new(
      nil,
      :id,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The task's ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The task's status.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The task's name.</p>
    #   @return [String]
    # @!attribute cpus
    #   <p>The task's CPU usage.</p>
    #   @return [Integer]
    # @!attribute cache_hit
    #   <p>Set to true if Amazon Web Services HealthOmics found a matching entry in the run cache for this task.</p>
    #   @return [Boolean]
    # @!attribute cache_s3_uri
    #   <p>The S3 URI of the cache location.</p>
    #   @return [String]
    # @!attribute memory
    #   <p>The task's memory use in gigabytes.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>When the task was created.</p>
    #   @return [Time]
    # @!attribute start_time
    #   <p>The task's start time.</p>
    #   @return [Time]
    # @!attribute stop_time
    #   <p>The task's stop time.</p>
    #   @return [Time]
    # @!attribute status_message
    #   <p>The task's status message.</p>
    #   @return [String]
    # @!attribute log_stream
    #   <p>The task's log stream.</p>
    #   @return [String]
    # @!attribute gpus
    #   <p>The number of Graphics Processing Units (GPU) specified in the task.</p>
    #   @return [Integer]
    # @!attribute instance_type
    #   <p>The instance type for a task.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason a task has failed.</p>
    #   @return [String]
    # @!attribute image_details
    #   <p>Details about the container image that this task uses.</p>
    #   @return [Types::ImageDetails]
    class GetRunTaskResponse < Struct.new(
      nil,
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
      :image_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute s3_access_point_arn
    #   <p>The S3 access point ARN that has the access policy.</p>
    #   @return [String]
    class GetS3AccessPolicyRequest < Struct.new(
      nil,
      :s3_access_point_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute s3_access_point_arn
    #   <p>The S3 access point ARN that has the access policy.</p>
    #   @return [String]
    # @!attribute store_id
    #   <p>The Amazon Web Services-generated Sequence Store or Reference Store ID.</p>
    #   @return [String]
    # @!attribute store_type
    #   <p>The type of store associated with the access point.</p>
    #   @return [String]
    # @!attribute update_time
    #   <p>The time when the policy was last updated.</p>
    #   @return [Time]
    # @!attribute s3_access_policy
    #   <p>The current resource policy that controls S3 access on the store.</p>
    #   @return [String]
    class GetS3AccessPolicyResponse < Struct.new(
      nil,
      :s3_access_point_arn,
      :store_id,
      :store_type,
      :update_time,
      :s3_access_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The store's ID.</p>
    #   @return [String]
    class GetSequenceStoreRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The store's ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The store's ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The store's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The store's description.</p>
    #   @return [String]
    # @!attribute sse_config
    #   <p>The store's server-side encryption (SSE) settings.</p>
    #   @return [Types::SseConfig]
    # @!attribute creation_time
    #   <p>When the store was created.</p>
    #   @return [Time]
    # @!attribute fallback_location
    #   <p>An S3 location that is used to store files that have failed a direct upload.</p>
    #   @return [String]
    # @!attribute s3_access
    #   <p>The S3 metadata of a sequence store, including the ARN and S3 URI of the S3 bucket.</p>
    #   @return [Types::SequenceStoreS3Access]
    # @!attribute e_tag_algorithm_family
    #   <p>The algorithm family of the ETag.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the sequence store.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message of the sequence store.</p>
    #   @return [String]
    # @!attribute propagated_set_level_tags
    #   <p>The tags keys to propagate to the S3 objects associated with read sets in the sequence store.</p>
    #   @return [Array<String>]
    # @!attribute update_time
    #   <p>The last-updated time of the sequence store.</p>
    #   @return [Time]
    class GetSequenceStoreResponse < Struct.new(
      nil,
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
      :update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute share_id
    #   <p>The ID of the share.</p>
    #   @return [String]
    class GetShareRequest < Struct.new(
      nil,
      :share_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute share
    #   <p>A resource share details object. The object includes the status, the resourceArn, and ownerId.</p>
    #   @return [Types::ShareDetails]
    class GetShareResponse < Struct.new(
      nil,
      :share,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #   @return [String]
    class GetVariantImportRequest < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute destination_name
    #   <p>The job's destination variant store.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The job's service role ARN.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The job's status message.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>When the job was updated.</p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p>When the job completed.</p>
    #   @return [Time]
    # @!attribute items
    #   <p>The job's items.</p>
    #   @return [Array<Types::VariantImportItemDetail>]
    # @!attribute run_left_normalization
    #   <p>The job's left normalization setting.</p>
    #   @return [Boolean]
    # @!attribute annotation_fields
    #   <p>The annotation schema generated by the parsed annotation data.</p>
    #   @return [Hash<String, String>]
    class GetVariantImportResponse < Struct.new(
      nil,
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
      :annotation_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:run_left_normalization] = false unless options.key?(:run_left_normalization)
        super
      end
    end

    # @!attribute name
    #   <p>The store's name.</p>
    #   @return [String]
    class GetVariantStoreRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The store's ID.</p>
    #   @return [String]
    # @!attribute reference
    #   <p>The store's genome reference.</p>
    #   @return [Types::ReferenceItem]
    # @!attribute status
    #   <p>The store's status.</p>
    #   @return [String]
    # @!attribute store_arn
    #   <p>The store's ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The store's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The store's description.</p>
    #   @return [String]
    # @!attribute sse_config
    #   <p>The store's server-side encryption (SSE) settings.</p>
    #   @return [Types::SseConfig]
    # @!attribute creation_time
    #   <p>When the store was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>When the store was updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The store's tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute status_message
    #   <p>The store's status message.</p>
    #   @return [String]
    # @!attribute store_size_bytes
    #   <p>The store's size in bytes.</p>
    #   @return [Integer]
    class GetVariantStoreResponse < Struct.new(
      nil,
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
      :store_size_bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The workflow's ID.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The workflow's type.</p>
    #   @return [String]
    # @!attribute export
    #   <p>The export format for the workflow.</p>
    #   @return [Array<String>]
    # @!attribute workflow_owner_id
    #   <p>The ID of the workflow owner.</p>
    #   @return [String]
    class GetWorkflowRequest < Struct.new(
      nil,
      :id,
      :type,
      :export,
      :workflow_owner_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The workflow's ARN.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The workflow's ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The workflow's status.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The workflow's type.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The workflow's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The workflow's description.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The workflow's engine.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The workflow's definition.</p>
    #   @return [String]
    # @!attribute main
    #   <p>The path of the main definition file for the workflow.</p>
    #   @return [String]
    # @!attribute digest
    #   <p>The workflow's digest.</p>
    #   @return [String]
    # @!attribute parameter_template
    #   <p>The workflow's parameter template.</p>
    #   @return [Hash<String, Types::WorkflowParameter>]
    # @!attribute storage_capacity
    #   <p>The default static storage capacity (in gibibytes) for runs that use this workflow or workflow version.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>When the workflow was created.</p>
    #   @return [Time]
    # @!attribute status_message
    #   <p>The workflow's status message.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The workflow's tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute metadata
    #   <p>Gets metadata for the workflow.</p>
    #   @return [Hash<String, String>]
    # @!attribute accelerators
    #   <p>The computational accelerator specified to run the workflow. </p>
    #   @return [String]
    # @!attribute storage_type
    #   <p>The default storage type for runs using this workflow.</p>
    #   @return [String]
    # @!attribute uuid
    #   <p>The universally unique identifier (UUID) value for this workflow.</p>
    #   @return [String]
    # @!attribute container_registry_map
    #   <p>The registry map that this workflow is using.</p>
    #   @return [Types::ContainerRegistryMap]
    # @!attribute readme
    #   <p>The README content for the workflow, providing documentation and usage information.</p>
    #   @return [String]
    # @!attribute definition_repository_details
    #   <p>Details about the source code repository that hosts the workflow definition files.</p>
    #   @return [Types::DefinitionRepositoryDetails]
    # @!attribute readme_path
    #   <p>The path to the workflow README markdown file within the repository. This file provides documentation and usage information for the workflow. If not specified, the <code>README.md</code> file from the root directory of the repository will be used.</p>
    #   @return [String]
    class GetWorkflowResponse < Struct.new(
      nil,
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
      :readme_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_id
    #   <p>The workflow's ID. The <code>workflowId</code> is not the UUID.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>The workflow version name.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The workflow's type. </p>
    #   @return [String]
    # @!attribute export
    #   <p>The export format for the workflow.</p>
    #   @return [Array<String>]
    # @!attribute workflow_owner_id
    #   <p>The 12-digit account ID of the workflow owner. The workflow owner ID can be retrieved using the <code>GetShare</code> API operation. If you are the workflow owner, you do not need to include this ID.</p>
    #   @return [String]
    class GetWorkflowVersionRequest < Struct.new(
      nil,
      :workflow_id,
      :version_name,
      :type,
      :export,
      :workflow_owner_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the workflow version.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The workflow's ID.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>The workflow version name.</p>
    #   @return [String]
    # @!attribute accelerators
    #   <p>The accelerator for this workflow version.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the workflow version was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>Description of the workflow version.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>Definition of the workflow version.</p>
    #   @return [String]
    # @!attribute digest
    #   <p>The workflow version's digest.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The workflow engine for this workflow version.</p>
    #   @return [String]
    # @!attribute main
    #   <p>The path of the main definition file for the workflow.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata for the workflow version.</p>
    #   @return [Hash<String, String>]
    # @!attribute parameter_template
    #   <p>The parameter template for the workflow version.</p>
    #   @return [Hash<String, Types::WorkflowParameter>]
    # @!attribute status
    #   <p>The workflow version status</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The workflow version status message</p>
    #   @return [String]
    # @!attribute storage_type
    #   <p>The default storage type for the run.</p>
    #   @return [String]
    # @!attribute storage_capacity
    #   <p>The default run storage capacity for static storage.</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>The workflow version type</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The workflow version tags</p>
    #   @return [Hash<String, String>]
    # @!attribute uuid
    #   <p>The universally unique identifier (UUID) value for this workflow version</p>
    #   @return [String]
    # @!attribute workflow_bucket_owner_id
    #   <p>Amazon Web Services Id of the owner of the bucket.</p>
    #   @return [String]
    # @!attribute container_registry_map
    #   <p>The registry map that this workflow version uses.</p>
    #   @return [Types::ContainerRegistryMap]
    # @!attribute readme
    #   <p>The README content for the workflow version, providing documentation and usage information specific to this version.</p>
    #   @return [String]
    # @!attribute definition_repository_details
    #   <p>Details about the source code repository that hosts the workflow version definition files.</p>
    #   @return [Types::DefinitionRepositoryDetails]
    # @!attribute readme_path
    #   <p>The path to the workflow version README markdown file within the repository. This file provides documentation and usage information for the workflow. If not specified, the <code>README.md</code> file from the root directory of the repository will be used.</p>
    #   @return [String]
    class GetWorkflowVersionResponse < Struct.new(
      nil,
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
      :readme_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the container image used for a task.</p>
    # @!attribute image
    #   <p>The URI of the container image.</p>
    #   @return [String]
    # @!attribute image_digest
    #   <p>The container image digest. If the image URI was transformed, this will be the digest of the container image referenced by the transformed URI.</p>
    #   @return [String]
    # @!attribute source_image
    #   <p>URI of the source registry. If the URI is from a third-party registry, Amazon Web Services HealthOmics transforms the URI to the corresponding ECR path, using the pull-through cache mapping rules.</p>
    #   @return [String]
    class ImageDetails < Struct.new(
      nil,
      :image,
      :image_digest,
      :source_image,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies image mappings that workflow tasks can use. For example, you can replace all the task references of a public image to use an equivalent image in your private ECR repository. You can use image mappings with upstream registries that don't support pull through cache. You need to manually synchronize the upstream registry with your private repository. </p>
    # @!attribute source_image
    #   <p>Specifies the URI of the source image in the upstream registry.</p>
    #   @return [String]
    # @!attribute destination_image
    #   <p>Specifies the URI of the corresponding image in the private ECR registry.</p>
    #   @return [String]
    class ImageMapping < Struct.new(
      nil,
      :source_image,
      :destination_image,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for import read set jobs.</p>
    # @!attribute status
    #   <p>A status to filter on.</p>
    #   @return [String]
    # @!attribute created_after
    #   <p>The filter's start date.</p>
    #   @return [Time]
    # @!attribute created_before
    #   <p>The filter's end date.</p>
    #   @return [Time]
    class ImportReadSetFilter < Struct.new(
      nil,
      :status,
      :created_after,
      :created_before,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An import read set job.</p>
    # @!attribute id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute sequence_store_id
    #   <p>The job's sequence store ID.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The job's service role ARN.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p>When the job completed.</p>
    #   @return [Time]
    class ImportReadSetJobItem < Struct.new(
      nil,
      :id,
      :sequence_store_id,
      :role_arn,
      :status,
      :creation_time,
      :completion_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A source for an import read set job.</p>
    # @!attribute source_files
    #   <p>The source files' location in Amazon S3.</p>
    #   @return [Types::SourceFiles]
    # @!attribute source_file_type
    #   <p>The source's file type.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The source's status.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The source's status message.</p>
    #   @return [String]
    # @!attribute subject_id
    #   <p>The source's subject ID.</p>
    #   @return [String]
    # @!attribute sample_id
    #   <p>The source's sample ID.</p>
    #   @return [String]
    # @!attribute generated_from
    #   <p>Where the source originated.</p>
    #   @return [String]
    # @!attribute reference_arn
    #   <p>The source's genome reference ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The source's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The source's description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The source's tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute read_set_id
    #   <p>The source's read set ID.</p>
    #   @return [String]
    class ImportReadSetSourceItem < Struct.new(
      nil,
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
      :read_set_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for import references.</p>
    # @!attribute status
    #   <p>A status to filter on.</p>
    #   @return [String]
    # @!attribute created_after
    #   <p>The filter's start date.</p>
    #   @return [Time]
    # @!attribute created_before
    #   <p>The filter's end date.</p>
    #   @return [Time]
    class ImportReferenceFilter < Struct.new(
      nil,
      :status,
      :created_after,
      :created_before,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An import reference job.</p>
    # @!attribute id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute reference_store_id
    #   <p>The job's reference store ID.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The job's service role ARN.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p>When the job completed.</p>
    #   @return [Time]
    class ImportReferenceJobItem < Struct.new(
      nil,
      :id,
      :reference_store_id,
      :role_arn,
      :status,
      :creation_time,
      :completion_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An genome reference source.</p>
    # @!attribute source_file
    #   <p>The source file's location in Amazon S3.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The source's status.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The source's status message.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The source's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The source's description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The source's tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute reference_id
    #   <p>The source's reference ID.</p>
    #   @return [String]
    class ImportReferenceSourceItem < Struct.new(
      nil,
      :source_file,
      :status,
      :status_message,
      :name,
      :description,
      :tags,
      :reference_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error occurred. Try the request again.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for annotation import jobs.</p>
    # @!attribute status
    #   <p>A status to filter on.</p>
    #   @return [String]
    # @!attribute store_name
    #   <p>A store name to filter on.</p>
    #   @return [String]
    class ListAnnotationImportJobsFilter < Struct.new(
      nil,
      :status,
      :store_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of jobs to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute ids
    #   <p>IDs of annotation import jobs to retrieve.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>Specifies the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>A filter to apply to the list.</p>
    #   @return [Types::ListAnnotationImportJobsFilter]
    class ListAnnotationImportJobsRequest < Struct.new(
      nil,
      :max_results,
      :ids,
      :next_token,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute annotation_import_jobs
    #   <p>A list of jobs.</p>
    #   @return [Array<Types::AnnotationImportJobItem>]
    # @!attribute next_token
    #   <p>Specifies the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    class ListAnnotationImportJobsResponse < Struct.new(
      nil,
      :annotation_import_jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Use filters to focus the returned annotation store versions on a specific parameter, such as the status of the annotation store.</p>
    # @!attribute status
    #   <p>The status of an annotation store version.</p>
    #   @return [String]
    class ListAnnotationStoreVersionsFilter < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of an annotation store. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of annotation store versions to return in one page of results. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> Specifies the pagination token from a previous request to retrieve the next page of results. </p>
    #   @return [String]
    # @!attribute filter
    #   <p> A filter to apply to the list of annotation store versions. </p>
    #   @return [Types::ListAnnotationStoreVersionsFilter]
    class ListAnnotationStoreVersionsRequest < Struct.new(
      nil,
      :name,
      :max_results,
      :next_token,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute annotation_store_versions
    #   <p> Lists all versions of an annotation store. </p>
    #   @return [Array<Types::AnnotationStoreVersionItem>]
    # @!attribute next_token
    #   <p> Specifies the pagination token from a previous request to retrieve the next page of results. </p>
    #   @return [String]
    class ListAnnotationStoreVersionsResponse < Struct.new(
      nil,
      :annotation_store_versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for annotation stores.</p>
    # @!attribute status
    #   <p>A status to filter on.</p>
    #   @return [String]
    class ListAnnotationStoresFilter < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ids
    #   <p>IDs of stores to list.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of stores to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>A filter to apply to the list.</p>
    #   @return [Types::ListAnnotationStoresFilter]
    class ListAnnotationStoresRequest < Struct.new(
      nil,
      :ids,
      :max_results,
      :next_token,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute annotation_stores
    #   <p>A list of stores.</p>
    #   @return [Array<Types::AnnotationStoreItem>]
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListAnnotationStoresResponse < Struct.new(
      nil,
      :annotation_stores,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sequence_store_id
    #   <p>The Sequence Store ID used for the multipart uploads.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of multipart uploads returned in a page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Next token returned in the response of a previous ListMultipartReadSetUploads call. Used to get the next page of results.</p>
    #   @return [String]
    class ListMultipartReadSetUploadsRequest < Struct.new(
      nil,
      :sequence_store_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Next token returned in the response of a previous ListMultipartReadSetUploads call. Used to get the next page of results.</p>
    #   @return [String]
    # @!attribute uploads
    #   <p>An array of multipart uploads.</p>
    #   @return [Array<Types::MultipartReadSetUploadListItem>]
    class ListMultipartReadSetUploadsResponse < Struct.new(
      nil,
      :next_token,
      :uploads,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sequence_store_id
    #   <p>The read set's sequence store ID.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of read set activation jobs to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>A filter to apply to the list.</p>
    #   @return [Types::ActivateReadSetFilter]
    class ListReadSetActivationJobsRequest < Struct.new(
      nil,
      :sequence_store_id,
      :max_results,
      :next_token,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    # @!attribute activation_jobs
    #   <p>A list of jobs.</p>
    #   @return [Array<Types::ActivateReadSetJobItem>]
    class ListReadSetActivationJobsResponse < Struct.new(
      nil,
      :next_token,
      :activation_jobs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sequence_store_id
    #   <p>The jobs' sequence store ID.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of jobs to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>A filter to apply to the list.</p>
    #   @return [Types::ExportReadSetFilter]
    class ListReadSetExportJobsRequest < Struct.new(
      nil,
      :sequence_store_id,
      :max_results,
      :next_token,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    # @!attribute export_jobs
    #   <p>A list of jobs.</p>
    #   @return [Array<Types::ExportReadSetJobDetail>]
    class ListReadSetExportJobsResponse < Struct.new(
      nil,
      :next_token,
      :export_jobs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of jobs to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute sequence_store_id
    #   <p>The jobs' sequence store ID.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>A filter to apply to the list.</p>
    #   @return [Types::ImportReadSetFilter]
    class ListReadSetImportJobsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :sequence_store_id,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    # @!attribute import_jobs
    #   <p>A list of jobs.</p>
    #   @return [Array<Types::ImportReadSetJobItem>]
    class ListReadSetImportJobsResponse < Struct.new(
      nil,
      :next_token,
      :import_jobs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sequence_store_id
    #   <p>The Sequence Store ID used for the multipart uploads.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>The ID for the initiated multipart upload.</p>
    #   @return [String]
    # @!attribute part_source
    #   <p>The source file for the upload part.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of read set upload parts returned in a page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Next token returned in the response of a previous ListReadSetUploadPartsRequest call. Used to get the next page of results.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Attributes used to filter for a specific subset of read set part uploads.</p>
    #   @return [Types::ReadSetUploadPartListFilter]
    class ListReadSetUploadPartsRequest < Struct.new(
      nil,
      :sequence_store_id,
      :upload_id,
      :part_source,
      :max_results,
      :next_token,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Next token returned in the response of a previous ListReadSetUploadParts call. Used to get the next page of results.</p>
    #   @return [String]
    # @!attribute parts
    #   <p>An array of upload parts.</p>
    #   @return [Array<Types::ReadSetUploadPartListItem>]
    class ListReadSetUploadPartsResponse < Struct.new(
      nil,
      :next_token,
      :parts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sequence_store_id
    #   <p>The jobs' sequence store ID.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of read sets to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>A filter to apply to the list.</p>
    #   @return [Types::ReadSetFilter]
    class ListReadSetsRequest < Struct.new(
      nil,
      :sequence_store_id,
      :max_results,
      :next_token,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    # @!attribute read_sets
    #   <p>A list of read sets.</p>
    #   @return [Array<Types::ReadSetListItem>]
    class ListReadSetsResponse < Struct.new(
      nil,
      :next_token,
      :read_sets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of jobs to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute reference_store_id
    #   <p>The job's reference store ID.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>A filter to apply to the list.</p>
    #   @return [Types::ImportReferenceFilter]
    class ListReferenceImportJobsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :reference_store_id,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    # @!attribute import_jobs
    #   <p>A lis of jobs.</p>
    #   @return [Array<Types::ImportReferenceJobItem>]
    class ListReferenceImportJobsResponse < Struct.new(
      nil,
      :next_token,
      :import_jobs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of stores to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>A filter to apply to the list.</p>
    #   @return [Types::ReferenceStoreFilter]
    class ListReferenceStoresRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    # @!attribute reference_stores
    #   <p>A list of reference stores.</p>
    #   @return [Array<Types::ReferenceStoreDetail>]
    class ListReferenceStoresResponse < Struct.new(
      nil,
      :next_token,
      :reference_stores,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reference_store_id
    #   <p>The references' reference store ID.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of references to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>A filter to apply to the list.</p>
    #   @return [Types::ReferenceFilter]
    class ListReferencesRequest < Struct.new(
      nil,
      :reference_store_id,
      :max_results,
      :next_token,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    # @!attribute references
    #   <p>A list of references.</p>
    #   @return [Array<Types::ReferenceListItem>]
    class ListReferencesResponse < Struct.new(
      nil,
      :next_token,
      :references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute starting_token
    #   <p>Optional pagination token returned from a prior call to the <code>ListRunCaches</code> API operation.</p>
    #   @return [String]
    class ListRunCachesRequest < Struct.new(
      nil,
      :max_results,
      :starting_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Details about each run cache in the response.</p>
    #   @return [Array<Types::RunCacheListItem>]
    # @!attribute next_token
    #   <p>Pagination token to retrieve additional run caches. If the response does not have a <code>nextToken</code>value, you have reached to the end of the list.</p>
    #   @return [String]
    class ListRunCachesResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The run groups' name.</p>
    #   @return [String]
    # @!attribute starting_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of run groups to return in one page of results.</p>
    #   @return [Integer]
    class ListRunGroupsRequest < Struct.new(
      nil,
      :name,
      :starting_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A list of groups.</p>
    #   @return [Array<Types::RunGroupListItem>]
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListRunGroupsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The run's ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filter the list by status.</p>
    #   @return [String]
    # @!attribute starting_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of run tasks to return in one page of results.</p>
    #   @return [Integer]
    class ListRunTasksRequest < Struct.new(
      nil,
      :id,
      :status,
      :starting_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A list of tasks.</p>
    #   @return [Array<Types::TaskListItem>]
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListRunTasksResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Filter the list by run name.</p>
    #   @return [String]
    # @!attribute run_group_id
    #   <p>Filter the list by run group ID.</p>
    #   @return [String]
    # @!attribute starting_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of runs to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of a run.</p>
    #   @return [String]
    class ListRunsRequest < Struct.new(
      nil,
      :name,
      :run_group_id,
      :starting_token,
      :max_results,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A list of runs.</p>
    #   @return [Array<Types::RunListItem>]
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListRunsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of stores to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>A filter to apply to the list.</p>
    #   @return [Types::SequenceStoreFilter]
    class ListSequenceStoresRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    # @!attribute sequence_stores
    #   <p>A list of sequence stores.</p>
    #   @return [Array<Types::SequenceStoreDetail>]
    class ListSequenceStoresResponse < Struct.new(
      nil,
      :next_token,
      :sequence_stores,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_owner
    #   <p>The account that owns the resource shares.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Attributes that you use to filter for a specific subset of resource shares.</p>
    #   @return [Types::Filter]
    # @!attribute next_token
    #   <p>Next token returned in the response of a previous ListReadSetUploadPartsRequest call. Used to get the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of shares to return in one page of results.</p>
    #   @return [Integer]
    class ListSharesRequest < Struct.new(
      nil,
      :resource_owner,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute shares
    #   <p>The shares available and their metadata details.</p>
    #   @return [Array<Types::ShareDetails>]
    # @!attribute next_token
    #   <p> Next token returned in the response of a previous ListSharesResponse call. Used to get the next page of results. </p>
    #   @return [String]
    class ListSharesResponse < Struct.new(
      nil,
      :shares,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource's ARN.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tags.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for variant import jobs.</p>
    # @!attribute status
    #   <p>A status to filter on.</p>
    #   @return [String]
    # @!attribute store_name
    #   <p>A store name to filter on.</p>
    #   @return [String]
    class ListVariantImportJobsFilter < Struct.new(
      nil,
      :status,
      :store_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of import jobs to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute ids
    #   <p>A list of job IDs.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>A filter to apply to the list.</p>
    #   @return [Types::ListVariantImportJobsFilter]
    class ListVariantImportJobsRequest < Struct.new(
      nil,
      :max_results,
      :ids,
      :next_token,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute variant_import_jobs
    #   <p>A list of jobs.</p>
    #   @return [Array<Types::VariantImportJobItem>]
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListVariantImportJobsResponse < Struct.new(
      nil,
      :variant_import_jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for variant stores.</p>
    # @!attribute status
    #   <p>A status to filter on.</p>
    #   @return [String]
    class ListVariantStoresFilter < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of stores to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute ids
    #   <p>A list of store IDs.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>A filter to apply to the list.</p>
    #   @return [Types::ListVariantStoresFilter]
    class ListVariantStoresRequest < Struct.new(
      nil,
      :max_results,
      :ids,
      :next_token,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute variant_stores
    #   <p>A list of variant stores.</p>
    #   @return [Array<Types::VariantStoreItem>]
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListVariantStoresResponse < Struct.new(
      nil,
      :variant_stores,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_id
    #   <p>The workflow's ID. The <code>workflowId</code> is not the UUID.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The workflow type.</p>
    #   @return [String]
    # @!attribute workflow_owner_id
    #   <p>The 12-digit account ID of the workflow owner. The workflow owner ID can be retrieved using the <code>GetShare</code> API operation. If you are the workflow owner, you do not need to include this ID.</p>
    #   @return [String]
    # @!attribute starting_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of workflows to return in one page of results.</p>
    #   @return [Integer]
    class ListWorkflowVersionsRequest < Struct.new(
      nil,
      :workflow_id,
      :type,
      :workflow_owner_id,
      :starting_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A list of workflow version items.</p>
    #   @return [Array<Types::WorkflowVersionListItem>]
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListWorkflowVersionsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>Filter the list by workflow type.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Filter the list by workflow name.</p>
    #   @return [String]
    # @!attribute starting_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of workflows to return in one page of results.</p>
    #   @return [Integer]
    class ListWorkflowsRequest < Struct.new(
      nil,
      :type,
      :name,
      :starting_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A list of workflow items.</p>
    #   @return [Array<Types::WorkflowListItem>]
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListWorkflowsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Part of the response to ListMultipartReadSetUploads, excluding completed and aborted multipart uploads. </p>
    # @!attribute sequence_store_id
    #   <p> The sequence store ID used for the multipart upload. </p>
    #   @return [String]
    # @!attribute upload_id
    #   <p> The ID for the initiated multipart upload. </p>
    #   @return [String]
    # @!attribute source_file_type
    #   <p> The type of file the read set originated from. </p>
    #   @return [String]
    # @!attribute subject_id
    #   <p> The read set source's subject ID. </p>
    #   @return [String]
    # @!attribute sample_id
    #   <p> The read set source's sample ID. </p>
    #   @return [String]
    # @!attribute generated_from
    #   <p> The source of an uploaded part. </p>
    #   @return [String]
    # @!attribute reference_arn
    #   <p> The source's reference ARN. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of a read set. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of a read set. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> Any tags you wish to add to a read set. </p>
    #   @return [Hash<String, String>]
    # @!attribute creation_time
    #   <p> The time stamp for when a direct upload was created. </p>
    #   @return [Time]
    class MultipartReadSetUploadListItem < Struct.new(
      nil,
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
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The operation is not supported by Amazon Omics, or the API does not exist. </p>
    # @!attribute message
    #   @return [String]
    class NotSupportedOperationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute s3_access_point_arn
    #   <p>The S3 access point ARN where you want to put the access policy.</p>
    #   @return [String]
    # @!attribute s3_access_policy
    #   <p>The resource policy that controls S3 access to the store.</p>
    #   @return [String]
    class PutS3AccessPolicyRequest < Struct.new(
      nil,
      :s3_access_point_arn,
      :s3_access_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute s3_access_point_arn
    #   <p>The S3 access point ARN that now has the access policy.</p>
    #   @return [String]
    # @!attribute store_id
    #   <p>The Amazon Web Services-generated Sequence Store or Reference Store ID.</p>
    #   @return [String]
    # @!attribute store_type
    #   <p>The type of store associated with the access point.</p>
    #   @return [String]
    class PutS3AccessPolicyResponse < Struct.new(
      nil,
      :s3_access_point_arn,
      :store_id,
      :store_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The ranges specified in the request are not valid.</p>
    # @!attribute message
    #   @return [String]
    class RangeNotSatisfiableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Read options for an annotation import job.</p>
    # @!attribute sep
    #   <p>The file's field separator.</p>
    #   @return [String]
    # @!attribute encoding
    #   <p>The file's encoding.</p>
    #   @return [String]
    # @!attribute quote
    #   <p>The file's quote character.</p>
    #   @return [String]
    # @!attribute quote_all
    #   <p>Whether all values need to be quoted, or just those that contain quotes.</p>
    #   @return [Boolean]
    # @!attribute escape
    #   <p>A character for escaping quotes in the file.</p>
    #   @return [String]
    # @!attribute escape_quotes
    #   <p>Whether quotes need to be escaped in the file.</p>
    #   @return [Boolean]
    # @!attribute comment
    #   <p>The file's comment character.</p>
    #   @return [String]
    # @!attribute header
    #   <p>Whether the file has a header row.</p>
    #   @return [Boolean]
    # @!attribute line_sep
    #   <p>A line separator for the file.</p>
    #   @return [String]
    class ReadOptions < Struct.new(
      nil,
      :sep,
      :encoding,
      :quote,
      :quote_all,
      :escape,
      :escape_quotes,
      :comment,
      :header,
      :line_sep,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:quote_all] = false unless options.key?(:quote_all)
        options[:escape_quotes] = false unless options.key?(:escape_quotes)
        options[:header] = false unless options.key?(:header)
        super
      end
    end

    # <p>An error from a batch read set operation.</p>
    # @!attribute id
    #   <p>The error's ID.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error's code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error's message.</p>
    #   @return [String]
    class ReadSetBatchError < Struct.new(
      nil,
      :id,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Files in a read set.</p>
    # @!attribute source1
    #   <p>The location of the first file in Amazon S3.</p>
    #   @return [Types::FileInformation]
    # @!attribute source2
    #   <p>The location of the second file in Amazon S3.</p>
    #   @return [Types::FileInformation]
    # @!attribute index
    #   <p>The files' index.</p>
    #   @return [Types::FileInformation]
    class ReadSetFiles < Struct.new(
      nil,
      :source1,
      :source2,
      :index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for read sets.</p>
    # @!attribute name
    #   <p>A name to filter on.</p>
    #   @return [String]
    # @!attribute status
    #   <p>A status to filter on.</p>
    #   @return [String]
    # @!attribute reference_arn
    #   <p>A genome reference ARN to filter on.</p>
    #   @return [String]
    # @!attribute created_after
    #   <p>The filter's start date.</p>
    #   @return [Time]
    # @!attribute created_before
    #   <p>The filter's end date.</p>
    #   @return [Time]
    # @!attribute sample_id
    #   <p> The read set source's sample ID. </p>
    #   @return [String]
    # @!attribute subject_id
    #   <p> The read set source's subject ID. </p>
    #   @return [String]
    # @!attribute generated_from
    #   <p> Where the source originated. </p>
    #   @return [String]
    # @!attribute creation_type
    #   <p> The creation type of the read set. </p>
    #   @return [String]
    class ReadSetFilter < Struct.new(
      nil,
      :name,
      :status,
      :reference_arn,
      :created_after,
      :created_before,
      :sample_id,
      :subject_id,
      :generated_from,
      :creation_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A read set.</p>
    # @!attribute id
    #   <p>The read set's ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The read set's ARN.</p>
    #   @return [String]
    # @!attribute sequence_store_id
    #   <p>The read set's sequence store ID.</p>
    #   @return [String]
    # @!attribute subject_id
    #   <p>The read set's subject ID.</p>
    #   @return [String]
    # @!attribute sample_id
    #   <p>The read set's sample ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The read set's status.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The read set's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The read set's description.</p>
    #   @return [String]
    # @!attribute reference_arn
    #   <p>The read set's genome reference ARN.</p>
    #   @return [String]
    # @!attribute file_type
    #   <p>The read set's file type.</p>
    #   @return [String]
    # @!attribute sequence_information
    #   <p>Details about a sequence.</p>
    #   @return [Types::SequenceInformation]
    # @!attribute creation_time
    #   <p>When the read set was created.</p>
    #   @return [Time]
    # @!attribute status_message
    #   <p> The status for a read set. It provides more detail as to why the read set has a status. </p>
    #   @return [String]
    # @!attribute creation_type
    #   <p> The creation type of the read set. </p>
    #   @return [String]
    # @!attribute etag
    #   <p>The entity tag (ETag) is a hash of the object representing its semantic content.</p>
    #   @return [Types::ETag]
    class ReadSetListItem < Struct.new(
      nil,
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
      :etag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The S3 URI for each read set file.</p>
    # @!attribute s3_uri
    #   <p>The S3 URI for each read set file.</p>
    #   @return [String]
    class ReadSetS3Access < Struct.new(
      nil,
      :s3_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Filter settings that select for read set upload parts of interest. </p>
    # @!attribute created_after
    #   <p> Filters for read set uploads after a specified time. </p>
    #   @return [Time]
    # @!attribute created_before
    #   <p> Filters for read set part uploads before a specified time. </p>
    #   @return [Time]
    class ReadSetUploadPartListFilter < Struct.new(
      nil,
      :created_after,
      :created_before,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The metadata of a single part of a file that was added to a multipart upload. A list of these parts is returned in the response to the ListReadSetUploadParts API. </p>
    # @!attribute part_number
    #   <p> The number identifying the part in an upload. </p>
    #   @return [Integer]
    # @!attribute part_size
    #   <p> The size of the the part in an upload. </p>
    #   @return [Integer]
    # @!attribute part_source
    #   <p> The origin of the part being direct uploaded. </p>
    #   @return [String]
    # @!attribute checksum
    #   <p> A unique identifier used to confirm that parts are being added to the correct upload. </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p> The time stamp for when a direct upload was created. </p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p> The time stamp for the most recent update to an uploaded part. </p>
    #   @return [Time]
    class ReadSetUploadPartListItem < Struct.new(
      nil,
      :part_number,
      :part_size,
      :part_source,
      :checksum,
      :creation_time,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of genome reference files.</p>
    # @!attribute source
    #   <p>The source file's location in Amazon S3.</p>
    #   @return [Types::FileInformation]
    # @!attribute index
    #   <p>The files' index.</p>
    #   @return [Types::FileInformation]
    class ReferenceFiles < Struct.new(
      nil,
      :source,
      :index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for references.</p>
    # @!attribute name
    #   <p>A name to filter on.</p>
    #   @return [String]
    # @!attribute md5
    #   <p>An MD5 checksum to filter on.</p>
    #   @return [String]
    # @!attribute created_after
    #   <p>The filter's start date.</p>
    #   @return [Time]
    # @!attribute created_before
    #   <p>The filter's end date.</p>
    #   @return [Time]
    class ReferenceFilter < Struct.new(
      nil,
      :name,
      :md5,
      :created_after,
      :created_before,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A genome reference.</p>
    # @!attribute reference_arn
    #   <p>The reference's ARN.</p>
    #   @return [String]
    class ReferenceItem < Struct.new(
      :reference_arn,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ReferenceArn < ReferenceItem; end
      class Unknown < ReferenceItem; end
    end

    # <p>A genome reference.</p>
    # @!attribute id
    #   <p>The reference's ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The reference's ARN.</p>
    #   @return [String]
    # @!attribute reference_store_id
    #   <p>The reference's store ID.</p>
    #   @return [String]
    # @!attribute md5
    #   <p>The reference's MD5 checksum.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The reference's status.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The reference's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The reference's description.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the reference was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>When the reference was updated.</p>
    #   @return [Time]
    class ReferenceListItem < Struct.new(
      nil,
      :id,
      :arn,
      :reference_store_id,
      :md5,
      :status,
      :name,
      :description,
      :creation_time,
      :update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a reference store.</p>
    # @!attribute arn
    #   <p>The store's ARN.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The store's ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The store's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The store's description.</p>
    #   @return [String]
    # @!attribute sse_config
    #   <p>The store's server-side encryption (SSE) settings.</p>
    #   @return [Types::SseConfig]
    # @!attribute creation_time
    #   <p>When the store was created.</p>
    #   @return [Time]
    class ReferenceStoreDetail < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :description,
      :sse_config,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for reference stores.</p>
    # @!attribute name
    #   <p>The name to filter on.</p>
    #   @return [String]
    # @!attribute created_after
    #   <p>The filter's start date.</p>
    #   @return [Time]
    # @!attribute created_before
    #   <p>The filter's end date.</p>
    #   @return [Time]
    class ReferenceStoreFilter < Struct.new(
      nil,
      :name,
      :created_after,
      :created_before,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If you are using the ECR pull through cache feature, the registry mapping maps between the ECR repository and the upstream registry where container images are pulled and synchronized.</p>
    # @!attribute upstream_registry_url
    #   <p>The URI of the upstream registry.</p>
    #   @return [String]
    # @!attribute ecr_repository_prefix
    #   <p>The repository prefix to use in the ECR private repository.</p>
    #   @return [String]
    # @!attribute upstream_repository_prefix
    #   <p>The repository prefix of the corresponding repository in the upstream registry.</p>
    #   @return [String]
    # @!attribute ecr_account_id
    #   <p>Account ID of the account that owns the upstream container image.</p>
    #   @return [String]
    class RegistryMapping < Struct.new(
      nil,
      :upstream_registry_url,
      :ecr_repository_prefix,
      :upstream_repository_prefix,
      :ecr_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request timed out.</p>
    # @!attribute message
    #   @return [String]
    class RequestTimeoutException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The target resource was not found in the current Region.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>List entry for one run cache.</p>
    # @!attribute arn
    #   <p>Unique resource identifier for the run cache.</p>
    #   @return [String]
    # @!attribute cache_behavior
    #   <p>Default cache behavior for the run cache.</p>
    #   @return [String]
    # @!attribute cache_s3_uri
    #   <p>The S3 uri for the run cache data.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time that this run cache was created (an ISO 8601 formatted string).</p>
    #   @return [Time]
    # @!attribute id
    #   <p>The identifier for this run cache.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the run cache.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The run cache status.</p>
    #   @return [String]
    class RunCacheListItem < Struct.new(
      nil,
      :arn,
      :cache_behavior,
      :cache_s3_uri,
      :creation_time,
      :id,
      :name,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A run group.</p>
    # @!attribute arn
    #   <p>The group's ARN.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The group's ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The group's name.</p>
    #   @return [String]
    # @!attribute max_cpus
    #   <p>The group's maximum CPU count setting.</p>
    #   @return [Integer]
    # @!attribute max_runs
    #   <p>The group's maximum concurrent run setting.</p>
    #   @return [Integer]
    # @!attribute max_duration
    #   <p>The group's maximum duration setting in minutes.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>When the group was created.</p>
    #   @return [Time]
    # @!attribute max_gpus
    #   <p> The maximum GPUs that can be used by a run group. </p>
    #   @return [Integer]
    class RunGroupListItem < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :max_cpus,
      :max_runs,
      :max_duration,
      :creation_time,
      :max_gpus,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A workflow run.</p>
    # @!attribute arn
    #   <p>The run's ARN.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The run's ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The run's status.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The run's workflow ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The run's name.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The run's priority.</p>
    #   @return [Integer]
    # @!attribute storage_capacity
    #   <p>The run's storage capacity in gibibytes. For dynamic storage, after the run has completed, this value is the maximum amount of storage used during the run.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>When the run was created.</p>
    #   @return [Time]
    # @!attribute start_time
    #   <p>When the run started.</p>
    #   @return [Time]
    # @!attribute stop_time
    #   <p>When the run stopped.</p>
    #   @return [Time]
    # @!attribute storage_type
    #   <p>The run's storage type.</p>
    #   @return [String]
    # @!attribute workflow_version_name
    #   <p>The name of the workflow version.</p>
    #   @return [String]
    class RunListItem < Struct.new(
      nil,
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
      :workflow_version_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The URI for the run log.</p>
    # @!attribute engine_log_stream
    #   <p>The log stream ARN for the engine log.</p>
    #   @return [String]
    # @!attribute run_log_stream
    #   <p>The log stream ARN for the run log.</p>
    #   @return [String]
    class RunLogLocation < Struct.new(
      nil,
      :engine_log_stream,
      :run_log_stream,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>S3 access configuration parameters.</p>
    # @!attribute access_log_location
    #   <p>Location of the access logs.</p>
    #   @return [String]
    class S3AccessConfig < Struct.new(
      nil,
      :access_log_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a sequence.</p>
    # @!attribute total_read_count
    #   <p>The sequence's total read count.</p>
    #   @return [Integer]
    # @!attribute total_base_count
    #   <p>The sequence's total base count.</p>
    #   @return [Integer]
    # @!attribute generated_from
    #   <p>Where the sequence originated.</p>
    #   @return [String]
    # @!attribute alignment
    #   <p>The sequence's alignment setting.</p>
    #   @return [String]
    class SequenceInformation < Struct.new(
      nil,
      :total_read_count,
      :total_base_count,
      :generated_from,
      :alignment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a sequence store.</p>
    # @!attribute arn
    #   <p>The store's ARN.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The store's ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The store's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The store's description.</p>
    #   @return [String]
    # @!attribute sse_config
    #   <p>The store's server-side encryption (SSE) settings.</p>
    #   @return [Types::SseConfig]
    # @!attribute creation_time
    #   <p>When the store was created.</p>
    #   @return [Time]
    # @!attribute fallback_location
    #   <p> An S3 location that is used to store files that have failed a direct upload. </p>
    #   @return [String]
    # @!attribute e_tag_algorithm_family
    #   <p>The algorithm family of the ETag.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the sequence store.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message of the sequence store.</p>
    #   @return [String]
    # @!attribute update_time
    #   <p>The last-updated time of the Sequence Store.</p>
    #   @return [Time]
    class SequenceStoreDetail < Struct.new(
      nil,
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
      :update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for a sequence store.</p>
    # @!attribute name
    #   <p>A name to filter on.</p>
    #   @return [String]
    # @!attribute created_after
    #   <p>The filter's start date.</p>
    #   @return [Time]
    # @!attribute created_before
    #   <p>The filter's end date.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>Filter results based on status.</p>
    #   @return [String]
    # @!attribute updated_after
    #   <p>Filter results based on stores updated after the specified time.</p>
    #   @return [Time]
    # @!attribute updated_before
    #   <p>Filter results based on stores updated before the specified time.</p>
    #   @return [Time]
    class SequenceStoreFilter < Struct.new(
      nil,
      :name,
      :created_after,
      :created_before,
      :status,
      :updated_after,
      :updated_before,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The S3 access metadata of the sequence store.</p>
    # @!attribute s3_uri
    #   <p>The S3 URI of the sequence store.</p>
    #   @return [String]
    # @!attribute s3_access_point_arn
    #   <p>This is ARN of the access point associated with the S3 bucket storing read sets.</p>
    #   @return [String]
    # @!attribute access_log_location
    #   <p>Location of the access logs.</p>
    #   @return [String]
    class SequenceStoreS3Access < Struct.new(
      nil,
      :s3_uri,
      :s3_access_point_arn,
      :access_log_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeds a service quota.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a resource share.</p>
    # @!attribute share_id
    #   <p>The ID of the resource share.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Arn of the shared resource. </p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the shared resource. </p>
    #   @return [String]
    # @!attribute principal_subscriber
    #   <p>The principal subscriber is the account that is sharing the resource.</p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>The account ID for the data owner. The owner creates the resource share.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the share.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message for a resource share. It provides additional details about the share status.</p>
    #   @return [String]
    # @!attribute share_name
    #   <p>The name of the resource share.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp of when the resource share was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The timestamp of the resource share update.</p>
    #   @return [Time]
    class ShareDetails < Struct.new(
      nil,
      :share_id,
      :resource_arn,
      :resource_id,
      :principal_subscriber,
      :owner_id,
      :status,
      :status_message,
      :share_name,
      :creation_time,
      :update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Source files for a sequence.</p>
    # @!attribute source1
    #   <p>The location of the first file in Amazon S3.</p>
    #   @return [String]
    # @!attribute source2
    #   <p>The location of the second file in Amazon S3.</p>
    #   @return [String]
    class SourceFiles < Struct.new(
      nil,
      :source1,
      :source2,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the source reference in a code repository, such as a branch, tag, or commit.</p>
    # @!attribute type
    #   <p>The type of source reference, such as branch, tag, or commit.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the source reference, such as the branch name, tag name, or commit ID.</p>
    #   @return [String]
    class SourceReference < Struct.new(
      nil,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Server-side encryption (SSE) settings for a store.</p>
    # @!attribute type
    #   <p>The encryption type.</p>
    #   @return [String]
    # @!attribute key_arn
    #   <p>An encryption key ARN.</p>
    #   @return [String]
    class SseConfig < Struct.new(
      nil,
      :type,
      :key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_name
    #   <p>A destination annotation store for the job.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>A service role for the job.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Items to import.</p>
    #   @return [Array<Types::AnnotationImportItemSource>]
    # @!attribute version_name
    #   <p> The name of the annotation store version. </p>
    #   @return [String]
    # @!attribute format_options
    #   <p>Formatting options for the annotation file.</p>
    #   @return [Types::FormatOptions]
    # @!attribute run_left_normalization
    #   <p>The job's left normalization setting.</p>
    #   @return [Boolean]
    # @!attribute annotation_fields
    #   <p>The annotation schema generated by the parsed annotation data.</p>
    #   @return [Hash<String, String>]
    class StartAnnotationImportRequest < Struct.new(
      nil,
      :destination_name,
      :role_arn,
      :items,
      :version_name,
      :format_options,
      :run_left_normalization,
      :annotation_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #   @return [String]
    class StartAnnotationImportResponse < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sequence_store_id
    #   <p>The read set's sequence store ID.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>To ensure that jobs don't run multiple times, specify a unique token for each job.</p>
    #   @return [String]
    # @!attribute sources
    #   <p>The job's source files.</p>
    #   @return [Array<Types::StartReadSetActivationJobSourceItem>]
    class StartReadSetActivationJobRequest < Struct.new(
      nil,
      :sequence_store_id,
      :client_token,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute sequence_store_id
    #   <p>The read set's sequence store ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    class StartReadSetActivationJobResponse < Struct.new(
      nil,
      :id,
      :sequence_store_id,
      :status,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A source for a read set activation job.</p>
    # @!attribute read_set_id
    #   <p>The source's read set ID.</p>
    #   @return [String]
    class StartReadSetActivationJobSourceItem < Struct.new(
      nil,
      :read_set_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sequence_store_id
    #   <p>The read set's sequence store ID.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>A location for exported files in Amazon S3.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>A service role for the job.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>To ensure that jobs don't run multiple times, specify a unique token for each job.</p>
    #   @return [String]
    # @!attribute sources
    #   <p>The job's source files.</p>
    #   @return [Array<Types::ExportReadSet>]
    class StartReadSetExportJobRequest < Struct.new(
      nil,
      :sequence_store_id,
      :destination,
      :role_arn,
      :client_token,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute sequence_store_id
    #   <p>The read set's sequence store ID.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The job's output location.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    class StartReadSetExportJobResponse < Struct.new(
      nil,
      :id,
      :sequence_store_id,
      :destination,
      :status,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sequence_store_id
    #   <p>The read set's sequence store ID.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>A service role for the job.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>To ensure that jobs don't run multiple times, specify a unique token for each job.</p>
    #   @return [String]
    # @!attribute sources
    #   <p>The job's source files.</p>
    #   @return [Array<Types::StartReadSetImportJobSourceItem>]
    class StartReadSetImportJobRequest < Struct.new(
      nil,
      :sequence_store_id,
      :role_arn,
      :client_token,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute sequence_store_id
    #   <p>The read set's sequence store ID.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The job's service role ARN.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    class StartReadSetImportJobResponse < Struct.new(
      nil,
      :id,
      :sequence_store_id,
      :role_arn,
      :status,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A source for a read set import job.</p>
    # @!attribute source_files
    #   <p>The source files' location in Amazon S3.</p>
    #   @return [Types::SourceFiles]
    # @!attribute source_file_type
    #   <p>The source's file type.</p>
    #   @return [String]
    # @!attribute subject_id
    #   <p>The source's subject ID.</p>
    #   @return [String]
    # @!attribute sample_id
    #   <p>The source's sample ID.</p>
    #   @return [String]
    # @!attribute generated_from
    #   <p>Where the source originated.</p>
    #   @return [String]
    # @!attribute reference_arn
    #   <p>The source's reference ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The source's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The source's description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The source's tags.</p>
    #   @return [Hash<String, String>]
    class StartReadSetImportJobSourceItem < Struct.new(
      nil,
      :source_files,
      :source_file_type,
      :subject_id,
      :sample_id,
      :generated_from,
      :reference_arn,
      :name,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reference_store_id
    #   <p>The job's reference store ID.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>A service role for the job.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>To ensure that jobs don't run multiple times, specify a unique token for each job.</p>
    #   @return [String]
    # @!attribute sources
    #   <p>The job's source files.</p>
    #   @return [Array<Types::StartReferenceImportJobSourceItem>]
    class StartReferenceImportJobRequest < Struct.new(
      nil,
      :reference_store_id,
      :role_arn,
      :client_token,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute reference_store_id
    #   <p>The job's reference store ID.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The job's service role ARN.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    class StartReferenceImportJobResponse < Struct.new(
      nil,
      :id,
      :reference_store_id,
      :role_arn,
      :status,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A source for a reference import job.</p>
    # @!attribute source_file
    #   <p>The source file's location in Amazon S3.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The source's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The source's description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The source's tags.</p>
    #   @return [Hash<String, String>]
    class StartReferenceImportJobSourceItem < Struct.new(
      nil,
      :source_file,
      :name,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_id
    #   <p>The run's workflow ID. The <code>workflowId</code> is not the UUID.</p>
    #   @return [String]
    # @!attribute workflow_type
    #   <p>The run's workflow type. The <code>workflowType</code> must be specified if you are running a <code>READY2RUN</code> workflow. If you are running a <code>PRIVATE</code> workflow (default), you do not need to include the workflow type. </p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The ID of a run to duplicate.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>A service role for the run. The <code>roleArn</code> requires access to Amazon Web Services HealthOmics, S3, Cloudwatch logs, and EC2. An example <code>roleArn</code> is <code>arn:aws:iam::123456789012:role/omics-service-role-serviceRole-W8O1XMPL7QZ</code>. In this example, the AWS account ID is <code>123456789012</code> and the role name is <code>omics-service-role-serviceRole-W8O1XMPL7QZ</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name for the run. This is recommended to view and organize runs in the Amazon Web Services HealthOmics console and CloudWatch logs.</p>
    #   @return [String]
    # @!attribute cache_id
    #   <p>Identifier of the cache associated with this run. If you don't specify a cache ID, no task outputs are cached for this run.</p>
    #   @return [String]
    # @!attribute cache_behavior
    #   <p>The cache behavior for the run. You specify this value if you want to override the default behavior for the cache. You had set the default value when you created the cache. For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/how-run-cache.html#run-cache-behavior">Run cache behavior</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    #   @return [String]
    # @!attribute run_group_id
    #   <p>The run's group ID. Use a run group to cap the compute resources (and number of concurrent runs) for the runs that you add to the run group.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>Use the run priority (highest: 1) to establish the order of runs in a run group when you start a run. If multiple runs share the same priority, the run that was initiated first will have the higher priority. Runs that do not belong to a run group can be assigned a priority. The priorities of these runs are ranked among other runs that are not in a run group. For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/creating-run-groups.html#run-priority">Run priority</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute parameters
    #   <p>Parameters for the run. The run needs all required parameters and can include optional parameters. The run cannot include any parameters that are not defined in the parameter template. To retrieve parameters from the run, use the GetRun API operation.</p>
    #   @return [JSON]
    # @!attribute storage_capacity
    #   <p>The <code>STATIC</code> storage capacity (in gibibytes, GiB) for this run. The default run storage capacity is 1200 GiB. If your requested storage capacity is unavailable, the system rounds up the value to the nearest 1200 GiB multiple. If the requested storage capacity is still unavailable, the system rounds up the value to the nearest 2400 GiB multiple. This field is not required if the storage type is <code>DYNAMIC</code> (the system ignores any value that you enter).</p>
    #   @return [Integer]
    # @!attribute output_uri
    #   <p>An output S3 URI for the run. The S3 bucket must be in the same region as the workflow. The role ARN must have permission to write to this S3 bucket.</p>
    #   @return [String]
    # @!attribute log_level
    #   <p>A log level for the run.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags for the run. You can add up to 50 tags per run. For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/add-a-tag.html">Adding a tag</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_id
    #   <p>An idempotency token used to dedupe retry requests so that duplicate runs are not created.</p>
    #   @return [String]
    # @!attribute retention_mode
    #   <p>The retention mode for the run. The default value is <code>RETAIN</code>. </p> <p>Amazon Web Services HealthOmics stores a fixed number of runs that are available to the console and API. In the default mode (<code>RETAIN</code>), you need to remove runs manually when the number of run exceeds the maximum. If you set the retention mode to <code>REMOVE</code>, Amazon Web Services HealthOmics automatically removes runs (that have mode set to <code>REMOVE</code>) when the number of run exceeds the maximum. All run logs are available in CloudWatch logs, if you need information about a run that is no longer available to the API.</p> <p>For more information about retention mode, see <a href="https://docs.aws.amazon.com/omics/latest/dev/starting-a-run.html">Specifying run retention mode</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    #   @return [String]
    # @!attribute storage_type
    #   <p>The storage type for the run. If you set the storage type to <code>DYNAMIC</code>, Amazon Web Services HealthOmics dynamically scales the storage up or down, based on file system utilization. By default, the run uses <code>STATIC</code> storage type, which allocates a fixed amount of storage. For more information about <code>DYNAMIC</code> and <code>STATIC</code> storage, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflows-run-types.html">Run storage types</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    #   @return [String]
    # @!attribute workflow_owner_id
    #   <p>The 12-digit account ID of the workflow owner that is used for running a shared workflow. The workflow owner ID can be retrieved using the <code>GetShare</code> API operation. If you are the workflow owner, you do not need to include this ID.</p>
    #   @return [String]
    # @!attribute workflow_version_name
    #   <p>The name of the workflow version. Use workflow versions to track and organize changes to the workflow. If your workflow has multiple versions, the run uses the default version unless you specify a version name. To learn more, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html">Workflow versioning</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    #   @return [String]
    class StartRunRequest < Struct.new(
      nil,
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
      :workflow_version_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>Unique resource identifier for the run.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The run's ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The run's status.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The run's tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute uuid
    #   <p>The universally unique identifier for a run.</p>
    #   @return [String]
    # @!attribute run_output_uri
    #   <p>The destination for workflow outputs.</p>
    #   @return [String]
    class StartRunResponse < Struct.new(
      nil,
      :arn,
      :id,
      :status,
      :tags,
      :uuid,
      :run_output_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_name
    #   <p>The destination variant store for the job.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>A service role for the job.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Items to import.</p>
    #   @return [Array<Types::VariantImportItemSource>]
    # @!attribute run_left_normalization
    #   <p>The job's left normalization setting.</p>
    #   @return [Boolean]
    # @!attribute annotation_fields
    #   <p>The annotation schema generated by the parsed annotation data.</p>
    #   @return [Hash<String, String>]
    class StartVariantImportRequest < Struct.new(
      nil,
      :destination_name,
      :role_arn,
      :items,
      :run_left_normalization,
      :annotation_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #   @return [String]
    class StartVariantImportResponse < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for a store.</p>
    # @!attribute tsv_store_options
    #   <p>File settings for a TSV store.</p>
    #   @return [Types::TsvStoreOptions]
    class StoreOptions < Struct.new(
      :tsv_store_options,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TsvStoreOptions < StoreOptions; end
      class Unknown < StoreOptions; end
    end

    # @!attribute resource_arn
    #   <p>The resource's ARN.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags for the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A workflow run task.</p>
    # @!attribute task_id
    #   <p>The task's ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The task's status.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The task's name.</p>
    #   @return [String]
    # @!attribute cpus
    #   <p>The task's CPU count.</p>
    #   @return [Integer]
    # @!attribute cache_hit
    #   <p>Set to true if Amazon Web Services HealthOmics found a matching entry in the run cache for this task.</p>
    #   @return [Boolean]
    # @!attribute cache_s3_uri
    #   <p>The S3 URI of the cache location.</p>
    #   @return [String]
    # @!attribute memory
    #   <p>The task's memory use in gigabyes.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>When the task was created.</p>
    #   @return [Time]
    # @!attribute start_time
    #   <p>When the task started.</p>
    #   @return [Time]
    # @!attribute stop_time
    #   <p>When the task stopped.</p>
    #   @return [Time]
    # @!attribute gpus
    #   <p> The number of Graphics Processing Units (GPU) specified for the task. </p>
    #   @return [Integer]
    # @!attribute instance_type
    #   <p> The instance type for a task.</p>
    #   @return [String]
    class TaskListItem < Struct.new(
      nil,
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
      :instance_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Formatting options for a TSV file.</p>
    # @!attribute read_options
    #   <p>The file's read options.</p>
    #   @return [Types::ReadOptions]
    class TsvOptions < Struct.new(
      nil,
      :read_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>File settings for a TSV store.</p>
    # @!attribute annotation_type
    #   <p>The store's annotation type.</p>
    #   @return [String]
    # @!attribute format_to_header
    #   <p>The store's header key to column name mapping.</p>
    #   @return [Hash<String, String>]
    # @!attribute schema
    #   <p>The store's schema.</p>
    #   @return [Array<Hash<String, String>>]
    class TsvStoreOptions < Struct.new(
      nil,
      :annotation_type,
      :format_to_header,
      :schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The options for a TSV file. </p>
    # @!attribute annotation_type
    #   <p> The store version's annotation type. </p>
    #   @return [String]
    # @!attribute format_to_header
    #   <p> The annotation store version's header key to column name mapping. </p>
    #   @return [Hash<String, String>]
    # @!attribute schema
    #   <p> The TSV schema for an annotation store version. </p>
    #   @return [Array<Hash<String, String>>]
    class TsvVersionOptions < Struct.new(
      nil,
      :annotation_type,
      :format_to_header,
      :schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource's ARN.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Keys of tags to remove.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the store.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the store.</p>
    #   @return [String]
    class UpdateAnnotationStoreRequest < Struct.new(
      nil,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The store's ID.</p>
    #   @return [String]
    # @!attribute reference
    #   <p>The store's genome reference.</p>
    #   @return [Types::ReferenceItem]
    # @!attribute status
    #   <p>The store's status.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The store's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The store's description.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the store was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>When the store was updated.</p>
    #   @return [Time]
    # @!attribute store_options
    #   <p>Parsing options for the store.</p>
    #   @return [Types::StoreOptions]
    # @!attribute store_format
    #   <p>The annotation file format of the store.</p>
    #   @return [String]
    class UpdateAnnotationStoreResponse < Struct.new(
      nil,
      :id,
      :reference,
      :status,
      :name,
      :description,
      :creation_time,
      :update_time,
      :store_options,
      :store_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of an annotation store. </p>
    #   @return [String]
    # @!attribute version_name
    #   <p> The name of an annotation store version. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of an annotation store. </p>
    #   @return [String]
    class UpdateAnnotationStoreVersionRequest < Struct.new(
      nil,
      :name,
      :version_name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute store_id
    #   <p> The annotation store ID. </p>
    #   @return [String]
    # @!attribute id
    #   <p> The annotation store version ID. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of an annotation store version. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of an annotation store. </p>
    #   @return [String]
    # @!attribute version_name
    #   <p> The name of an annotation store version. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of an annotation store version. </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p> The time stamp for when an annotation store version was created. </p>
    #   @return [Time]
    # @!attribute update_time
    #   <p> The time stamp for when an annotation store version was updated. </p>
    #   @return [Time]
    class UpdateAnnotationStoreVersionResponse < Struct.new(
      nil,
      :store_id,
      :id,
      :status,
      :name,
      :version_name,
      :description,
      :creation_time,
      :update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_behavior
    #   <p>Update the default run cache behavior.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Update the run cache description.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the run cache you want to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Update the name of the run cache.</p>
    #   @return [String]
    class UpdateRunCacheRequest < Struct.new(
      nil,
      :cache_behavior,
      :description,
      :id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The group's ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name for the group.</p>
    #   @return [String]
    # @!attribute max_cpus
    #   <p>The maximum number of CPUs to use.</p>
    #   @return [Integer]
    # @!attribute max_runs
    #   <p>The maximum number of concurrent runs for the group.</p>
    #   @return [Integer]
    # @!attribute max_duration
    #   <p>A maximum run time for the group in minutes.</p>
    #   @return [Integer]
    # @!attribute max_gpus
    #   <p>The maximum GPUs that can be used by a run group.</p>
    #   @return [Integer]
    class UpdateRunGroupRequest < Struct.new(
      nil,
      :id,
      :name,
      :max_cpus,
      :max_runs,
      :max_duration,
      :max_gpus,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the sequence store.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name for the sequence store.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the sequence store.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>To ensure that requests don't run multiple times, specify a unique token for each request.</p>
    #   @return [String]
    # @!attribute fallback_location
    #   <p>The S3 URI of a bucket and folder to store Read Sets that fail to upload.</p>
    #   @return [String]
    # @!attribute propagated_set_level_tags
    #   <p>The tags keys to propagate to the S3 objects associated with read sets in the sequence store.</p>
    #   @return [Array<String>]
    # @!attribute s3_access_config
    #   <p>S3 access configuration parameters.</p>
    #   @return [Types::S3AccessConfig]
    class UpdateSequenceStoreRequest < Struct.new(
      nil,
      :id,
      :name,
      :description,
      :client_token,
      :fallback_location,
      :propagated_set_level_tags,
      :s3_access_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the sequence store.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the sequence store.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the sequence store.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the sequence store.</p>
    #   @return [String]
    # @!attribute sse_config
    #   <p>Server-side encryption (SSE) settings for a store.</p>
    #   @return [Types::SseConfig]
    # @!attribute creation_time
    #   <p>The time when the store was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The last-updated time of the Sequence Store.</p>
    #   @return [Time]
    # @!attribute propagated_set_level_tags
    #   <p>The tags keys to propagate to the S3 objects associated with read sets in the sequence store.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the sequence store.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message of the sequence store.</p>
    #   @return [String]
    # @!attribute fallback_location
    #   <p>The S3 URI of a bucket and folder to store Read Sets that fail to upload.</p>
    #   @return [String]
    # @!attribute s3_access
    #   <p>The S3 access metadata of the sequence store.</p>
    #   @return [Types::SequenceStoreS3Access]
    # @!attribute e_tag_algorithm_family
    #   <p>The ETag algorithm family to use on ingested read sets.</p>
    #   @return [String]
    class UpdateSequenceStoreResponse < Struct.new(
      nil,
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
      :e_tag_algorithm_family,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the store.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the store.</p>
    #   @return [String]
    class UpdateVariantStoreRequest < Struct.new(
      nil,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The store's ID.</p>
    #   @return [String]
    # @!attribute reference
    #   <p>The store's genome reference.</p>
    #   @return [Types::ReferenceItem]
    # @!attribute status
    #   <p>The store's status.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The store's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The store's description.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the store was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>When the store was updated.</p>
    #   @return [Time]
    class UpdateVariantStoreResponse < Struct.new(
      nil,
      :id,
      :reference,
      :status,
      :name,
      :description,
      :creation_time,
      :update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The workflow's ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name for the workflow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the workflow.</p>
    #   @return [String]
    # @!attribute storage_type
    #   <p>The default storage type for runs that use this workflow. STATIC storage allocates a fixed amount of storage. DYNAMIC storage dynamically scales the storage up or down, based on file system utilization. For more information about static and dynamic storage, see <a href="https://docs.aws.amazon.com/omics/latest/dev/Using-workflows.html">Running workflows</a> in the <i>Amazon Web Services HealthOmics User Guide</i>. </p>
    #   @return [String]
    # @!attribute storage_capacity
    #   <p>The default static storage capacity (in gibibytes) for runs that use this workflow or workflow version. </p>
    #   @return [Integer]
    # @!attribute readme_markdown
    #   <p>The markdown content for the workflow's README file. This provides documentation and usage information for users of the workflow.</p>
    #   @return [String]
    class UpdateWorkflowRequest < Struct.new(
      nil,
      :id,
      :name,
      :description,
      :storage_type,
      :storage_capacity,
      :readme_markdown,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_id
    #   <p>The workflow's ID. The <code>workflowId</code> is not the UUID.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>The name of the workflow version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the workflow version.</p>
    #   @return [String]
    # @!attribute storage_type
    #   <p>The default storage type for runs that use this workflow version. The <code>storageType</code> can be overridden at run time. <code>DYNAMIC</code> storage dynamically scales the storage up or down, based on file system utilization. STATIC storage allocates a fixed amount of storage. For more information about dynamic and static storage types, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflows-run-types.html">Run storage types</a> in the <i>in the <i>Amazon Web Services HealthOmics User Guide</i> </i>.</p>
    #   @return [String]
    # @!attribute storage_capacity
    #   <p>The default static storage capacity (in gibibytes) for runs that use this workflow version. The <code>storageCapacity</code> can be overwritten at run time. The storage capacity is not required for runs with a <code>DYNAMIC</code> storage type.</p>
    #   @return [Integer]
    # @!attribute readme_markdown
    #   <p>The markdown content for the workflow version's README file. This provides documentation and usage information for users of this specific workflow version.</p>
    #   @return [String]
    class UpdateWorkflowVersionRequest < Struct.new(
      nil,
      :workflow_id,
      :version_name,
      :description,
      :storage_type,
      :storage_capacity,
      :readme_markdown,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sequence_store_id
    #   <p>The Sequence Store ID used for the multipart upload.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>The ID for the initiated multipart upload.</p>
    #   @return [String]
    # @!attribute part_source
    #   <p>The source file for an upload part.</p>
    #   @return [String]
    # @!attribute part_number
    #   <p>The number of the part being uploaded.</p>
    #   @return [Integer]
    # @!attribute payload
    #   <p>The read set data to upload for a part.</p>
    #   @return [String]
    class UploadReadSetPartRequest < Struct.new(
      nil,
      :sequence_store_id,
      :upload_id,
      :part_source,
      :part_number,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute checksum
    #   <p>An identifier used to confirm that parts are being added to the intended upload.</p>
    #   @return [String]
    class UploadReadSetPartResponse < Struct.new(
      nil,
      :checksum,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an AWS service.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an imported variant item.</p>
    # @!attribute source
    #   <p>The source file's location in Amazon S3.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The item's job status.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p> A message that provides additional context about a job </p>
    #   @return [String]
    class VariantImportItemDetail < Struct.new(
      nil,
      :source,
      :job_status,
      :status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A imported variant item's source.</p>
    # @!attribute source
    #   <p>The source file's location in Amazon S3.</p>
    #   @return [String]
    class VariantImportItemSource < Struct.new(
      nil,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A variant import job.</p>
    # @!attribute id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute destination_name
    #   <p>The job's destination variant store.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The job's service role ARN.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>When the job was updated.</p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p>When the job completed.</p>
    #   @return [Time]
    # @!attribute run_left_normalization
    #   <p>The job's left normalization setting.</p>
    #   @return [Boolean]
    # @!attribute annotation_fields
    #   <p> The annotation schema generated by the parsed annotation data. </p>
    #   @return [Hash<String, String>]
    class VariantImportJobItem < Struct.new(
      nil,
      :id,
      :destination_name,
      :role_arn,
      :status,
      :creation_time,
      :update_time,
      :completion_time,
      :run_left_normalization,
      :annotation_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:run_left_normalization] = false unless options.key?(:run_left_normalization)
        super
      end
    end

    # <p>A variant store.</p>
    # @!attribute id
    #   <p>The store's ID.</p>
    #   @return [String]
    # @!attribute reference
    #   <p>The store's genome reference.</p>
    #   @return [Types::ReferenceItem]
    # @!attribute status
    #   <p>The store's status.</p>
    #   @return [String]
    # @!attribute store_arn
    #   <p>The store's ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The store's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The store's description.</p>
    #   @return [String]
    # @!attribute sse_config
    #   <p>The store's server-side encryption (SSE) settings.</p>
    #   @return [Types::SseConfig]
    # @!attribute creation_time
    #   <p>When the store was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>When the store was updated.</p>
    #   @return [Time]
    # @!attribute status_message
    #   <p>The store's status message.</p>
    #   @return [String]
    # @!attribute store_size_bytes
    #   <p>The store's size in bytes.</p>
    #   @return [Integer]
    class VariantStoreItem < Struct.new(
      nil,
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
      :store_size_bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Formatting options for a VCF file.</p>
    # @!attribute ignore_qual_field
    #   <p>The file's ignore qual field setting.</p>
    #   @return [Boolean]
    # @!attribute ignore_filter_field
    #   <p>The file's ignore filter field setting.</p>
    #   @return [Boolean]
    class VcfOptions < Struct.new(
      nil,
      :ignore_qual_field,
      :ignore_filter_field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The error preventing deletion of the annotation store version. </p>
    # @!attribute version_name
    #   <p> The name given to an annotation store version. </p>
    #   @return [String]
    # @!attribute message
    #   <p> The message explaining the error in annotation store deletion. </p>
    #   @return [String]
    class VersionDeleteError < Struct.new(
      nil,
      :version_name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The options for an annotation store version. </p>
    # @!attribute tsv_version_options
    #   <p> File settings for a version of a TSV store. </p>
    #   @return [Types::TsvVersionOptions]
    class VersionOptions < Struct.new(
      :tsv_version_options,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TsvVersionOptions < VersionOptions; end
      class Unknown < VersionOptions; end
    end

    # <p>A workflow.</p>
    # @!attribute arn
    #   <p>The workflow's ARN.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The workflow's ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The workflow's name.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The workflow's status.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The workflow's type.</p>
    #   @return [String]
    # @!attribute digest
    #   <p>The workflow's digest.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the workflow was created.</p>
    #   @return [Time]
    # @!attribute metadata
    #   <p> Any metadata available for workflow. The information listed may vary depending on the workflow, and there may also be no metadata to return. </p>
    #   @return [Hash<String, String>]
    class WorkflowListItem < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :status,
      :type,
      :digest,
      :creation_time,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A workflow parameter.</p>
    # @!attribute description
    #   <p>The parameter's description.</p>
    #   @return [String]
    # @!attribute optional
    #   <p>Whether the parameter is optional.</p>
    #   @return [Boolean]
    class WorkflowParameter < Struct.new(
      nil,
      :description,
      :optional,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of workflow version items.</p>
    # @!attribute arn
    #   <p>ARN of the workflow version.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The workflow's ID.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>The name of the workflow version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the workflow version.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the workflow version.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the workflow version.</p>
    #   @return [String]
    # @!attribute digest
    #   <p>The digist of the workflow version.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time of the workflow version.</p>
    #   @return [Time]
    # @!attribute metadata
    #   <p>Metadata for the workflow version.</p>
    #   @return [Hash<String, String>]
    class WorkflowVersionListItem < Struct.new(
      nil,
      :arn,
      :workflow_id,
      :version_name,
      :description,
      :status,
      :type,
      :digest,
      :creation_time,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
