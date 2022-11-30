# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BackupStorage
  module Types

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object
    #
    # @!attribute [rw] name
    #   Object name
    #   @return [String]
    #
    # @!attribute [rw] chunks_count
    #   Number of chunks in object
    #   @return [Integer]
    #
    # @!attribute [rw] metadata_string
    #   Metadata string associated with the Object
    #   @return [String]
    #
    # @!attribute [rw] object_checksum
    #   Object checksum
    #   @return [String]
    #
    # @!attribute [rw] object_checksum_algorithm
    #   Checksum algorithm
    #   @return [String]
    #
    # @!attribute [rw] object_token
    #   Object token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/BackupObject AWS API Documentation
    #
    class BackupObject < Struct.new(
      :name,
      :chunks_count,
      :metadata_string,
      :object_checksum,
      :object_checksum_algorithm,
      :object_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Chunk
    #
    # @!attribute [rw] index
    #   Chunk index
    #   @return [Integer]
    #
    # @!attribute [rw] length
    #   Chunk length
    #   @return [Integer]
    #
    # @!attribute [rw] checksum
    #   Chunk checksum
    #   @return [String]
    #
    # @!attribute [rw] checksum_algorithm
    #   Checksum algorithm
    #   @return [String]
    #
    # @!attribute [rw] chunk_token
    #   Chunk token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/Chunk AWS API Documentation
    #
    class Chunk < Struct.new(
      :index,
      :length,
      :checksum,
      :checksum_algorithm,
      :chunk_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Non-retryable exception. Attempted to create already existing object
    # or chunk. This message contains a checksum of already presented data.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   Data checksum used
    #   @return [String]
    #
    # @!attribute [rw] checksum_algorithm
    #   Checksum algorithm used
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/DataAlreadyExistsException AWS API Documentation
    #
    class DataAlreadyExistsException < Struct.new(
      :message,
      :checksum,
      :checksum_algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_job_id
    #   Backup job Id for the in-progress backup.
    #   @return [String]
    #
    # @!attribute [rw] object_name
    #   The name of the Object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/DeleteObjectInput AWS API Documentation
    #
    class DeleteObjectInput < Struct.new(
      :backup_job_id,
      :object_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_job_id
    #   Storage job id
    #   @return [String]
    #
    # @!attribute [rw] chunk_token
    #   Chunk token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/GetChunkInput AWS API Documentation
    #
    class GetChunkInput < Struct.new(
      :storage_job_id,
      :chunk_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data
    #   Chunk data
    #   @return [IO]
    #
    # @!attribute [rw] length
    #   Data length
    #   @return [Integer]
    #
    # @!attribute [rw] checksum
    #   Data checksum
    #   @return [String]
    #
    # @!attribute [rw] checksum_algorithm
    #   Checksum algorithm
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/GetChunkOutput AWS API Documentation
    #
    class GetChunkOutput < Struct.new(
      :data,
      :length,
      :checksum,
      :checksum_algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_job_id
    #   Backup job id for the in-progress backup.
    #   @return [String]
    #
    # @!attribute [rw] object_token
    #   Object token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/GetObjectMetadataInput AWS API Documentation
    #
    class GetObjectMetadataInput < Struct.new(
      :storage_job_id,
      :object_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metadata_string
    #   Metadata string.
    #   @return [String]
    #
    # @!attribute [rw] metadata_blob
    #   Metadata blob.
    #   @return [IO]
    #
    # @!attribute [rw] metadata_blob_length
    #   The size of MetadataBlob.
    #   @return [Integer]
    #
    # @!attribute [rw] metadata_blob_checksum
    #   MetadataBlob checksum.
    #   @return [String]
    #
    # @!attribute [rw] metadata_blob_checksum_algorithm
    #   Checksum algorithm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/GetObjectMetadataOutput AWS API Documentation
    #
    class GetObjectMetadataOutput < Struct.new(
      :metadata_string,
      :metadata_blob,
      :metadata_blob_length,
      :metadata_blob_checksum,
      :metadata_blob_checksum_algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

    # Non-retryable exception, indicates client error (wrong argument passed
    # to API). See exception message for details.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/IllegalArgumentException AWS API Documentation
    #
    class IllegalArgumentException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Non-retryable exception. Indicates the KMS key usage is incorrect. See
    # exception message for details.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/KMSInvalidKeyUsageException AWS API Documentation
    #
    class KMSInvalidKeyUsageException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_job_id
    #   Storage job id
    #   @return [String]
    #
    # @!attribute [rw] object_token
    #   Object token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of chunks
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/ListChunksInput AWS API Documentation
    #
    class ListChunksInput < Struct.new(
      :storage_job_id,
      :object_token,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] chunk_list
    #   List of chunks
    #   @return [Array<Types::Chunk>]
    #
    # @!attribute [rw] next_token
    #   Pagination token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/ListChunksOutput AWS API Documentation
    #
    class ListChunksOutput < Struct.new(
      :chunk_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_job_id
    #   Storage job id
    #   @return [String]
    #
    # @!attribute [rw] starting_object_name
    #   Optional, specifies the starting Object name to list from. Ignored
    #   if NextToken is not NULL
    #   @return [String]
    #
    # @!attribute [rw] starting_object_prefix
    #   Optional, specifies the starting Object prefix to list from. Ignored
    #   if NextToken is not NULL
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum objects count
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token
    #   @return [String]
    #
    # @!attribute [rw] created_before
    #   (Optional) Created before filter
    #   @return [Time]
    #
    # @!attribute [rw] created_after
    #   (Optional) Created after filter
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/ListObjectsInput AWS API Documentation
    #
    class ListObjectsInput < Struct.new(
      :storage_job_id,
      :starting_object_name,
      :starting_object_prefix,
      :max_results,
      :next_token,
      :created_before,
      :created_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] object_list
    #   Object list
    #   @return [Array<Types::BackupObject>]
    #
    # @!attribute [rw] next_token
    #   Pagination token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/ListObjectsOutput AWS API Documentation
    #
    class ListObjectsOutput < Struct.new(
      :object_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retryalble exception. Indicated issues while reading an input stream
    # due to the networking issues or connection drop on the client side.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/NotReadableInputStreamException AWS API Documentation
    #
    class NotReadableInputStreamException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_job_id
    #   Backup job Id for the in-progress backup
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   Upload Id for the in-progress upload
    #   @return [String]
    #
    # @!attribute [rw] object_checksum
    #   Object checksum
    #   @return [String]
    #
    # @!attribute [rw] object_checksum_algorithm
    #   Checksum algorithm
    #   @return [String]
    #
    # @!attribute [rw] metadata_string
    #   Optional metadata associated with an Object. Maximum string length
    #   is 256 bytes.
    #   @return [String]
    #
    # @!attribute [rw] metadata_blob
    #   Optional metadata associated with an Object. Maximum length is 4MB.
    #   @return [IO]
    #
    # @!attribute [rw] metadata_blob_length
    #   The size of MetadataBlob.
    #   @return [Integer]
    #
    # @!attribute [rw] metadata_blob_checksum
    #   Checksum of MetadataBlob.
    #   @return [String]
    #
    # @!attribute [rw] metadata_blob_checksum_algorithm
    #   Checksum algorithm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/NotifyObjectCompleteInput AWS API Documentation
    #
    class NotifyObjectCompleteInput < Struct.new(
      :backup_job_id,
      :upload_id,
      :object_checksum,
      :object_checksum_algorithm,
      :metadata_string,
      :metadata_blob,
      :metadata_blob_length,
      :metadata_blob_checksum,
      :metadata_blob_checksum_algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] object_checksum
    #   Object checksum
    #   @return [String]
    #
    # @!attribute [rw] object_checksum_algorithm
    #   Checksum algorithm
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/NotifyObjectCompleteOutput AWS API Documentation
    #
    class NotifyObjectCompleteOutput < Struct.new(
      :object_checksum,
      :object_checksum_algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_job_id
    #   Backup job Id for the in-progress backup.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   Upload Id for the in-progress upload.
    #   @return [String]
    #
    # @!attribute [rw] chunk_index
    #   Describes this chunk's position relative to the other chunks
    #   @return [Integer]
    #
    # @!attribute [rw] data
    #   Data to be uploaded
    #   @return [IO]
    #
    # @!attribute [rw] length
    #   Data length
    #   @return [Integer]
    #
    # @!attribute [rw] checksum
    #   Data checksum
    #   @return [String]
    #
    # @!attribute [rw] checksum_algorithm
    #   Checksum algorithm
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/PutChunkInput AWS API Documentation
    #
    class PutChunkInput < Struct.new(
      :backup_job_id,
      :upload_id,
      :chunk_index,
      :data,
      :length,
      :checksum,
      :checksum_algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] chunk_checksum
    #   Chunk checksum
    #   @return [String]
    #
    # @!attribute [rw] chunk_checksum_algorithm
    #   Checksum algorithm
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/PutChunkOutput AWS API Documentation
    #
    class PutChunkOutput < Struct.new(
      :chunk_checksum,
      :chunk_checksum_algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_job_id
    #   Backup job Id for the in-progress backup.
    #   @return [String]
    #
    # @!attribute [rw] object_name
    #   The name of the Object to be uploaded.
    #   @return [String]
    #
    # @!attribute [rw] metadata_string
    #   Store user defined metadata like backup checksum, disk ids, restore
    #   metadata etc.
    #   @return [String]
    #
    # @!attribute [rw] inline_chunk
    #   Inline chunk data to be uploaded.
    #   @return [IO]
    #
    # @!attribute [rw] inline_chunk_length
    #   Length of the inline chunk data.
    #   @return [Integer]
    #
    # @!attribute [rw] inline_chunk_checksum
    #   Inline chunk checksum
    #   @return [String]
    #
    # @!attribute [rw] inline_chunk_checksum_algorithm
    #   Inline chunk checksum algorithm
    #   @return [String]
    #
    # @!attribute [rw] object_checksum
    #   object checksum
    #   @return [String]
    #
    # @!attribute [rw] object_checksum_algorithm
    #   object checksum algorithm
    #   @return [String]
    #
    # @!attribute [rw] throw_on_duplicate
    #   Throw an exception if Object name is already exist.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/PutObjectInput AWS API Documentation
    #
    class PutObjectInput < Struct.new(
      :backup_job_id,
      :object_name,
      :metadata_string,
      :inline_chunk,
      :inline_chunk_length,
      :inline_chunk_checksum,
      :inline_chunk_checksum_algorithm,
      :object_checksum,
      :object_checksum_algorithm,
      :throw_on_duplicate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] inline_chunk_checksum
    #   Inline chunk checksum
    #   @return [String]
    #
    # @!attribute [rw] inline_chunk_checksum_algorithm
    #   Inline chunk checksum algorithm
    #   @return [String]
    #
    # @!attribute [rw] object_checksum
    #   object checksum
    #   @return [String]
    #
    # @!attribute [rw] object_checksum_algorithm
    #   object checksum algorithm
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/PutObjectOutput AWS API Documentation
    #
    class PutObjectOutput < Struct.new(
      :inline_chunk_checksum,
      :inline_chunk_checksum_algorithm,
      :object_checksum,
      :object_checksum_algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

    # Non-retryable exception. Attempted to make an operation on
    # non-existing or expired resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retryable exception. In general indicates internal failure that can be
    # fixed by retry.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/RetryableException AWS API Documentation
    #
    class RetryableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Deprecated. To be removed from the model.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/ServiceInternalException AWS API Documentation
    #
    class ServiceInternalException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retryable exception, indicates internal server error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_job_id
    #   Backup job Id for the in-progress backup
    #   @return [String]
    #
    # @!attribute [rw] object_name
    #   Name for the object.
    #   @return [String]
    #
    # @!attribute [rw] throw_on_duplicate
    #   Throw an exception if Object name is already exist.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/StartObjectInput AWS API Documentation
    #
    class StartObjectInput < Struct.new(
      :backup_job_id,
      :object_name,
      :throw_on_duplicate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] upload_id
    #   Upload Id for a given upload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/StartObjectOutput AWS API Documentation
    #
    class StartObjectOutput < Struct.new(
      :upload_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Increased rate over throttling limits. Can be retried with exponential
    # backoff.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
