# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BackupStorage
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    BackupObject = Shapes::StructureShape.new(name: 'BackupObject')
    Chunk = Shapes::StructureShape.new(name: 'Chunk')
    ChunkList = Shapes::ListShape.new(name: 'ChunkList')
    DataAlreadyExistsException = Shapes::StructureShape.new(name: 'DataAlreadyExistsException')
    DataChecksumAlgorithm = Shapes::StringShape.new(name: 'DataChecksumAlgorithm')
    DeleteObjectInput = Shapes::StructureShape.new(name: 'DeleteObjectInput')
    GetChunkInput = Shapes::StructureShape.new(name: 'GetChunkInput')
    GetChunkOutput = Shapes::StructureShape.new(name: 'GetChunkOutput')
    GetObjectMetadataInput = Shapes::StructureShape.new(name: 'GetObjectMetadataInput')
    GetObjectMetadataOutput = Shapes::StructureShape.new(name: 'GetObjectMetadataOutput')
    IllegalArgumentException = Shapes::StructureShape.new(name: 'IllegalArgumentException')
    KMSInvalidKeyUsageException = Shapes::StructureShape.new(name: 'KMSInvalidKeyUsageException')
    ListChunksInput = Shapes::StructureShape.new(name: 'ListChunksInput')
    ListChunksOutput = Shapes::StructureShape.new(name: 'ListChunksOutput')
    ListObjectsInput = Shapes::StructureShape.new(name: 'ListObjectsInput')
    ListObjectsOutput = Shapes::StructureShape.new(name: 'ListObjectsOutput')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MetadataString = Shapes::StringShape.new(name: 'MetadataString')
    NotReadableInputStreamException = Shapes::StructureShape.new(name: 'NotReadableInputStreamException')
    NotifyObjectCompleteInput = Shapes::StructureShape.new(name: 'NotifyObjectCompleteInput')
    NotifyObjectCompleteOutput = Shapes::StructureShape.new(name: 'NotifyObjectCompleteOutput')
    ObjectList = Shapes::ListShape.new(name: 'ObjectList')
    OptionalLong = Shapes::IntegerShape.new(name: 'OptionalLong')
    PayloadBlob = Shapes::BlobShape.new(name: 'PayloadBlob', streaming: true)
    PutChunkInput = Shapes::StructureShape.new(name: 'PutChunkInput')
    PutChunkOutput = Shapes::StructureShape.new(name: 'PutChunkOutput')
    PutObjectInput = Shapes::StructureShape.new(name: 'PutObjectInput')
    PutObjectOutput = Shapes::StructureShape.new(name: 'PutObjectOutput')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetryableException = Shapes::StructureShape.new(name: 'RetryableException')
    ServiceErrorMessage = Shapes::StringShape.new(name: 'ServiceErrorMessage')
    ServiceInternalException = Shapes::StructureShape.new(name: 'ServiceInternalException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    StartObjectInput = Shapes::StructureShape.new(name: 'StartObjectInput')
    StartObjectOutput = Shapes::StructureShape.new(name: 'StartObjectOutput')
    SummaryChecksumAlgorithm = Shapes::StringShape.new(name: 'SummaryChecksumAlgorithm')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    boolean = Shapes::BooleanShape.new(name: 'boolean')
    long = Shapes::IntegerShape.new(name: 'long')
    string = Shapes::StringShape.new(name: 'string')
    timestamp = Shapes::TimestampShape.new(name: 'timestamp')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ServiceErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    BackupObject.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Name"))
    BackupObject.add_member(:chunks_count, Shapes::ShapeRef.new(shape: OptionalLong, location_name: "ChunksCount"))
    BackupObject.add_member(:metadata_string, Shapes::ShapeRef.new(shape: string, location_name: "MetadataString"))
    BackupObject.add_member(:object_checksum, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ObjectChecksum"))
    BackupObject.add_member(:object_checksum_algorithm, Shapes::ShapeRef.new(shape: SummaryChecksumAlgorithm, required: true, location_name: "ObjectChecksumAlgorithm"))
    BackupObject.add_member(:object_token, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ObjectToken"))
    BackupObject.struct_class = Types::BackupObject

    Chunk.add_member(:index, Shapes::ShapeRef.new(shape: long, required: true, location_name: "Index"))
    Chunk.add_member(:length, Shapes::ShapeRef.new(shape: long, required: true, location_name: "Length"))
    Chunk.add_member(:checksum, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Checksum"))
    Chunk.add_member(:checksum_algorithm, Shapes::ShapeRef.new(shape: DataChecksumAlgorithm, required: true, location_name: "ChecksumAlgorithm"))
    Chunk.add_member(:chunk_token, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ChunkToken"))
    Chunk.struct_class = Types::Chunk

    ChunkList.member = Shapes::ShapeRef.new(shape: Chunk)

    DataAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    DataAlreadyExistsException.add_member(:checksum, Shapes::ShapeRef.new(shape: string, location_name: "Checksum"))
    DataAlreadyExistsException.add_member(:checksum_algorithm, Shapes::ShapeRef.new(shape: string, location_name: "ChecksumAlgorithm"))
    DataAlreadyExistsException.struct_class = Types::DataAlreadyExistsException

    DeleteObjectInput.add_member(:backup_job_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "jobId"))
    DeleteObjectInput.add_member(:object_name, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "objectName"))
    DeleteObjectInput.struct_class = Types::DeleteObjectInput

    GetChunkInput.add_member(:storage_job_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "jobId"))
    GetChunkInput.add_member(:chunk_token, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "chunkToken"))
    GetChunkInput.struct_class = Types::GetChunkInput

    GetChunkOutput.add_member(:data, Shapes::ShapeRef.new(shape: PayloadBlob, required: true, location_name: "Data"))
    GetChunkOutput.add_member(:length, Shapes::ShapeRef.new(shape: long, required: true, location: "header", location_name: "x-amz-data-length"))
    GetChunkOutput.add_member(:checksum, Shapes::ShapeRef.new(shape: string, required: true, location: "header", location_name: "x-amz-checksum"))
    GetChunkOutput.add_member(:checksum_algorithm, Shapes::ShapeRef.new(shape: DataChecksumAlgorithm, required: true, location: "header", location_name: "x-amz-checksum-algorithm"))
    GetChunkOutput.struct_class = Types::GetChunkOutput
    GetChunkOutput[:payload] = :data
    GetChunkOutput[:payload_member] = GetChunkOutput.member(:data)

    GetObjectMetadataInput.add_member(:storage_job_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "jobId"))
    GetObjectMetadataInput.add_member(:object_token, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "objectToken"))
    GetObjectMetadataInput.struct_class = Types::GetObjectMetadataInput

    GetObjectMetadataOutput.add_member(:metadata_string, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "x-amz-metadata-string"))
    GetObjectMetadataOutput.add_member(:metadata_blob, Shapes::ShapeRef.new(shape: PayloadBlob, location_name: "MetadataBlob"))
    GetObjectMetadataOutput.add_member(:metadata_blob_length, Shapes::ShapeRef.new(shape: long, location: "header", location_name: "x-amz-data-length"))
    GetObjectMetadataOutput.add_member(:metadata_blob_checksum, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "x-amz-checksum"))
    GetObjectMetadataOutput.add_member(:metadata_blob_checksum_algorithm, Shapes::ShapeRef.new(shape: DataChecksumAlgorithm, location: "header", location_name: "x-amz-checksum-algorithm"))
    GetObjectMetadataOutput.struct_class = Types::GetObjectMetadataOutput
    GetObjectMetadataOutput[:payload] = :metadata_blob
    GetObjectMetadataOutput[:payload_member] = GetObjectMetadataOutput.member(:metadata_blob)

    IllegalArgumentException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    IllegalArgumentException.struct_class = Types::IllegalArgumentException

    KMSInvalidKeyUsageException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    KMSInvalidKeyUsageException.struct_class = Types::KMSInvalidKeyUsageException

    ListChunksInput.add_member(:storage_job_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "jobId"))
    ListChunksInput.add_member(:object_token, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "objectToken"))
    ListChunksInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListChunksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "next-token"))
    ListChunksInput.struct_class = Types::ListChunksInput

    ListChunksOutput.add_member(:chunk_list, Shapes::ShapeRef.new(shape: ChunkList, required: true, location_name: "ChunkList"))
    ListChunksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListChunksOutput.struct_class = Types::ListChunksOutput

    ListObjectsInput.add_member(:storage_job_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "jobId"))
    ListObjectsInput.add_member(:starting_object_name, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "starting-object-name"))
    ListObjectsInput.add_member(:starting_object_prefix, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "starting-object-prefix"))
    ListObjectsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListObjectsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "next-token"))
    ListObjectsInput.add_member(:created_before, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "created-before"))
    ListObjectsInput.add_member(:created_after, Shapes::ShapeRef.new(shape: timestamp, location: "querystring", location_name: "created-after"))
    ListObjectsInput.struct_class = Types::ListObjectsInput

    ListObjectsOutput.add_member(:object_list, Shapes::ShapeRef.new(shape: ObjectList, required: true, location_name: "ObjectList"))
    ListObjectsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListObjectsOutput.struct_class = Types::ListObjectsOutput

    NotReadableInputStreamException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    NotReadableInputStreamException.struct_class = Types::NotReadableInputStreamException

    NotifyObjectCompleteInput.add_member(:backup_job_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "jobId"))
    NotifyObjectCompleteInput.add_member(:upload_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "uploadId"))
    NotifyObjectCompleteInput.add_member(:object_checksum, Shapes::ShapeRef.new(shape: string, required: true, location: "querystring", location_name: "checksum"))
    NotifyObjectCompleteInput.add_member(:object_checksum_algorithm, Shapes::ShapeRef.new(shape: SummaryChecksumAlgorithm, required: true, location: "querystring", location_name: "checksum-algorithm"))
    NotifyObjectCompleteInput.add_member(:metadata_string, Shapes::ShapeRef.new(shape: MetadataString, location: "querystring", location_name: "metadata-string"))
    NotifyObjectCompleteInput.add_member(:metadata_blob, Shapes::ShapeRef.new(shape: PayloadBlob, location_name: "MetadataBlob"))
    NotifyObjectCompleteInput.add_member(:metadata_blob_length, Shapes::ShapeRef.new(shape: long, location: "querystring", location_name: "metadata-blob-length"))
    NotifyObjectCompleteInput.add_member(:metadata_blob_checksum, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "metadata-checksum"))
    NotifyObjectCompleteInput.add_member(:metadata_blob_checksum_algorithm, Shapes::ShapeRef.new(shape: DataChecksumAlgorithm, location: "querystring", location_name: "metadata-checksum-algorithm"))
    NotifyObjectCompleteInput.struct_class = Types::NotifyObjectCompleteInput
    NotifyObjectCompleteInput[:payload] = :metadata_blob
    NotifyObjectCompleteInput[:payload_member] = NotifyObjectCompleteInput.member(:metadata_blob)

    NotifyObjectCompleteOutput.add_member(:object_checksum, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ObjectChecksum"))
    NotifyObjectCompleteOutput.add_member(:object_checksum_algorithm, Shapes::ShapeRef.new(shape: SummaryChecksumAlgorithm, required: true, location_name: "ObjectChecksumAlgorithm"))
    NotifyObjectCompleteOutput.struct_class = Types::NotifyObjectCompleteOutput

    ObjectList.member = Shapes::ShapeRef.new(shape: BackupObject)

    PutChunkInput.add_member(:backup_job_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "jobId"))
    PutChunkInput.add_member(:upload_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "uploadId"))
    PutChunkInput.add_member(:chunk_index, Shapes::ShapeRef.new(shape: long, required: true, location: "uri", location_name: "chunkIndex"))
    PutChunkInput.add_member(:data, Shapes::ShapeRef.new(shape: PayloadBlob, required: true, location_name: "Data"))
    PutChunkInput.add_member(:length, Shapes::ShapeRef.new(shape: long, required: true, location: "querystring", location_name: "length"))
    PutChunkInput.add_member(:checksum, Shapes::ShapeRef.new(shape: string, required: true, location: "querystring", location_name: "checksum"))
    PutChunkInput.add_member(:checksum_algorithm, Shapes::ShapeRef.new(shape: DataChecksumAlgorithm, required: true, location: "querystring", location_name: "checksum-algorithm"))
    PutChunkInput.struct_class = Types::PutChunkInput
    PutChunkInput[:payload] = :data
    PutChunkInput[:payload_member] = PutChunkInput.member(:data)

    PutChunkOutput.add_member(:chunk_checksum, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ChunkChecksum"))
    PutChunkOutput.add_member(:chunk_checksum_algorithm, Shapes::ShapeRef.new(shape: DataChecksumAlgorithm, required: true, location_name: "ChunkChecksumAlgorithm"))
    PutChunkOutput.struct_class = Types::PutChunkOutput

    PutObjectInput.add_member(:backup_job_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "jobId"))
    PutObjectInput.add_member(:object_name, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "objectName"))
    PutObjectInput.add_member(:metadata_string, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "metadata-string"))
    PutObjectInput.add_member(:inline_chunk, Shapes::ShapeRef.new(shape: PayloadBlob, location_name: "InlineChunk"))
    PutObjectInput.add_member(:inline_chunk_length, Shapes::ShapeRef.new(shape: long, location: "querystring", location_name: "length"))
    PutObjectInput.add_member(:inline_chunk_checksum, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "checksum"))
    PutObjectInput.add_member(:inline_chunk_checksum_algorithm, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "checksum-algorithm"))
    PutObjectInput.add_member(:object_checksum, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "object-checksum"))
    PutObjectInput.add_member(:object_checksum_algorithm, Shapes::ShapeRef.new(shape: SummaryChecksumAlgorithm, location: "querystring", location_name: "object-checksum-algorithm"))
    PutObjectInput.add_member(:throw_on_duplicate, Shapes::ShapeRef.new(shape: boolean, location: "querystring", location_name: "throwOnDuplicate"))
    PutObjectInput.struct_class = Types::PutObjectInput
    PutObjectInput[:payload] = :inline_chunk
    PutObjectInput[:payload_member] = PutObjectInput.member(:inline_chunk)

    PutObjectOutput.add_member(:inline_chunk_checksum, Shapes::ShapeRef.new(shape: string, required: true, location_name: "InlineChunkChecksum"))
    PutObjectOutput.add_member(:inline_chunk_checksum_algorithm, Shapes::ShapeRef.new(shape: DataChecksumAlgorithm, required: true, location_name: "InlineChunkChecksumAlgorithm"))
    PutObjectOutput.add_member(:object_checksum, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ObjectChecksum"))
    PutObjectOutput.add_member(:object_checksum_algorithm, Shapes::ShapeRef.new(shape: SummaryChecksumAlgorithm, required: true, location_name: "ObjectChecksumAlgorithm"))
    PutObjectOutput.struct_class = Types::PutObjectOutput

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RetryableException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    RetryableException.struct_class = Types::RetryableException

    ServiceInternalException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    ServiceInternalException.struct_class = Types::ServiceInternalException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StartObjectInput.add_member(:backup_job_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "jobId"))
    StartObjectInput.add_member(:object_name, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "objectName"))
    StartObjectInput.add_member(:throw_on_duplicate, Shapes::ShapeRef.new(shape: boolean, location_name: "ThrowOnDuplicate"))
    StartObjectInput.struct_class = Types::StartObjectInput

    StartObjectOutput.add_member(:upload_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "UploadId"))
    StartObjectOutput.struct_class = Types::StartObjectOutput

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-04-10"

      api.metadata = {
        "apiVersion" => "2018-04-10",
        "endpointPrefix" => "backupstorage",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Backup Storage",
        "serviceId" => "BackupStorage",
        "signatureVersion" => "v4",
        "signingName" => "backup-storage",
        "uid" => "backupstorage-2018-04-10",
      }

      api.add_operation(:delete_object, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteObject"
        o.http_method = "DELETE"
        o.http_request_uri = "/backup-jobs/{jobId}/object/{objectName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteObjectInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceInternalException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_chunk, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChunk"
        o.http_method = "GET"
        o.http_request_uri = "/restore-jobs/{jobId}/chunk/{chunkToken}"
        o.input = Shapes::ShapeRef.new(shape: GetChunkInput)
        o.output = Shapes::ShapeRef.new(shape: GetChunkOutput)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: KMSInvalidKeyUsageException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_object_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetObjectMetadata"
        o.http_method = "GET"
        o.http_request_uri = "/restore-jobs/{jobId}/object/{objectToken}/metadata"
        o.input = Shapes::ShapeRef.new(shape: GetObjectMetadataInput)
        o.output = Shapes::ShapeRef.new(shape: GetObjectMetadataOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: KMSInvalidKeyUsageException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_chunks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChunks"
        o.http_method = "GET"
        o.http_request_uri = "/restore-jobs/{jobId}/chunks/{objectToken}/list"
        o.input = Shapes::ShapeRef.new(shape: ListChunksInput)
        o.output = Shapes::ShapeRef.new(shape: ListChunksOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceInternalException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_objects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListObjects"
        o.http_method = "GET"
        o.http_request_uri = "/restore-jobs/{jobId}/objects/list"
        o.input = Shapes::ShapeRef.new(shape: ListObjectsInput)
        o.output = Shapes::ShapeRef.new(shape: ListObjectsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceInternalException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: KMSInvalidKeyUsageException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:notify_object_complete, Seahorse::Model::Operation.new.tap do |o|
        o.name = "NotifyObjectComplete"
        o.http_method = "PUT"
        o.http_request_uri = "/backup-jobs/{jobId}/object/{uploadId}/complete"
        o['authtype'] = "v4-unsigned-body"
        o.input = Shapes::ShapeRef.new(shape: NotifyObjectCompleteInput)
        o.output = Shapes::ShapeRef.new(shape: NotifyObjectCompleteOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceInternalException)
        o.errors << Shapes::ShapeRef.new(shape: NotReadableInputStreamException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: KMSInvalidKeyUsageException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_chunk, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutChunk"
        o.http_method = "PUT"
        o.http_request_uri = "/backup-jobs/{jobId}/chunk/{uploadId}/{chunkIndex}"
        o['authtype'] = "v4-unsigned-body"
        o.input = Shapes::ShapeRef.new(shape: PutChunkInput)
        o.output = Shapes::ShapeRef.new(shape: PutChunkOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceInternalException)
        o.errors << Shapes::ShapeRef.new(shape: NotReadableInputStreamException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: KMSInvalidKeyUsageException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_object, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutObject"
        o.http_method = "PUT"
        o.http_request_uri = "/backup-jobs/{jobId}/object/{objectName}/put-object"
        o['authtype'] = "v4-unsigned-body"
        o.input = Shapes::ShapeRef.new(shape: PutObjectInput)
        o.output = Shapes::ShapeRef.new(shape: PutObjectOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceInternalException)
        o.errors << Shapes::ShapeRef.new(shape: NotReadableInputStreamException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: KMSInvalidKeyUsageException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_object, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartObject"
        o.http_method = "PUT"
        o.http_request_uri = "/backup-jobs/{jobId}/object/{objectName}"
        o.input = Shapes::ShapeRef.new(shape: StartObjectInput)
        o.output = Shapes::ShapeRef.new(shape: StartObjectOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceInternalException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DataAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
