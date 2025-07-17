# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::S3Vectors
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateIndexInput = Shapes::StructureShape.new(name: 'CreateIndexInput')
    CreateIndexOutput = Shapes::StructureShape.new(name: 'CreateIndexOutput')
    CreateVectorBucketInput = Shapes::StructureShape.new(name: 'CreateVectorBucketInput')
    CreateVectorBucketOutput = Shapes::StructureShape.new(name: 'CreateVectorBucketOutput')
    DataType = Shapes::StringShape.new(name: 'DataType')
    DeleteIndexInput = Shapes::StructureShape.new(name: 'DeleteIndexInput')
    DeleteIndexOutput = Shapes::StructureShape.new(name: 'DeleteIndexOutput')
    DeleteVectorBucketInput = Shapes::StructureShape.new(name: 'DeleteVectorBucketInput')
    DeleteVectorBucketOutput = Shapes::StructureShape.new(name: 'DeleteVectorBucketOutput')
    DeleteVectorBucketPolicyInput = Shapes::StructureShape.new(name: 'DeleteVectorBucketPolicyInput')
    DeleteVectorBucketPolicyOutput = Shapes::StructureShape.new(name: 'DeleteVectorBucketPolicyOutput')
    DeleteVectorsInput = Shapes::StructureShape.new(name: 'DeleteVectorsInput')
    DeleteVectorsInputList = Shapes::ListShape.new(name: 'DeleteVectorsInputList')
    DeleteVectorsOutput = Shapes::StructureShape.new(name: 'DeleteVectorsOutput')
    Dimension = Shapes::IntegerShape.new(name: 'Dimension')
    DistanceMetric = Shapes::StringShape.new(name: 'DistanceMetric')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    Float = Shapes::FloatShape.new(name: 'Float')
    Float32VectorData = Shapes::ListShape.new(name: 'Float32VectorData')
    GetIndexInput = Shapes::StructureShape.new(name: 'GetIndexInput')
    GetIndexOutput = Shapes::StructureShape.new(name: 'GetIndexOutput')
    GetOutputVector = Shapes::StructureShape.new(name: 'GetOutputVector')
    GetVectorBucketInput = Shapes::StructureShape.new(name: 'GetVectorBucketInput')
    GetVectorBucketOutput = Shapes::StructureShape.new(name: 'GetVectorBucketOutput')
    GetVectorBucketPolicyInput = Shapes::StructureShape.new(name: 'GetVectorBucketPolicyInput')
    GetVectorBucketPolicyOutput = Shapes::StructureShape.new(name: 'GetVectorBucketPolicyOutput')
    GetVectorsInput = Shapes::StructureShape.new(name: 'GetVectorsInput')
    GetVectorsInputList = Shapes::ListShape.new(name: 'GetVectorsInputList')
    GetVectorsOutput = Shapes::StructureShape.new(name: 'GetVectorsOutput')
    GetVectorsOutputList = Shapes::ListShape.new(name: 'GetVectorsOutputList')
    Index = Shapes::StructureShape.new(name: 'Index')
    IndexArn = Shapes::StringShape.new(name: 'IndexArn')
    IndexName = Shapes::StringShape.new(name: 'IndexName')
    IndexSummary = Shapes::StructureShape.new(name: 'IndexSummary')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KmsDisabledException = Shapes::StructureShape.new(name: 'KmsDisabledException')
    KmsInvalidKeyUsageException = Shapes::StructureShape.new(name: 'KmsInvalidKeyUsageException')
    KmsInvalidStateException = Shapes::StructureShape.new(name: 'KmsInvalidStateException')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    KmsNotFoundException = Shapes::StructureShape.new(name: 'KmsNotFoundException')
    ListIndexesInput = Shapes::StructureShape.new(name: 'ListIndexesInput')
    ListIndexesMaxResults = Shapes::IntegerShape.new(name: 'ListIndexesMaxResults')
    ListIndexesNextToken = Shapes::StringShape.new(name: 'ListIndexesNextToken')
    ListIndexesOutput = Shapes::StructureShape.new(name: 'ListIndexesOutput')
    ListIndexesOutputList = Shapes::ListShape.new(name: 'ListIndexesOutputList')
    ListIndexesPrefix = Shapes::StringShape.new(name: 'ListIndexesPrefix')
    ListOutputVector = Shapes::StructureShape.new(name: 'ListOutputVector')
    ListVectorBucketsInput = Shapes::StructureShape.new(name: 'ListVectorBucketsInput')
    ListVectorBucketsMaxResults = Shapes::IntegerShape.new(name: 'ListVectorBucketsMaxResults')
    ListVectorBucketsNextToken = Shapes::StringShape.new(name: 'ListVectorBucketsNextToken')
    ListVectorBucketsOutput = Shapes::StructureShape.new(name: 'ListVectorBucketsOutput')
    ListVectorBucketsOutputList = Shapes::ListShape.new(name: 'ListVectorBucketsOutputList')
    ListVectorBucketsPrefix = Shapes::StringShape.new(name: 'ListVectorBucketsPrefix')
    ListVectorsInput = Shapes::StructureShape.new(name: 'ListVectorsInput')
    ListVectorsMaxResults = Shapes::IntegerShape.new(name: 'ListVectorsMaxResults')
    ListVectorsNextToken = Shapes::StringShape.new(name: 'ListVectorsNextToken')
    ListVectorsOutput = Shapes::StructureShape.new(name: 'ListVectorsOutput')
    ListVectorsOutputList = Shapes::ListShape.new(name: 'ListVectorsOutputList')
    ListVectorsSegmentCount = Shapes::IntegerShape.new(name: 'ListVectorsSegmentCount')
    ListVectorsSegmentIndex = Shapes::IntegerShape.new(name: 'ListVectorsSegmentIndex')
    MetadataConfiguration = Shapes::StructureShape.new(name: 'MetadataConfiguration')
    MetadataKey = Shapes::StringShape.new(name: 'MetadataKey')
    NonFilterableMetadataKeys = Shapes::ListShape.new(name: 'NonFilterableMetadataKeys')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    PutInputVector = Shapes::StructureShape.new(name: 'PutInputVector')
    PutVectorBucketPolicyInput = Shapes::StructureShape.new(name: 'PutVectorBucketPolicyInput')
    PutVectorBucketPolicyOutput = Shapes::StructureShape.new(name: 'PutVectorBucketPolicyOutput')
    PutVectorsInput = Shapes::StructureShape.new(name: 'PutVectorsInput')
    PutVectorsInputList = Shapes::ListShape.new(name: 'PutVectorsInputList')
    PutVectorsOutput = Shapes::StructureShape.new(name: 'PutVectorsOutput')
    QueryOutputVector = Shapes::StructureShape.new(name: 'QueryOutputVector')
    QueryVectorsInput = Shapes::StructureShape.new(name: 'QueryVectorsInput')
    QueryVectorsOutput = Shapes::StructureShape.new(name: 'QueryVectorsOutput')
    QueryVectorsOutputList = Shapes::ListShape.new(name: 'QueryVectorsOutputList')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SseType = Shapes::StringShape.new(name: 'SseType')
    String = Shapes::StringShape.new(name: 'String')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    TopK = Shapes::IntegerShape.new(name: 'TopK')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    VectorBucket = Shapes::StructureShape.new(name: 'VectorBucket')
    VectorBucketArn = Shapes::StringShape.new(name: 'VectorBucketArn')
    VectorBucketName = Shapes::StringShape.new(name: 'VectorBucketName')
    VectorBucketPolicy = Shapes::StringShape.new(name: 'VectorBucketPolicy')
    VectorBucketSummary = Shapes::StructureShape.new(name: 'VectorBucketSummary')
    VectorData = Shapes::UnionShape.new(name: 'VectorData')
    VectorKey = Shapes::StringShape.new(name: 'VectorKey')
    VectorMetadata = Shapes::DocumentShape.new(name: 'VectorMetadata', document: true)

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateIndexInput.add_member(:vector_bucket_name, Shapes::ShapeRef.new(shape: VectorBucketName, location_name: "vectorBucketName"))
    CreateIndexInput.add_member(:vector_bucket_arn, Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: "vectorBucketArn"))
    CreateIndexInput.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location_name: "indexName"))
    CreateIndexInput.add_member(:data_type, Shapes::ShapeRef.new(shape: DataType, required: true, location_name: "dataType"))
    CreateIndexInput.add_member(:dimension, Shapes::ShapeRef.new(shape: Dimension, required: true, location_name: "dimension"))
    CreateIndexInput.add_member(:distance_metric, Shapes::ShapeRef.new(shape: DistanceMetric, required: true, location_name: "distanceMetric"))
    CreateIndexInput.add_member(:metadata_configuration, Shapes::ShapeRef.new(shape: MetadataConfiguration, location_name: "metadataConfiguration"))
    CreateIndexInput.struct_class = Types::CreateIndexInput

    CreateIndexOutput.struct_class = Types::CreateIndexOutput

    CreateVectorBucketInput.add_member(:vector_bucket_name, Shapes::ShapeRef.new(shape: VectorBucketName, required: true, location_name: "vectorBucketName"))
    CreateVectorBucketInput.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    CreateVectorBucketInput.struct_class = Types::CreateVectorBucketInput

    CreateVectorBucketOutput.struct_class = Types::CreateVectorBucketOutput

    DeleteIndexInput.add_member(:vector_bucket_name, Shapes::ShapeRef.new(shape: VectorBucketName, location_name: "vectorBucketName"))
    DeleteIndexInput.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "indexName"))
    DeleteIndexInput.add_member(:index_arn, Shapes::ShapeRef.new(shape: IndexArn, location_name: "indexArn"))
    DeleteIndexInput.struct_class = Types::DeleteIndexInput

    DeleteIndexOutput.struct_class = Types::DeleteIndexOutput

    DeleteVectorBucketInput.add_member(:vector_bucket_name, Shapes::ShapeRef.new(shape: VectorBucketName, location_name: "vectorBucketName"))
    DeleteVectorBucketInput.add_member(:vector_bucket_arn, Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: "vectorBucketArn"))
    DeleteVectorBucketInput.struct_class = Types::DeleteVectorBucketInput

    DeleteVectorBucketOutput.struct_class = Types::DeleteVectorBucketOutput

    DeleteVectorBucketPolicyInput.add_member(:vector_bucket_name, Shapes::ShapeRef.new(shape: VectorBucketName, location_name: "vectorBucketName"))
    DeleteVectorBucketPolicyInput.add_member(:vector_bucket_arn, Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: "vectorBucketArn"))
    DeleteVectorBucketPolicyInput.struct_class = Types::DeleteVectorBucketPolicyInput

    DeleteVectorBucketPolicyOutput.struct_class = Types::DeleteVectorBucketPolicyOutput

    DeleteVectorsInput.add_member(:vector_bucket_name, Shapes::ShapeRef.new(shape: VectorBucketName, location_name: "vectorBucketName"))
    DeleteVectorsInput.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "indexName"))
    DeleteVectorsInput.add_member(:index_arn, Shapes::ShapeRef.new(shape: IndexArn, location_name: "indexArn"))
    DeleteVectorsInput.add_member(:keys, Shapes::ShapeRef.new(shape: DeleteVectorsInputList, required: true, location_name: "keys"))
    DeleteVectorsInput.struct_class = Types::DeleteVectorsInput

    DeleteVectorsInputList.member = Shapes::ShapeRef.new(shape: VectorKey)

    DeleteVectorsOutput.struct_class = Types::DeleteVectorsOutput

    EncryptionConfiguration.add_member(:sse_type, Shapes::ShapeRef.new(shape: SseType, location_name: "sseType"))
    EncryptionConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    Float32VectorData.member = Shapes::ShapeRef.new(shape: Float)

    GetIndexInput.add_member(:vector_bucket_name, Shapes::ShapeRef.new(shape: VectorBucketName, location_name: "vectorBucketName"))
    GetIndexInput.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "indexName"))
    GetIndexInput.add_member(:index_arn, Shapes::ShapeRef.new(shape: IndexArn, location_name: "indexArn"))
    GetIndexInput.struct_class = Types::GetIndexInput

    GetIndexOutput.add_member(:index, Shapes::ShapeRef.new(shape: Index, required: true, location_name: "index"))
    GetIndexOutput.struct_class = Types::GetIndexOutput

    GetOutputVector.add_member(:key, Shapes::ShapeRef.new(shape: VectorKey, required: true, location_name: "key"))
    GetOutputVector.add_member(:data, Shapes::ShapeRef.new(shape: VectorData, location_name: "data"))
    GetOutputVector.add_member(:metadata, Shapes::ShapeRef.new(shape: VectorMetadata, location_name: "metadata"))
    GetOutputVector.struct_class = Types::GetOutputVector

    GetVectorBucketInput.add_member(:vector_bucket_name, Shapes::ShapeRef.new(shape: VectorBucketName, location_name: "vectorBucketName"))
    GetVectorBucketInput.add_member(:vector_bucket_arn, Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: "vectorBucketArn"))
    GetVectorBucketInput.struct_class = Types::GetVectorBucketInput

    GetVectorBucketOutput.add_member(:vector_bucket, Shapes::ShapeRef.new(shape: VectorBucket, required: true, location_name: "vectorBucket"))
    GetVectorBucketOutput.struct_class = Types::GetVectorBucketOutput

    GetVectorBucketPolicyInput.add_member(:vector_bucket_name, Shapes::ShapeRef.new(shape: VectorBucketName, location_name: "vectorBucketName"))
    GetVectorBucketPolicyInput.add_member(:vector_bucket_arn, Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: "vectorBucketArn"))
    GetVectorBucketPolicyInput.struct_class = Types::GetVectorBucketPolicyInput

    GetVectorBucketPolicyOutput.add_member(:policy, Shapes::ShapeRef.new(shape: VectorBucketPolicy, location_name: "policy"))
    GetVectorBucketPolicyOutput.struct_class = Types::GetVectorBucketPolicyOutput

    GetVectorsInput.add_member(:vector_bucket_name, Shapes::ShapeRef.new(shape: VectorBucketName, location_name: "vectorBucketName"))
    GetVectorsInput.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "indexName"))
    GetVectorsInput.add_member(:index_arn, Shapes::ShapeRef.new(shape: IndexArn, location_name: "indexArn"))
    GetVectorsInput.add_member(:keys, Shapes::ShapeRef.new(shape: GetVectorsInputList, required: true, location_name: "keys"))
    GetVectorsInput.add_member(:return_data, Shapes::ShapeRef.new(shape: Boolean, location_name: "returnData"))
    GetVectorsInput.add_member(:return_metadata, Shapes::ShapeRef.new(shape: Boolean, location_name: "returnMetadata"))
    GetVectorsInput.struct_class = Types::GetVectorsInput

    GetVectorsInputList.member = Shapes::ShapeRef.new(shape: VectorKey)

    GetVectorsOutput.add_member(:vectors, Shapes::ShapeRef.new(shape: GetVectorsOutputList, required: true, location_name: "vectors"))
    GetVectorsOutput.struct_class = Types::GetVectorsOutput

    GetVectorsOutputList.member = Shapes::ShapeRef.new(shape: GetOutputVector)

    Index.add_member(:vector_bucket_name, Shapes::ShapeRef.new(shape: VectorBucketName, required: true, location_name: "vectorBucketName"))
    Index.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location_name: "indexName"))
    Index.add_member(:index_arn, Shapes::ShapeRef.new(shape: IndexArn, required: true, location_name: "indexArn"))
    Index.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    Index.add_member(:data_type, Shapes::ShapeRef.new(shape: DataType, required: true, location_name: "dataType"))
    Index.add_member(:dimension, Shapes::ShapeRef.new(shape: Dimension, required: true, location_name: "dimension"))
    Index.add_member(:distance_metric, Shapes::ShapeRef.new(shape: DistanceMetric, required: true, location_name: "distanceMetric"))
    Index.add_member(:metadata_configuration, Shapes::ShapeRef.new(shape: MetadataConfiguration, location_name: "metadataConfiguration"))
    Index.struct_class = Types::Index

    IndexSummary.add_member(:vector_bucket_name, Shapes::ShapeRef.new(shape: VectorBucketName, required: true, location_name: "vectorBucketName"))
    IndexSummary.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location_name: "indexName"))
    IndexSummary.add_member(:index_arn, Shapes::ShapeRef.new(shape: IndexArn, required: true, location_name: "indexArn"))
    IndexSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    IndexSummary.struct_class = Types::IndexSummary

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    KmsDisabledException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    KmsDisabledException.struct_class = Types::KmsDisabledException

    KmsInvalidKeyUsageException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    KmsInvalidKeyUsageException.struct_class = Types::KmsInvalidKeyUsageException

    KmsInvalidStateException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    KmsInvalidStateException.struct_class = Types::KmsInvalidStateException

    KmsNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    KmsNotFoundException.struct_class = Types::KmsNotFoundException

    ListIndexesInput.add_member(:vector_bucket_name, Shapes::ShapeRef.new(shape: VectorBucketName, location_name: "vectorBucketName"))
    ListIndexesInput.add_member(:vector_bucket_arn, Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: "vectorBucketArn"))
    ListIndexesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListIndexesMaxResults, location_name: "maxResults"))
    ListIndexesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListIndexesNextToken, location_name: "nextToken"))
    ListIndexesInput.add_member(:prefix, Shapes::ShapeRef.new(shape: ListIndexesPrefix, location_name: "prefix"))
    ListIndexesInput.struct_class = Types::ListIndexesInput

    ListIndexesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListIndexesNextToken, location_name: "nextToken"))
    ListIndexesOutput.add_member(:indexes, Shapes::ShapeRef.new(shape: ListIndexesOutputList, required: true, location_name: "indexes"))
    ListIndexesOutput.struct_class = Types::ListIndexesOutput

    ListIndexesOutputList.member = Shapes::ShapeRef.new(shape: IndexSummary)

    ListOutputVector.add_member(:key, Shapes::ShapeRef.new(shape: VectorKey, required: true, location_name: "key"))
    ListOutputVector.add_member(:data, Shapes::ShapeRef.new(shape: VectorData, location_name: "data"))
    ListOutputVector.add_member(:metadata, Shapes::ShapeRef.new(shape: VectorMetadata, location_name: "metadata"))
    ListOutputVector.struct_class = Types::ListOutputVector

    ListVectorBucketsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListVectorBucketsMaxResults, location_name: "maxResults"))
    ListVectorBucketsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListVectorBucketsNextToken, location_name: "nextToken"))
    ListVectorBucketsInput.add_member(:prefix, Shapes::ShapeRef.new(shape: ListVectorBucketsPrefix, location_name: "prefix"))
    ListVectorBucketsInput.struct_class = Types::ListVectorBucketsInput

    ListVectorBucketsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListVectorBucketsNextToken, location_name: "nextToken"))
    ListVectorBucketsOutput.add_member(:vector_buckets, Shapes::ShapeRef.new(shape: ListVectorBucketsOutputList, required: true, location_name: "vectorBuckets"))
    ListVectorBucketsOutput.struct_class = Types::ListVectorBucketsOutput

    ListVectorBucketsOutputList.member = Shapes::ShapeRef.new(shape: VectorBucketSummary)

    ListVectorsInput.add_member(:vector_bucket_name, Shapes::ShapeRef.new(shape: VectorBucketName, location_name: "vectorBucketName"))
    ListVectorsInput.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "indexName"))
    ListVectorsInput.add_member(:index_arn, Shapes::ShapeRef.new(shape: IndexArn, location_name: "indexArn"))
    ListVectorsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListVectorsMaxResults, location_name: "maxResults"))
    ListVectorsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListVectorsNextToken, location_name: "nextToken"))
    ListVectorsInput.add_member(:segment_count, Shapes::ShapeRef.new(shape: ListVectorsSegmentCount, location_name: "segmentCount"))
    ListVectorsInput.add_member(:segment_index, Shapes::ShapeRef.new(shape: ListVectorsSegmentIndex, location_name: "segmentIndex"))
    ListVectorsInput.add_member(:return_data, Shapes::ShapeRef.new(shape: Boolean, location_name: "returnData"))
    ListVectorsInput.add_member(:return_metadata, Shapes::ShapeRef.new(shape: Boolean, location_name: "returnMetadata"))
    ListVectorsInput.struct_class = Types::ListVectorsInput

    ListVectorsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListVectorsNextToken, location_name: "nextToken"))
    ListVectorsOutput.add_member(:vectors, Shapes::ShapeRef.new(shape: ListVectorsOutputList, required: true, location_name: "vectors"))
    ListVectorsOutput.struct_class = Types::ListVectorsOutput

    ListVectorsOutputList.member = Shapes::ShapeRef.new(shape: ListOutputVector)

    MetadataConfiguration.add_member(:non_filterable_metadata_keys, Shapes::ShapeRef.new(shape: NonFilterableMetadataKeys, required: true, location_name: "nonFilterableMetadataKeys"))
    MetadataConfiguration.struct_class = Types::MetadataConfiguration

    NonFilterableMetadataKeys.member = Shapes::ShapeRef.new(shape: MetadataKey)

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    PutInputVector.add_member(:key, Shapes::ShapeRef.new(shape: VectorKey, required: true, location_name: "key"))
    PutInputVector.add_member(:data, Shapes::ShapeRef.new(shape: VectorData, required: true, location_name: "data"))
    PutInputVector.add_member(:metadata, Shapes::ShapeRef.new(shape: VectorMetadata, location_name: "metadata"))
    PutInputVector.struct_class = Types::PutInputVector

    PutVectorBucketPolicyInput.add_member(:vector_bucket_name, Shapes::ShapeRef.new(shape: VectorBucketName, location_name: "vectorBucketName"))
    PutVectorBucketPolicyInput.add_member(:vector_bucket_arn, Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: "vectorBucketArn"))
    PutVectorBucketPolicyInput.add_member(:policy, Shapes::ShapeRef.new(shape: VectorBucketPolicy, required: true, location_name: "policy"))
    PutVectorBucketPolicyInput.struct_class = Types::PutVectorBucketPolicyInput

    PutVectorBucketPolicyOutput.struct_class = Types::PutVectorBucketPolicyOutput

    PutVectorsInput.add_member(:vector_bucket_name, Shapes::ShapeRef.new(shape: VectorBucketName, location_name: "vectorBucketName"))
    PutVectorsInput.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "indexName"))
    PutVectorsInput.add_member(:index_arn, Shapes::ShapeRef.new(shape: IndexArn, location_name: "indexArn"))
    PutVectorsInput.add_member(:vectors, Shapes::ShapeRef.new(shape: PutVectorsInputList, required: true, location_name: "vectors"))
    PutVectorsInput.struct_class = Types::PutVectorsInput

    PutVectorsInputList.member = Shapes::ShapeRef.new(shape: PutInputVector)

    PutVectorsOutput.struct_class = Types::PutVectorsOutput

    QueryOutputVector.add_member(:key, Shapes::ShapeRef.new(shape: VectorKey, required: true, location_name: "key"))
    QueryOutputVector.add_member(:data, Shapes::ShapeRef.new(shape: VectorData, location_name: "data"))
    QueryOutputVector.add_member(:metadata, Shapes::ShapeRef.new(shape: VectorMetadata, location_name: "metadata"))
    QueryOutputVector.add_member(:distance, Shapes::ShapeRef.new(shape: Float, location_name: "distance"))
    QueryOutputVector.struct_class = Types::QueryOutputVector

    QueryVectorsInput.add_member(:vector_bucket_name, Shapes::ShapeRef.new(shape: VectorBucketName, location_name: "vectorBucketName"))
    QueryVectorsInput.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "indexName"))
    QueryVectorsInput.add_member(:index_arn, Shapes::ShapeRef.new(shape: IndexArn, location_name: "indexArn"))
    QueryVectorsInput.add_member(:top_k, Shapes::ShapeRef.new(shape: TopK, required: true, location_name: "topK"))
    QueryVectorsInput.add_member(:query_vector, Shapes::ShapeRef.new(shape: VectorData, required: true, location_name: "queryVector"))
    QueryVectorsInput.add_member(:filter, Shapes::ShapeRef.new(shape: Document, location_name: "filter"))
    QueryVectorsInput.add_member(:return_metadata, Shapes::ShapeRef.new(shape: Boolean, location_name: "returnMetadata"))
    QueryVectorsInput.add_member(:return_distance, Shapes::ShapeRef.new(shape: Boolean, location_name: "returnDistance"))
    QueryVectorsInput.struct_class = Types::QueryVectorsInput

    QueryVectorsOutput.add_member(:vectors, Shapes::ShapeRef.new(shape: QueryVectorsOutputList, required: true, location_name: "vectors"))
    QueryVectorsOutput.struct_class = Types::QueryVectorsOutput

    QueryVectorsOutputList.member = Shapes::ShapeRef.new(shape: QueryOutputVector)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "path"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VectorBucket.add_member(:vector_bucket_name, Shapes::ShapeRef.new(shape: VectorBucketName, required: true, location_name: "vectorBucketName"))
    VectorBucket.add_member(:vector_bucket_arn, Shapes::ShapeRef.new(shape: VectorBucketArn, required: true, location_name: "vectorBucketArn"))
    VectorBucket.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    VectorBucket.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    VectorBucket.struct_class = Types::VectorBucket

    VectorBucketSummary.add_member(:vector_bucket_name, Shapes::ShapeRef.new(shape: VectorBucketName, required: true, location_name: "vectorBucketName"))
    VectorBucketSummary.add_member(:vector_bucket_arn, Shapes::ShapeRef.new(shape: VectorBucketArn, required: true, location_name: "vectorBucketArn"))
    VectorBucketSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    VectorBucketSummary.struct_class = Types::VectorBucketSummary

    VectorData.add_member(:float32, Shapes::ShapeRef.new(shape: Float32VectorData, location_name: "float32"))
    VectorData.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    VectorData.add_member_subclass(:float32, Types::VectorData::Float32)
    VectorData.add_member_subclass(:unknown, Types::VectorData::Unknown)
    VectorData.struct_class = Types::VectorData


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-07-15"

      api.metadata = {
        "apiVersion" => "2025-07-15",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "s3vectors",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon S3 Vectors",
        "serviceId" => "S3Vectors",
        "signatureVersion" => "v4",
        "signingName" => "s3vectors",
        "uid" => "s3vectors-2025-07-15",
      }

      api.add_operation(:create_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIndex"
        o.http_method = "POST"
        o.http_request_uri = "/CreateIndex"
        o.input = Shapes::ShapeRef.new(shape: CreateIndexInput)
        o.output = Shapes::ShapeRef.new(shape: CreateIndexOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_vector_bucket, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVectorBucket"
        o.http_method = "POST"
        o.http_request_uri = "/CreateVectorBucket"
        o.input = Shapes::ShapeRef.new(shape: CreateVectorBucketInput)
        o.output = Shapes::ShapeRef.new(shape: CreateVectorBucketOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIndex"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteIndex"
        o.input = Shapes::ShapeRef.new(shape: DeleteIndexInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteIndexOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_vector_bucket, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVectorBucket"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteVectorBucket"
        o.input = Shapes::ShapeRef.new(shape: DeleteVectorBucketInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteVectorBucketOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_vector_bucket_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVectorBucketPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteVectorBucketPolicy"
        o.input = Shapes::ShapeRef.new(shape: DeleteVectorBucketPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteVectorBucketPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_vectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVectors"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteVectors"
        o.input = Shapes::ShapeRef.new(shape: DeleteVectorsInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteVectorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidKeyUsageException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KmsNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: KmsDisabledException)
      end)

      api.add_operation(:get_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIndex"
        o.http_method = "POST"
        o.http_request_uri = "/GetIndex"
        o.input = Shapes::ShapeRef.new(shape: GetIndexInput)
        o.output = Shapes::ShapeRef.new(shape: GetIndexOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_vector_bucket, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVectorBucket"
        o.http_method = "POST"
        o.http_request_uri = "/GetVectorBucket"
        o.input = Shapes::ShapeRef.new(shape: GetVectorBucketInput)
        o.output = Shapes::ShapeRef.new(shape: GetVectorBucketOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_vector_bucket_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVectorBucketPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/GetVectorBucketPolicy"
        o.input = Shapes::ShapeRef.new(shape: GetVectorBucketPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetVectorBucketPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_vectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVectors"
        o.http_method = "POST"
        o.http_request_uri = "/GetVectors"
        o.input = Shapes::ShapeRef.new(shape: GetVectorsInput)
        o.output = Shapes::ShapeRef.new(shape: GetVectorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidKeyUsageException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KmsNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: KmsDisabledException)
      end)

      api.add_operation(:list_indexes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIndexes"
        o.http_method = "POST"
        o.http_request_uri = "/ListIndexes"
        o.input = Shapes::ShapeRef.new(shape: ListIndexesInput)
        o.output = Shapes::ShapeRef.new(shape: ListIndexesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_vector_buckets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVectorBuckets"
        o.http_method = "POST"
        o.http_request_uri = "/ListVectorBuckets"
        o.input = Shapes::ShapeRef.new(shape: ListVectorBucketsInput)
        o.output = Shapes::ShapeRef.new(shape: ListVectorBucketsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_vectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVectors"
        o.http_method = "POST"
        o.http_request_uri = "/ListVectors"
        o.input = Shapes::ShapeRef.new(shape: ListVectorsInput)
        o.output = Shapes::ShapeRef.new(shape: ListVectorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_vector_bucket_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutVectorBucketPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/PutVectorBucketPolicy"
        o.input = Shapes::ShapeRef.new(shape: PutVectorBucketPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: PutVectorBucketPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:put_vectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutVectors"
        o.http_method = "POST"
        o.http_request_uri = "/PutVectors"
        o.input = Shapes::ShapeRef.new(shape: PutVectorsInput)
        o.output = Shapes::ShapeRef.new(shape: PutVectorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidKeyUsageException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KmsNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: KmsDisabledException)
      end)

      api.add_operation(:query_vectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "QueryVectors"
        o.http_method = "POST"
        o.http_request_uri = "/QueryVectors"
        o.input = Shapes::ShapeRef.new(shape: QueryVectorsInput)
        o.output = Shapes::ShapeRef.new(shape: QueryVectorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidKeyUsageException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KmsNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: KmsDisabledException)
      end)
    end

  end
end
