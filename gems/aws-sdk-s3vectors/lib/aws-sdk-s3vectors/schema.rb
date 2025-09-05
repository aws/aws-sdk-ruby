# frozen_string_literal: true

# This is generated code!

module Aws::S3Vectors
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateIndexInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#CreateIndexInput', name: 'CreateIndexInput')
    CreateIndexOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#CreateIndexOutput', name: 'CreateIndexOutput')
    CreateVectorBucketInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#CreateVectorBucketInput', name: 'CreateVectorBucketInput')
    CreateVectorBucketOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#CreateVectorBucketOutput', name: 'CreateVectorBucketOutput')
    DataType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.s3vectors#DataType', name: 'DataType')
    DeleteIndexInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#DeleteIndexInput', name: 'DeleteIndexInput')
    DeleteIndexOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#DeleteIndexOutput', name: 'DeleteIndexOutput')
    DeleteVectorBucketInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#DeleteVectorBucketInput', name: 'DeleteVectorBucketInput')
    DeleteVectorBucketOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#DeleteVectorBucketOutput', name: 'DeleteVectorBucketOutput')
    DeleteVectorBucketPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#DeleteVectorBucketPolicyInput', name: 'DeleteVectorBucketPolicyInput')
    DeleteVectorBucketPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#DeleteVectorBucketPolicyOutput', name: 'DeleteVectorBucketPolicyOutput')
    DeleteVectorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#DeleteVectorsInput', name: 'DeleteVectorsInput')
    DeleteVectorsInputList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#DeleteVectorsInputList', name: 'DeleteVectorsInputList', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    DeleteVectorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#DeleteVectorsOutput', name: 'DeleteVectorsOutput')
    Dimension = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.s3vectors#Dimension', name: 'Dimension', traits: {"smithy.api#range" => {"min" => 1, "max" => 4096}})
    DistanceMetric = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.s3vectors#DistanceMetric', name: 'DistanceMetric')
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#EncryptionConfiguration', name: 'EncryptionConfiguration')
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#ExceptionMessage', name: 'ExceptionMessage')
    Float32VectorData = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#Float32VectorData', name: 'Float32VectorData')
    GetIndexInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#GetIndexInput', name: 'GetIndexInput')
    GetIndexOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#GetIndexOutput', name: 'GetIndexOutput')
    GetOutputVector = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#GetOutputVector', name: 'GetOutputVector')
    GetVectorBucketInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#GetVectorBucketInput', name: 'GetVectorBucketInput')
    GetVectorBucketOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#GetVectorBucketOutput', name: 'GetVectorBucketOutput')
    GetVectorBucketPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#GetVectorBucketPolicyInput', name: 'GetVectorBucketPolicyInput')
    GetVectorBucketPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#GetVectorBucketPolicyOutput', name: 'GetVectorBucketPolicyOutput')
    GetVectorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#GetVectorsInput', name: 'GetVectorsInput')
    GetVectorsInputList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#GetVectorsInputList', name: 'GetVectorsInputList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    GetVectorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#GetVectorsOutput', name: 'GetVectorsOutput')
    GetVectorsOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#GetVectorsOutputList', name: 'GetVectorsOutputList')
    Index = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#Index', name: 'Index')
    IndexArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#IndexArn', name: 'IndexArn', traits: {"aws.api#arnReference" => {}})
    IndexName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#IndexName', name: 'IndexName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    IndexSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#IndexSummary', name: 'IndexSummary')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    KmsDisabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#KmsDisabledException', name: 'KmsDisabledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsInvalidKeyUsageException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#KmsInvalidKeyUsageException', name: 'KmsInvalidKeyUsageException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsInvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#KmsInvalidStateException', name: 'KmsInvalidStateException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws[-a-z0-9]*:kms:[-a-z0-9]*:[0-9]{12}:key/.+)$"})
    KmsNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#KmsNotFoundException', name: 'KmsNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListIndexesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ListIndexesInput', name: 'ListIndexesInput')
    ListIndexesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.s3vectors#ListIndexesMaxResults', name: 'ListIndexesMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    ListIndexesNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#ListIndexesNextToken', name: 'ListIndexesNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ListIndexesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ListIndexesOutput', name: 'ListIndexesOutput')
    ListIndexesOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#ListIndexesOutputList', name: 'ListIndexesOutputList')
    ListIndexesPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#ListIndexesPrefix', name: 'ListIndexesPrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    ListOutputVector = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ListOutputVector', name: 'ListOutputVector')
    ListVectorBucketsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ListVectorBucketsInput', name: 'ListVectorBucketsInput')
    ListVectorBucketsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.s3vectors#ListVectorBucketsMaxResults', name: 'ListVectorBucketsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    ListVectorBucketsNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#ListVectorBucketsNextToken', name: 'ListVectorBucketsNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ListVectorBucketsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ListVectorBucketsOutput', name: 'ListVectorBucketsOutput')
    ListVectorBucketsOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#ListVectorBucketsOutputList', name: 'ListVectorBucketsOutputList')
    ListVectorBucketsPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#ListVectorBucketsPrefix', name: 'ListVectorBucketsPrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    ListVectorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ListVectorsInput', name: 'ListVectorsInput')
    ListVectorsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.s3vectors#ListVectorsMaxResults', name: 'ListVectorsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListVectorsNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#ListVectorsNextToken', name: 'ListVectorsNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ListVectorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ListVectorsOutput', name: 'ListVectorsOutput')
    ListVectorsOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#ListVectorsOutputList', name: 'ListVectorsOutputList')
    ListVectorsSegmentCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.s3vectors#ListVectorsSegmentCount', name: 'ListVectorsSegmentCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 16}})
    ListVectorsSegmentIndex = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.s3vectors#ListVectorsSegmentIndex', name: 'ListVectorsSegmentIndex', traits: {"smithy.api#range" => {"min" => 0, "max" => 15}})
    MetadataConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#MetadataConfiguration', name: 'MetadataConfiguration')
    MetadataKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#MetadataKey', name: 'MetadataKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    NonFilterableMetadataKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#NonFilterableMetadataKeys', name: 'NonFilterableMetadataKeys', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PutInputVector = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#PutInputVector', name: 'PutInputVector')
    PutVectorBucketPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#PutVectorBucketPolicyInput', name: 'PutVectorBucketPolicyInput')
    PutVectorBucketPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#PutVectorBucketPolicyOutput', name: 'PutVectorBucketPolicyOutput')
    PutVectorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#PutVectorsInput', name: 'PutVectorsInput')
    PutVectorsInputList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#PutVectorsInputList', name: 'PutVectorsInputList', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    PutVectorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#PutVectorsOutput', name: 'PutVectorsOutput')
    QueryOutputVector = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#QueryOutputVector', name: 'QueryOutputVector')
    QueryVectorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#QueryVectorsInput', name: 'QueryVectorsInput')
    QueryVectorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#QueryVectorsOutput', name: 'QueryVectorsOutput')
    QueryVectorsOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#QueryVectorsOutputList', name: 'QueryVectorsOutputList')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503, "smithy.api#retryable" => {}})
    SseType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.s3vectors#SseType', name: 'SseType')
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TopK = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.s3vectors#TopK', name: 'TopK', traits: {"smithy.api#range" => {"min" => 1}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client"})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    VectorBucket = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#VectorBucket', name: 'VectorBucket')
    VectorBucketArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#VectorBucketArn', name: 'VectorBucketArn', traits: {"aws.api#arnReference" => {}})
    VectorBucketName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#VectorBucketName', name: 'VectorBucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    VectorBucketPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#VectorBucketPolicy', name: 'VectorBucketPolicy')
    VectorBucketSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#VectorBucketSummary', name: 'VectorBucketSummary')
    VectorData = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.s3vectors#VectorData', name: 'VectorData')
    VectorKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#VectorKey', name: 'VectorKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    VectorMetadata = ::Smithy::Schema::Shapes::DocumentShape.new(id: 'com.amazonaws.s3vectors#VectorMetadata', name: 'VectorMetadata')

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateIndexInput.add_member(:vector_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName'))
    CreateIndexInput.add_member(:vector_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: 'vectorBucketArn'))
    CreateIndexInput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName', traits: {"smithy.api#required" => {}}))
    CreateIndexInput.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataType, location_name: 'dataType', traits: {"smithy.api#required" => {}}))
    CreateIndexInput.add_member(:dimension, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimension, location_name: 'dimension', traits: {"smithy.api#required" => {}}))
    CreateIndexInput.add_member(:distance_metric, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistanceMetric, location_name: 'distanceMetric', traits: {"smithy.api#required" => {}}))
    CreateIndexInput.add_member(:metadata_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataConfiguration, location_name: 'metadataConfiguration'))
    CreateIndexInput.type = Types::CreateIndexInput
    CreateIndexOutput.type = Types::CreateIndexOutput
    CreateVectorBucketInput.add_member(:vector_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#required" => {}}))
    CreateVectorBucketInput.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'encryptionConfiguration'))
    CreateVectorBucketInput.type = Types::CreateVectorBucketInput
    CreateVectorBucketOutput.type = Types::CreateVectorBucketOutput
    DataType.add_member(:float32, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLOAT32', traits: {"smithy.api#enumValue" => "float32"}))
    DeleteIndexInput.add_member(:vector_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName'))
    DeleteIndexInput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName'))
    DeleteIndexInput.add_member(:index_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn'))
    DeleteIndexInput.type = Types::DeleteIndexInput
    DeleteIndexOutput.type = Types::DeleteIndexOutput
    DeleteVectorBucketInput.add_member(:vector_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName'))
    DeleteVectorBucketInput.add_member(:vector_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: 'vectorBucketArn'))
    DeleteVectorBucketInput.type = Types::DeleteVectorBucketInput
    DeleteVectorBucketOutput.type = Types::DeleteVectorBucketOutput
    DeleteVectorBucketPolicyInput.add_member(:vector_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName'))
    DeleteVectorBucketPolicyInput.add_member(:vector_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: 'vectorBucketArn'))
    DeleteVectorBucketPolicyInput.type = Types::DeleteVectorBucketPolicyInput
    DeleteVectorBucketPolicyOutput.type = Types::DeleteVectorBucketPolicyOutput
    DeleteVectorsInput.add_member(:vector_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName'))
    DeleteVectorsInput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName'))
    DeleteVectorsInput.add_member(:index_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn'))
    DeleteVectorsInput.add_member(:keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVectorsInputList, location_name: 'keys', traits: {"smithy.api#required" => {}}))
    DeleteVectorsInput.type = Types::DeleteVectorsInput
    DeleteVectorsInputList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorKey)
    DeleteVectorsOutput.type = Types::DeleteVectorsOutput
    DistanceMetric.add_member(:euclidean, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EUCLIDEAN', traits: {"smithy.api#enumValue" => "euclidean"}))
    DistanceMetric.add_member(:cosine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COSINE', traits: {"smithy.api#enumValue" => "cosine"}))
    EncryptionConfiguration.add_member(:sse_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SseType, location_name: 'sseType', traits: {"smithy.api#default" => "AES256"}))
    EncryptionConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    Float32VectorData.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float)
    GetIndexInput.add_member(:vector_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName'))
    GetIndexInput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName'))
    GetIndexInput.add_member(:index_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn'))
    GetIndexInput.type = Types::GetIndexInput
    GetIndexOutput.add_member(:index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Index, location_name: 'index', traits: {"smithy.api#required" => {}}))
    GetIndexOutput.type = Types::GetIndexOutput
    GetOutputVector.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorKey, location_name: 'key', traits: {"smithy.api#required" => {}}))
    GetOutputVector.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorData, location_name: 'data'))
    GetOutputVector.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorMetadata, location_name: 'metadata'))
    GetOutputVector.type = Types::GetOutputVector
    GetVectorBucketInput.add_member(:vector_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName'))
    GetVectorBucketInput.add_member(:vector_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: 'vectorBucketArn'))
    GetVectorBucketInput.type = Types::GetVectorBucketInput
    GetVectorBucketOutput.add_member(:vector_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucket, location_name: 'vectorBucket', traits: {"smithy.api#required" => {}}))
    GetVectorBucketOutput.type = Types::GetVectorBucketOutput
    GetVectorBucketPolicyInput.add_member(:vector_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName'))
    GetVectorBucketPolicyInput.add_member(:vector_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: 'vectorBucketArn'))
    GetVectorBucketPolicyInput.type = Types::GetVectorBucketPolicyInput
    GetVectorBucketPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketPolicy, location_name: 'policy'))
    GetVectorBucketPolicyOutput.type = Types::GetVectorBucketPolicyOutput
    GetVectorsInput.add_member(:vector_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName'))
    GetVectorsInput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName'))
    GetVectorsInput.add_member(:index_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn'))
    GetVectorsInput.add_member(:keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVectorsInputList, location_name: 'keys', traits: {"smithy.api#required" => {}}))
    GetVectorsInput.add_member(:return_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'returnData', traits: {"smithy.api#default" => false}))
    GetVectorsInput.add_member(:return_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'returnMetadata', traits: {"smithy.api#default" => false}))
    GetVectorsInput.type = Types::GetVectorsInput
    GetVectorsInputList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorKey)
    GetVectorsOutput.add_member(:vectors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVectorsOutputList, location_name: 'vectors', traits: {"smithy.api#required" => {}}))
    GetVectorsOutput.type = Types::GetVectorsOutput
    GetVectorsOutputList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOutputVector)
    Index.add_member(:vector_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#required" => {}}))
    Index.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName', traits: {"smithy.api#required" => {}}))
    Index.add_member(:index_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn', traits: {"smithy.api#required" => {}}))
    Index.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    Index.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataType, location_name: 'dataType', traits: {"smithy.api#required" => {}}))
    Index.add_member(:dimension, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimension, location_name: 'dimension', traits: {"smithy.api#required" => {}}))
    Index.add_member(:distance_metric, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistanceMetric, location_name: 'distanceMetric', traits: {"smithy.api#required" => {}}))
    Index.add_member(:metadata_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataConfiguration, location_name: 'metadataConfiguration'))
    Index.type = Types::Index
    IndexSummary.add_member(:vector_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#required" => {}}))
    IndexSummary.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName', traits: {"smithy.api#required" => {}}))
    IndexSummary.add_member(:index_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn', traits: {"smithy.api#required" => {}}))
    IndexSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    IndexSummary.type = Types::IndexSummary
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    KmsDisabledException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    KmsDisabledException.type = Types::KmsDisabledException
    KmsInvalidKeyUsageException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    KmsInvalidKeyUsageException.type = Types::KmsInvalidKeyUsageException
    KmsInvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    KmsInvalidStateException.type = Types::KmsInvalidStateException
    KmsNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    KmsNotFoundException.type = Types::KmsNotFoundException
    ListIndexesInput.add_member(:vector_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName'))
    ListIndexesInput.add_member(:vector_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: 'vectorBucketArn'))
    ListIndexesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesMaxResults, location_name: 'maxResults'))
    ListIndexesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesNextToken, location_name: 'nextToken'))
    ListIndexesInput.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesPrefix, location_name: 'prefix'))
    ListIndexesInput.type = Types::ListIndexesInput
    ListIndexesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesNextToken, location_name: 'nextToken'))
    ListIndexesOutput.add_member(:indexes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesOutputList, location_name: 'indexes', traits: {"smithy.api#required" => {}}))
    ListIndexesOutput.type = Types::ListIndexesOutput
    ListIndexesOutputList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexSummary)
    ListOutputVector.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorKey, location_name: 'key', traits: {"smithy.api#required" => {}}))
    ListOutputVector.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorData, location_name: 'data'))
    ListOutputVector.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorMetadata, location_name: 'metadata'))
    ListOutputVector.type = Types::ListOutputVector
    ListVectorBucketsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorBucketsMaxResults, location_name: 'maxResults'))
    ListVectorBucketsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorBucketsNextToken, location_name: 'nextToken'))
    ListVectorBucketsInput.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorBucketsPrefix, location_name: 'prefix'))
    ListVectorBucketsInput.type = Types::ListVectorBucketsInput
    ListVectorBucketsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorBucketsNextToken, location_name: 'nextToken'))
    ListVectorBucketsOutput.add_member(:vector_buckets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorBucketsOutputList, location_name: 'vectorBuckets', traits: {"smithy.api#required" => {}}))
    ListVectorBucketsOutput.type = Types::ListVectorBucketsOutput
    ListVectorBucketsOutputList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketSummary)
    ListVectorsInput.add_member(:vector_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName'))
    ListVectorsInput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName'))
    ListVectorsInput.add_member(:index_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn'))
    ListVectorsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorsMaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 500}))
    ListVectorsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorsNextToken, location_name: 'nextToken'))
    ListVectorsInput.add_member(:segment_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorsSegmentCount, location_name: 'segmentCount', traits: {"smithy.api#default" => 1}))
    ListVectorsInput.add_member(:segment_index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorsSegmentIndex, location_name: 'segmentIndex', traits: {"smithy.api#default" => 0}))
    ListVectorsInput.add_member(:return_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'returnData', traits: {"smithy.api#default" => false}))
    ListVectorsInput.add_member(:return_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'returnMetadata', traits: {"smithy.api#default" => false}))
    ListVectorsInput.type = Types::ListVectorsInput
    ListVectorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorsNextToken, location_name: 'nextToken'))
    ListVectorsOutput.add_member(:vectors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorsOutputList, location_name: 'vectors', traits: {"smithy.api#required" => {}}))
    ListVectorsOutput.type = Types::ListVectorsOutput
    ListVectorsOutputList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOutputVector)
    MetadataConfiguration.add_member(:non_filterable_metadata_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonFilterableMetadataKeys, location_name: 'nonFilterableMetadataKeys', traits: {"smithy.api#required" => {}}))
    MetadataConfiguration.type = Types::MetadataConfiguration
    NonFilterableMetadataKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataKey)
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    NotFoundException.type = Types::NotFoundException
    PutInputVector.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorKey, location_name: 'key', traits: {"smithy.api#required" => {}}))
    PutInputVector.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorData, location_name: 'data', traits: {"smithy.api#required" => {}}))
    PutInputVector.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorMetadata, location_name: 'metadata', traits: {"smithy.api#default" => {}}))
    PutInputVector.type = Types::PutInputVector
    PutVectorBucketPolicyInput.add_member(:vector_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName'))
    PutVectorBucketPolicyInput.add_member(:vector_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: 'vectorBucketArn'))
    PutVectorBucketPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketPolicy, location_name: 'policy', traits: {"smithy.api#required" => {}}))
    PutVectorBucketPolicyInput.type = Types::PutVectorBucketPolicyInput
    PutVectorBucketPolicyOutput.type = Types::PutVectorBucketPolicyOutput
    PutVectorsInput.add_member(:vector_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName'))
    PutVectorsInput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName'))
    PutVectorsInput.add_member(:index_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn'))
    PutVectorsInput.add_member(:vectors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutVectorsInputList, location_name: 'vectors', traits: {"smithy.api#required" => {}}))
    PutVectorsInput.type = Types::PutVectorsInput
    PutVectorsInputList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutInputVector)
    PutVectorsOutput.type = Types::PutVectorsOutput
    QueryOutputVector.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorKey, location_name: 'key', traits: {"smithy.api#required" => {}}))
    QueryOutputVector.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorData, location_name: 'data'))
    QueryOutputVector.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorMetadata, location_name: 'metadata'))
    QueryOutputVector.add_member(:distance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: 'distance'))
    QueryOutputVector.type = Types::QueryOutputVector
    QueryVectorsInput.add_member(:vector_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName'))
    QueryVectorsInput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName'))
    QueryVectorsInput.add_member(:index_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn'))
    QueryVectorsInput.add_member(:top_k, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TopK, location_name: 'topK', traits: {"smithy.api#required" => {}}))
    QueryVectorsInput.add_member(:query_vector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorData, location_name: 'queryVector', traits: {"smithy.api#required" => {}}))
    QueryVectorsInput.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: 'filter'))
    QueryVectorsInput.add_member(:return_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'returnMetadata', traits: {"smithy.api#default" => false}))
    QueryVectorsInput.add_member(:return_distance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'returnDistance', traits: {"smithy.api#default" => false}))
    QueryVectorsInput.type = Types::QueryVectorsInput
    QueryVectorsOutput.add_member(:vectors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryVectorsOutputList, location_name: 'vectors', traits: {"smithy.api#required" => {}}))
    QueryVectorsOutput.type = Types::QueryVectorsOutput
    QueryVectorsOutputList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryOutputVector)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SseType.add_member(:aes256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AES256', traits: {"smithy.api#enumValue" => "AES256"}))
    SseType.add_member(:aws_kms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_KMS', traits: {"smithy.api#enumValue" => "aws:kms"}))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'path', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    VectorBucket.add_member(:vector_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#required" => {}}))
    VectorBucket.add_member(:vector_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: 'vectorBucketArn', traits: {"smithy.api#required" => {}}))
    VectorBucket.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    VectorBucket.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'encryptionConfiguration'))
    VectorBucket.type = Types::VectorBucket
    VectorBucketSummary.add_member(:vector_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#required" => {}}))
    VectorBucketSummary.add_member(:vector_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: 'vectorBucketArn', traits: {"smithy.api#required" => {}}))
    VectorBucketSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    VectorBucketSummary.type = Types::VectorBucketSummary
    VectorData.add_member(:float32, Types::VectorData::Float32, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float32VectorData, location_name: 'float32'))
    VectorData.add_member(:unknown, Types::VectorData::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    VectorData.type = Types::VectorData

    S3Vectors = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.s3vectors#S3Vectors"
      service.name = "S3Vectors"
      service.version = "2025-07-15"
      service.traits = {"aws.api#service" => {"sdkId" => "S3Vectors", "arnNamespace" => "s3vectors", "endpointPrefix" => "s3vectors"}, "aws.auth#sigv4" => {"name" => "s3vectors"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon S3 Vectors"}
      service.add_operation(:create_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#CreateIndex"
        operation.name = "CreateIndex"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIndexInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIndexOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateIndex", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_vector_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#CreateVectorBucket"
        operation.name = "CreateVectorBucket"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVectorBucketInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVectorBucketOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateVectorBucket", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#DeleteIndex"
        operation.name = "DeleteIndex"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIndexInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIndexOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteIndex", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_vector_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#DeleteVectorBucket"
        operation.name = "DeleteVectorBucket"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVectorBucketInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVectorBucketOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteVectorBucket", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_vector_bucket_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#DeleteVectorBucketPolicy"
        operation.name = "DeleteVectorBucketPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVectorBucketPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVectorBucketPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteVectorBucketPolicy", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_vectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#DeleteVectors"
        operation.name = "DeleteVectors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVectorsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVectorsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsDisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidKeyUsageException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteVectors", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#GetIndex"
        operation.name = "GetIndex"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIndexInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIndexOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/GetIndex", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_vector_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#GetVectorBucket"
        operation.name = "GetVectorBucket"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVectorBucketInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVectorBucketOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/GetVectorBucket", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_vector_bucket_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#GetVectorBucketPolicy"
        operation.name = "GetVectorBucketPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVectorBucketPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVectorBucketPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/GetVectorBucketPolicy", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_vectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#GetVectors"
        operation.name = "GetVectors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVectorsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVectorsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsDisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidKeyUsageException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/GetVectors", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_indexes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#ListIndexes"
        operation.name = "ListIndexes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ListIndexes", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIndexes.new
      end)
      service.add_operation(:list_vector_buckets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#ListVectorBuckets"
        operation.name = "ListVectorBuckets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorBucketsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorBucketsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ListVectorBuckets", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVectorBuckets.new
      end)
      service.add_operation(:list_vectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#ListVectors"
        operation.name = "ListVectors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ListVectors", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVectors.new
      end)
      service.add_operation(:put_vector_bucket_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#PutVectorBucketPolicy"
        operation.name = "PutVectorBucketPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutVectorBucketPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutVectorBucketPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/PutVectorBucketPolicy", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_vectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#PutVectors"
        operation.name = "PutVectors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutVectorsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutVectorsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsDisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidKeyUsageException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/PutVectors", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:query_vectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#QueryVectors"
        operation.name = "QueryVectors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryVectorsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryVectorsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsDisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidKeyUsageException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/QueryVectors", "method" => "POST"}, "smithy.api#readonly" => {}}
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
