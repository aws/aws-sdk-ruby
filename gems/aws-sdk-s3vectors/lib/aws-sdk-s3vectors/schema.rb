# frozen_string_literal: true

# This is generated code!

module Aws::S3Vectors
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateIndexInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#CreateIndexInput', name: 'CreateIndexInput')
    CreateIndexOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#CreateIndexOutput', name: 'CreateIndexOutput')
    CreateVectorBucketInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#CreateVectorBucketInput', name: 'CreateVectorBucketInput')
    CreateVectorBucketOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#CreateVectorBucketOutput', name: 'CreateVectorBucketOutput')
    DataType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.s3vectors#DataType', name: 'DataType')
    DeleteIndexInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#DeleteIndexInput', name: 'DeleteIndexInput')
    DeleteIndexOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#DeleteIndexOutput', name: 'DeleteIndexOutput')
    DeleteVectorBucketInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#DeleteVectorBucketInput', name: 'DeleteVectorBucketInput')
    DeleteVectorBucketOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#DeleteVectorBucketOutput', name: 'DeleteVectorBucketOutput')
    DeleteVectorBucketPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#DeleteVectorBucketPolicyInput', name: 'DeleteVectorBucketPolicyInput')
    DeleteVectorBucketPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#DeleteVectorBucketPolicyOutput', name: 'DeleteVectorBucketPolicyOutput')
    DeleteVectorsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#DeleteVectorsInput', name: 'DeleteVectorsInput')
    DeleteVectorsInputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#DeleteVectorsInputList', name: 'DeleteVectorsInputList', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    DeleteVectorsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#DeleteVectorsOutput', name: 'DeleteVectorsOutput')
    Dimension = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.s3vectors#Dimension', name: 'Dimension', traits: {"smithy.api#range" => {"min" => 1, "max" => 4096}})
    DistanceMetric = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.s3vectors#DistanceMetric', name: 'DistanceMetric')
    EncryptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#EncryptionConfiguration', name: 'EncryptionConfiguration')
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#ExceptionMessage', name: 'ExceptionMessage')
    Float32VectorData = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#Float32VectorData', name: 'Float32VectorData')
    GetIndexInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#GetIndexInput', name: 'GetIndexInput')
    GetIndexOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#GetIndexOutput', name: 'GetIndexOutput')
    GetOutputVector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#GetOutputVector', name: 'GetOutputVector')
    GetVectorBucketInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#GetVectorBucketInput', name: 'GetVectorBucketInput')
    GetVectorBucketOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#GetVectorBucketOutput', name: 'GetVectorBucketOutput')
    GetVectorBucketPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#GetVectorBucketPolicyInput', name: 'GetVectorBucketPolicyInput')
    GetVectorBucketPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#GetVectorBucketPolicyOutput', name: 'GetVectorBucketPolicyOutput')
    GetVectorsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#GetVectorsInput', name: 'GetVectorsInput')
    GetVectorsInputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#GetVectorsInputList', name: 'GetVectorsInputList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    GetVectorsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#GetVectorsOutput', name: 'GetVectorsOutput')
    GetVectorsOutputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#GetVectorsOutputList', name: 'GetVectorsOutputList')
    Index = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#Index', name: 'Index')
    IndexArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#IndexArn', name: 'IndexArn', traits: {"aws.api#arnReference" => {}})
    IndexName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#IndexName', name: 'IndexName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    IndexSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#IndexSummary', name: 'IndexSummary')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    KmsDisabledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#KmsDisabledException', name: 'KmsDisabledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsInvalidKeyUsageException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#KmsInvalidKeyUsageException', name: 'KmsInvalidKeyUsageException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsInvalidStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#KmsInvalidStateException', name: 'KmsInvalidStateException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws[-a-z0-9]*:kms:[-a-z0-9]*:[0-9]{12}:key/.+)$"})
    KmsNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#KmsNotFoundException', name: 'KmsNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListIndexesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ListIndexesInput', name: 'ListIndexesInput')
    ListIndexesMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.s3vectors#ListIndexesMaxResults', name: 'ListIndexesMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    ListIndexesNextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#ListIndexesNextToken', name: 'ListIndexesNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ListIndexesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ListIndexesOutput', name: 'ListIndexesOutput')
    ListIndexesOutputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#ListIndexesOutputList', name: 'ListIndexesOutputList')
    ListIndexesPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#ListIndexesPrefix', name: 'ListIndexesPrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    ListOutputVector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ListOutputVector', name: 'ListOutputVector')
    ListVectorBucketsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ListVectorBucketsInput', name: 'ListVectorBucketsInput')
    ListVectorBucketsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.s3vectors#ListVectorBucketsMaxResults', name: 'ListVectorBucketsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    ListVectorBucketsNextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#ListVectorBucketsNextToken', name: 'ListVectorBucketsNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ListVectorBucketsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ListVectorBucketsOutput', name: 'ListVectorBucketsOutput')
    ListVectorBucketsOutputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#ListVectorBucketsOutputList', name: 'ListVectorBucketsOutputList')
    ListVectorBucketsPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#ListVectorBucketsPrefix', name: 'ListVectorBucketsPrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    ListVectorsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ListVectorsInput', name: 'ListVectorsInput')
    ListVectorsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.s3vectors#ListVectorsMaxResults', name: 'ListVectorsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListVectorsNextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#ListVectorsNextToken', name: 'ListVectorsNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ListVectorsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ListVectorsOutput', name: 'ListVectorsOutput')
    ListVectorsOutputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#ListVectorsOutputList', name: 'ListVectorsOutputList')
    ListVectorsSegmentCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.s3vectors#ListVectorsSegmentCount', name: 'ListVectorsSegmentCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 16}})
    ListVectorsSegmentIndex = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.s3vectors#ListVectorsSegmentIndex', name: 'ListVectorsSegmentIndex', traits: {"smithy.api#range" => {"min" => 0, "max" => 15}})
    MetadataConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#MetadataConfiguration', name: 'MetadataConfiguration')
    MetadataKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#MetadataKey', name: 'MetadataKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    NonFilterableMetadataKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#NonFilterableMetadataKeys', name: 'NonFilterableMetadataKeys', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PutInputVector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#PutInputVector', name: 'PutInputVector')
    PutVectorBucketPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#PutVectorBucketPolicyInput', name: 'PutVectorBucketPolicyInput')
    PutVectorBucketPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#PutVectorBucketPolicyOutput', name: 'PutVectorBucketPolicyOutput')
    PutVectorsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#PutVectorsInput', name: 'PutVectorsInput')
    PutVectorsInputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#PutVectorsInputList', name: 'PutVectorsInputList', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    PutVectorsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#PutVectorsOutput', name: 'PutVectorsOutput')
    QueryOutputVector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#QueryOutputVector', name: 'QueryOutputVector')
    QueryVectorsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#QueryVectorsInput', name: 'QueryVectorsInput')
    QueryVectorsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#QueryVectorsOutput', name: 'QueryVectorsOutput')
    QueryVectorsOutputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#QueryVectorsOutputList', name: 'QueryVectorsOutputList')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503, "smithy.api#retryable" => {}})
    SseType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.s3vectors#SseType', name: 'SseType')
    TooManyRequestsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TopK = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.s3vectors#TopK', name: 'TopK', traits: {"smithy.api#range" => {"min" => 1}})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client"})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3vectors#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    VectorBucket = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#VectorBucket', name: 'VectorBucket')
    VectorBucketArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#VectorBucketArn', name: 'VectorBucketArn', traits: {"aws.api#arnReference" => {}})
    VectorBucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#VectorBucketName', name: 'VectorBucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    VectorBucketPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#VectorBucketPolicy', name: 'VectorBucketPolicy')
    VectorBucketSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3vectors#VectorBucketSummary', name: 'VectorBucketSummary')
    VectorData = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.s3vectors#VectorData', name: 'VectorData')
    VectorKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3vectors#VectorKey', name: 'VectorKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    VectorMetadata = Smithy::Schema::Shapes::DocumentShape.new(id: 'com.amazonaws.s3vectors#VectorMetadata', name: 'VectorMetadata')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateIndexInput.add_member(:vector_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#documentation" => "<p>The name of the vector bucket to create the vector index in. </p>"}))
    CreateIndexInput.add_member(:vector_bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: 'vectorBucketArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the vector bucket to create the vector index in.</p>"}))
    CreateIndexInput.add_member(:index_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName', traits: {"smithy.api#documentation" => "<p>The name of the vector index to create. </p>", "smithy.api#required" => {}}))
    CreateIndexInput.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataType, location_name: 'dataType', traits: {"smithy.api#documentation" => "<p>The data type of the vectors to be inserted into the vector index. </p>", "smithy.api#required" => {}}))
    CreateIndexInput.add_member(:dimension, Smithy::Schema::Shapes::ShapeRef.new(shape: Dimension, location_name: 'dimension', traits: {"smithy.api#documentation" => "<p>The dimensions of the vectors to be inserted into the vector index. </p>", "smithy.api#required" => {}}))
    CreateIndexInput.add_member(:distance_metric, Smithy::Schema::Shapes::ShapeRef.new(shape: DistanceMetric, location_name: 'distanceMetric', traits: {"smithy.api#documentation" => "<p>The distance metric to be used for similarity search. </p>", "smithy.api#required" => {}}))
    CreateIndexInput.add_member(:metadata_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataConfiguration, location_name: 'metadataConfiguration', traits: {"smithy.api#documentation" => "<p>The metadata configuration for the vector index. </p>"}))
    CreateIndexInput.type = Types::CreateIndexInput
    CreateIndexOutput.type = Types::CreateIndexOutput
    CreateVectorBucketInput.add_member(:vector_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#documentation" => "<p>The name of the vector bucket to create. </p>", "smithy.api#required" => {}}))
    CreateVectorBucketInput.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'encryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The encryption configuration for the vector bucket. By default, if you don't specify, all new vectors in Amazon S3 vector buckets use server-side encryption with Amazon S3 managed keys (SSE-S3), specifically <code>AES256</code>. </p>"}))
    CreateVectorBucketInput.type = Types::CreateVectorBucketInput
    CreateVectorBucketOutput.type = Types::CreateVectorBucketOutput
    DataType.add_member(:float32, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLOAT32', traits: {"smithy.api#enumValue" => "float32"}))
    DeleteIndexInput.add_member(:vector_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#documentation" => "<p>The name of the vector bucket that contains the vector index. </p>"}))
    DeleteIndexInput.add_member(:index_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName', traits: {"smithy.api#documentation" => "<p>The name of the vector index to delete. </p>"}))
    DeleteIndexInput.add_member(:index_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn', traits: {"smithy.api#documentation" => "<p>The ARN of the vector index to delete.</p>"}))
    DeleteIndexInput.type = Types::DeleteIndexInput
    DeleteIndexOutput.type = Types::DeleteIndexOutput
    DeleteVectorBucketInput.add_member(:vector_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#documentation" => "<p>The name of the vector bucket to delete.</p>"}))
    DeleteVectorBucketInput.add_member(:vector_bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: 'vectorBucketArn', traits: {"smithy.api#documentation" => "<p>The ARN of the vector bucket to delete.</p>"}))
    DeleteVectorBucketInput.type = Types::DeleteVectorBucketInput
    DeleteVectorBucketOutput.type = Types::DeleteVectorBucketOutput
    DeleteVectorBucketPolicyInput.add_member(:vector_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#documentation" => "<p>The name of the vector bucket to delete the policy from.</p>"}))
    DeleteVectorBucketPolicyInput.add_member(:vector_bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: 'vectorBucketArn', traits: {"smithy.api#documentation" => "<p>The ARN of the vector bucket to delete the policy from.</p>"}))
    DeleteVectorBucketPolicyInput.type = Types::DeleteVectorBucketPolicyInput
    DeleteVectorBucketPolicyOutput.type = Types::DeleteVectorBucketPolicyOutput
    DeleteVectorsInput.add_member(:vector_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#documentation" => "<p>The name of the vector bucket that contains the vector index. </p>"}))
    DeleteVectorsInput.add_member(:index_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName', traits: {"smithy.api#documentation" => "<p>The name of the vector index that contains a vector you want to delete.</p>"}))
    DeleteVectorsInput.add_member(:index_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn', traits: {"smithy.api#documentation" => "<p>The ARN of the vector index that contains a vector you want to delete.</p>"}))
    DeleteVectorsInput.add_member(:keys, Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVectorsInputList, location_name: 'keys', traits: {"smithy.api#documentation" => "<p>The keys of the vectors to delete. </p>", "smithy.api#required" => {}}))
    DeleteVectorsInput.type = Types::DeleteVectorsInput
    DeleteVectorsInputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VectorKey)
    DeleteVectorsOutput.type = Types::DeleteVectorsOutput
    DistanceMetric.add_member(:euclidean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EUCLIDEAN', traits: {"smithy.api#enumValue" => "euclidean"}))
    DistanceMetric.add_member(:cosine, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COSINE', traits: {"smithy.api#enumValue" => "cosine"}))
    EncryptionConfiguration.add_member(:sse_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SseType, location_name: 'sseType', traits: {"smithy.api#default" => "AES256", "smithy.api#documentation" => "<p>The server-side encryption type to use for the encryption configuration of the vector bucket. By default, if you don't specify, all new vectors in Amazon S3 vector buckets use server-side encryption with Amazon S3 managed keys (SSE-S3), specifically <code>AES256</code>.</p>"}))
    EncryptionConfiguration.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>Amazon Web Services Key Management Service (KMS) customer managed key ID to use for the encryption configuration. This parameter is allowed if and only if <code>sseType</code> is set to <code>aws:kms</code>.</p> <p>To specify the KMS key, you must use the format of the KMS key Amazon Resource Name (ARN).</p> <p>For example, specify Key ARN in the following format: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p>"}))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    Float32VectorData.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Float)
    GetIndexInput.add_member(:vector_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#documentation" => "<p>The name of the vector bucket that contains the vector index. </p>"}))
    GetIndexInput.add_member(:index_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName', traits: {"smithy.api#documentation" => "<p>The name of the vector index.</p>"}))
    GetIndexInput.add_member(:index_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn', traits: {"smithy.api#documentation" => "<p>The ARN of the vector index.</p>"}))
    GetIndexInput.type = Types::GetIndexInput
    GetIndexOutput.add_member(:index, Smithy::Schema::Shapes::ShapeRef.new(shape: Index, location_name: 'index', traits: {"smithy.api#documentation" => "<p>The attributes of the vector index.</p>", "smithy.api#required" => {}}))
    GetIndexOutput.type = Types::GetIndexOutput
    GetOutputVector.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The name of the vector. </p>", "smithy.api#required" => {}}))
    GetOutputVector.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorData, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The vector data of the vector. </p>"}))
    GetOutputVector.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>Metadata about the vector. </p>"}))
    GetOutputVector.type = Types::GetOutputVector
    GetVectorBucketInput.add_member(:vector_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#documentation" => "<p>The name of the vector bucket to retrieve information about.</p>"}))
    GetVectorBucketInput.add_member(:vector_bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: 'vectorBucketArn', traits: {"smithy.api#documentation" => "<p>The ARN of the vector bucket to retrieve information about.</p>"}))
    GetVectorBucketInput.type = Types::GetVectorBucketInput
    GetVectorBucketOutput.add_member(:vector_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucket, location_name: 'vectorBucket', traits: {"smithy.api#documentation" => "<p>The attributes of the vector bucket.</p>", "smithy.api#required" => {}}))
    GetVectorBucketOutput.type = Types::GetVectorBucketOutput
    GetVectorBucketPolicyInput.add_member(:vector_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#documentation" => "<p>The name of the vector bucket.</p>"}))
    GetVectorBucketPolicyInput.add_member(:vector_bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: 'vectorBucketArn', traits: {"smithy.api#documentation" => "<p>The ARN of the vector bucket.</p>"}))
    GetVectorBucketPolicyInput.type = Types::GetVectorBucketPolicyInput
    GetVectorBucketPolicyOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketPolicy, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>The <code>JSON</code> that defines the policy.</p>"}))
    GetVectorBucketPolicyOutput.type = Types::GetVectorBucketPolicyOutput
    GetVectorsInput.add_member(:vector_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#documentation" => "<p>The name of the vector bucket that contains the vector index. </p>"}))
    GetVectorsInput.add_member(:index_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName', traits: {"smithy.api#documentation" => "<p>The name of the vector index.</p>"}))
    GetVectorsInput.add_member(:index_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn', traits: {"smithy.api#documentation" => "<p>The ARN of the vector index.</p>"}))
    GetVectorsInput.add_member(:keys, Smithy::Schema::Shapes::ShapeRef.new(shape: GetVectorsInputList, location_name: 'keys', traits: {"smithy.api#documentation" => "<p>The names of the vectors you want to return attributes for. </p>", "smithy.api#required" => {}}))
    GetVectorsInput.add_member(:return_data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'returnData', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether to include the vector data in the response. The default value is <code>false</code>.</p>"}))
    GetVectorsInput.add_member(:return_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'returnMetadata', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether to include metadata in the response. The default value is <code>false</code>.</p>"}))
    GetVectorsInput.type = Types::GetVectorsInput
    GetVectorsInputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VectorKey)
    GetVectorsOutput.add_member(:vectors, Smithy::Schema::Shapes::ShapeRef.new(shape: GetVectorsOutputList, location_name: 'vectors', traits: {"smithy.api#documentation" => "<p>The attributes of the vectors.</p>", "smithy.api#required" => {}}))
    GetVectorsOutput.type = Types::GetVectorsOutput
    GetVectorsOutputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GetOutputVector)
    Index.add_member(:vector_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#documentation" => "<p>The name of the vector bucket that contains the vector index. </p>", "smithy.api#required" => {}}))
    Index.add_member(:index_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName', traits: {"smithy.api#documentation" => "<p>The name of the vector index.</p>", "smithy.api#required" => {}}))
    Index.add_member(:index_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the vector index.</p>", "smithy.api#required" => {}}))
    Index.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>Date and time when the vector index was created. </p>", "smithy.api#required" => {}}))
    Index.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataType, location_name: 'dataType', traits: {"smithy.api#documentation" => "<p>The data type of the vectors inserted into the vector index. </p>", "smithy.api#required" => {}}))
    Index.add_member(:dimension, Smithy::Schema::Shapes::ShapeRef.new(shape: Dimension, location_name: 'dimension', traits: {"smithy.api#documentation" => "<p>The number of values in the vectors that are inserted into the vector index. </p>", "smithy.api#required" => {}}))
    Index.add_member(:distance_metric, Smithy::Schema::Shapes::ShapeRef.new(shape: DistanceMetric, location_name: 'distanceMetric', traits: {"smithy.api#documentation" => "<p>The distance metric to be used for similarity search. </p>", "smithy.api#required" => {}}))
    Index.add_member(:metadata_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataConfiguration, location_name: 'metadataConfiguration', traits: {"smithy.api#documentation" => "<p>The metadata configuration for the vector index. </p>"}))
    Index.type = Types::Index
    IndexSummary.add_member(:vector_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#documentation" => "<p>The name of the vector bucket that contains the vector index. </p>", "smithy.api#required" => {}}))
    IndexSummary.add_member(:index_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName', traits: {"smithy.api#documentation" => "<p>The name of the vector index.</p>", "smithy.api#required" => {}}))
    IndexSummary.add_member(:index_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the vector index.</p>", "smithy.api#required" => {}}))
    IndexSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>Date and time when the vector index was created. </p>", "smithy.api#required" => {}}))
    IndexSummary.type = Types::IndexSummary
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    KmsDisabledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    KmsDisabledException.type = Types::KmsDisabledException
    KmsInvalidKeyUsageException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    KmsInvalidKeyUsageException.type = Types::KmsInvalidKeyUsageException
    KmsInvalidStateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    KmsInvalidStateException.type = Types::KmsInvalidStateException
    KmsNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    KmsNotFoundException.type = Types::KmsNotFoundException
    ListIndexesInput.add_member(:vector_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#documentation" => "<p>The name of the vector bucket that contains the vector indexes. </p>"}))
    ListIndexesInput.add_member(:vector_bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: 'vectorBucketArn', traits: {"smithy.api#documentation" => "<p>The ARN of the vector bucket that contains the vector indexes.</p>"}))
    ListIndexesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to be returned in the response. </p>"}))
    ListIndexesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The previous pagination token. </p>"}))
    ListIndexesInput.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesPrefix, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>Limits the response to vector indexes that begin with the specified prefix.</p>"}))
    ListIndexesInput.type = Types::ListIndexesInput
    ListIndexesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The next pagination token.</p>"}))
    ListIndexesOutput.add_member(:indexes, Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesOutputList, location_name: 'indexes', traits: {"smithy.api#documentation" => "<p>The attributes of the vector indexes</p>", "smithy.api#required" => {}}))
    ListIndexesOutput.type = Types::ListIndexesOutput
    ListIndexesOutputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IndexSummary)
    ListOutputVector.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The name of the vector. </p>", "smithy.api#required" => {}}))
    ListOutputVector.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorData, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The vector data of the vector. </p>"}))
    ListOutputVector.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>Metadata about the vector. </p>"}))
    ListOutputVector.type = Types::ListOutputVector
    ListVectorBucketsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorBucketsMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of vector buckets to be returned in the response. </p>"}))
    ListVectorBucketsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorBucketsNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The previous pagination token. </p>"}))
    ListVectorBucketsInput.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorBucketsPrefix, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>Limits the response to vector buckets that begin with the specified prefix.</p>"}))
    ListVectorBucketsInput.type = Types::ListVectorBucketsInput
    ListVectorBucketsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorBucketsNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The element is included in the response when there are more buckets to be listed with pagination. </p>"}))
    ListVectorBucketsOutput.add_member(:vector_buckets, Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorBucketsOutputList, location_name: 'vectorBuckets', traits: {"smithy.api#documentation" => "<p>The list of vector buckets owned by the requester. </p>", "smithy.api#required" => {}}))
    ListVectorBucketsOutput.type = Types::ListVectorBucketsOutput
    ListVectorBucketsOutputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketSummary)
    ListVectorsInput.add_member(:vector_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#documentation" => "<p>The name of the vector bucket. </p>"}))
    ListVectorsInput.add_member(:index_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName', traits: {"smithy.api#documentation" => "<p>The name of the vector index.</p>"}))
    ListVectorsInput.add_member(:index_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource Name (ARN) of the vector index.</p>"}))
    ListVectorsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorsMaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 500, "smithy.api#documentation" => "<p>The maximum number of vectors to return on a page.</p> <p>If you don't specify <code>maxResults</code>, the <code>ListVectors</code> operation uses a default value of 500.</p> <p>If the processed dataset size exceeds 1 MB before reaching the <code>maxResults</code> value, the operation stops and returns the vectors that are retrieved up to that point, along with a <code>nextToken</code> that you can use in a subsequent request to retrieve the next set of results.</p>"}))
    ListVectorsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorsNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token from a previous request. The value of this field is empty for an initial request.</p>"}))
    ListVectorsInput.add_member(:segment_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorsSegmentCount, location_name: 'segmentCount', traits: {"smithy.api#default" => 1, "smithy.api#documentation" => "<p>For a parallel <code>ListVectors</code> request, <code>segmentCount</code> represents the total number of vector segments into which the <code>ListVectors</code> operation will be divided. The value of <code>segmentCount</code> corresponds to the number of application workers that will perform the parallel <code>ListVectors</code> operation. For example, if you want to use four application threads to list vectors in a vector index, specify a <code>segmentCount</code> value of 4. </p> <p>If you specify a <code>segmentCount</code> value of 1, the <code>ListVectors</code> operation will be sequential rather than parallel.</p> <p>If you specify <code>segmentCount</code>, you must also specify <code>segmentIndex</code>.</p>"}))
    ListVectorsInput.add_member(:segment_index, Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorsSegmentIndex, location_name: 'segmentIndex', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>For a parallel <code>ListVectors</code> request, <code>segmentIndex</code> is the index of the segment from which to list vectors in the current request. It identifies an individual segment to be listed by an application worker. </p> <p>Segment IDs are zero-based, so the first segment is always 0. For example, if you want to use four application threads to list vectors in a vector index, then the first thread specifies a <code>segmentIndex</code> value of 0, the second thread specifies 1, and so on. </p> <p>The value of <code>segmentIndex</code> must be less than the value provided for <code>segmentCount</code>. </p> <p>If you provide <code>segmentIndex</code>, you must also provide <code>segmentCount</code>.</p>"}))
    ListVectorsInput.add_member(:return_data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'returnData', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If true, the vector data of each vector will be included in the response. The default value is <code>false</code>.</p>"}))
    ListVectorsInput.add_member(:return_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'returnMetadata', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If true, the metadata associated with each vector will be included in the response. The default value is <code>false</code>.</p>"}))
    ListVectorsInput.type = Types::ListVectorsInput
    ListVectorsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorsNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token to be used in the subsequent request. The field is empty if no further pagination is required.</p>"}))
    ListVectorsOutput.add_member(:vectors, Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorsOutputList, location_name: 'vectors', traits: {"smithy.api#documentation" => "<p>Vectors in the current segment.</p>", "smithy.api#required" => {}}))
    ListVectorsOutput.type = Types::ListVectorsOutput
    ListVectorsOutputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOutputVector)
    MetadataConfiguration.add_member(:non_filterable_metadata_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: NonFilterableMetadataKeys, location_name: 'nonFilterableMetadataKeys', traits: {"smithy.api#documentation" => "<p>Non-filterable metadata keys allow you to enrich vectors with additional context during storage and retrieval. Unlike default metadata keys, these keys can’t be used as query filters. Non-filterable metadata keys can be retrieved but can’t be searched, queried, or filtered. You can access non-filterable metadata keys of your vectors after finding the vectors. For more information about non-filterable metadata keys, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-vectors.html\">Vectors</a> and <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-limitations.html\">Limitations and restrictions</a> in the <i>Amazon S3 User Guide</i>. </p>", "smithy.api#required" => {}}))
    MetadataConfiguration.type = Types::MetadataConfiguration
    NonFilterableMetadataKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataKey)
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    NotFoundException.type = Types::NotFoundException
    PutInputVector.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The name of the vector. The key uniquely identifies the vector in a vector index. </p>", "smithy.api#required" => {}}))
    PutInputVector.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorData, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The vector data of the vector. </p> <p>Vector dimensions must match the dimension count that's configured for the vector index.</p> <ul> <li> <p>For the <code>cosine</code> distance metric, zero vectors (vectors containing all zeros) aren't allowed.</p> </li> <li> <p>For both <code>cosine</code> and <code>euclidean</code> distance metrics, vector data must contain only valid floating-point values. Invalid values such as NaN (Not a Number) or Infinity aren't allowed.</p> </li> </ul>", "smithy.api#required" => {}}))
    PutInputVector.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorMetadata, location_name: 'metadata', traits: {"smithy.api#default" => {}, "smithy.api#documentation" => "<p>Metadata about the vector. All metadata entries undergo validation to ensure they meet the format requirements for size and data types.</p>"}))
    PutInputVector.type = Types::PutInputVector
    PutVectorBucketPolicyInput.add_member(:vector_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#documentation" => "<p>The name of the vector bucket.</p>"}))
    PutVectorBucketPolicyInput.add_member(:vector_bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: 'vectorBucketArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the vector bucket.</p>"}))
    PutVectorBucketPolicyInput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketPolicy, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>The <code>JSON</code> that defines the policy. For more information about bucket policies for S3 Vectors, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-bucket-policy.html\">Managing vector bucket policies</a> in the <i>Amazon S3 User Guide</i>.</p>", "smithy.api#required" => {}}))
    PutVectorBucketPolicyInput.type = Types::PutVectorBucketPolicyInput
    PutVectorBucketPolicyOutput.type = Types::PutVectorBucketPolicyOutput
    PutVectorsInput.add_member(:vector_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#documentation" => "<p>The name of the vector bucket that contains the vector index. </p>"}))
    PutVectorsInput.add_member(:index_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName', traits: {"smithy.api#documentation" => "<p>The name of the vector index where you want to write vectors. </p>"}))
    PutVectorsInput.add_member(:index_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn', traits: {"smithy.api#documentation" => "<p>The ARN of the vector index where you want to write vectors.</p>"}))
    PutVectorsInput.add_member(:vectors, Smithy::Schema::Shapes::ShapeRef.new(shape: PutVectorsInputList, location_name: 'vectors', traits: {"smithy.api#documentation" => "<p>The vectors to add to a vector index. The number of vectors in a single request must not exceed the resource capacity, otherwise the request will be rejected with the error <code>ServiceUnavailableException</code> with the error message \"Currently unable to handle the request\".</p>", "smithy.api#required" => {}}))
    PutVectorsInput.type = Types::PutVectorsInput
    PutVectorsInputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PutInputVector)
    PutVectorsOutput.type = Types::PutVectorsOutput
    QueryOutputVector.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key of the vector in the approximate nearest neighbor search.</p>", "smithy.api#required" => {}}))
    QueryOutputVector.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorData, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The vector data associated with the vector, if requested. </p>"}))
    QueryOutputVector.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>The metadata associated with the vector, if requested.</p>"}))
    QueryOutputVector.add_member(:distance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Float, location_name: 'distance', traits: {"smithy.api#documentation" => "<p>The measure of similarity between the vector in the response and the query vector.</p>"}))
    QueryOutputVector.type = Types::QueryOutputVector
    QueryVectorsInput.add_member(:vector_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#documentation" => "<p>The name of the vector bucket that contains the vector index. </p>"}))
    QueryVectorsInput.add_member(:index_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName', traits: {"smithy.api#documentation" => "<p>The name of the vector index that you want to query. </p>"}))
    QueryVectorsInput.add_member(:index_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn', traits: {"smithy.api#documentation" => "<p>The ARN of the vector index that you want to query.</p>"}))
    QueryVectorsInput.add_member(:top_k, Smithy::Schema::Shapes::ShapeRef.new(shape: TopK, location_name: 'topK', traits: {"smithy.api#documentation" => "<p>The number of results to return for each query.</p>", "smithy.api#required" => {}}))
    QueryVectorsInput.add_member(:query_vector, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorData, location_name: 'queryVector', traits: {"smithy.api#documentation" => "<p>The query vector. Ensure that the query vector has the same dimension as the dimension of the vector index that's being queried. For example, if your vector index contains vectors with 384 dimensions, your query vector must also have 384 dimensions. </p>", "smithy.api#required" => {}}))
    QueryVectorsInput.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Document, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>Metadata filter to apply during the query. For more information about metadata keys, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-metadata-filtering.html\">Metadata filtering</a> in the <i>Amazon S3 User Guide</i>. </p>"}))
    QueryVectorsInput.add_member(:return_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'returnMetadata', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether to include metadata in the response. The default value is <code>false</code>.</p>"}))
    QueryVectorsInput.add_member(:return_distance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'returnDistance', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether to include the computed distance in the response. The default value is <code>false</code>.</p>"}))
    QueryVectorsInput.type = Types::QueryVectorsInput
    QueryVectorsOutput.add_member(:vectors, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryVectorsOutputList, location_name: 'vectors', traits: {"smithy.api#documentation" => "<p>The vectors in the approximate nearest neighbor search.</p>", "smithy.api#required" => {}}))
    QueryVectorsOutput.type = Types::QueryVectorsOutput
    QueryVectorsOutputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryOutputVector)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SseType.add_member(:aes256, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AES256', traits: {"smithy.api#enumValue" => "AES256"}))
    SseType.add_member(:aws_kms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_KMS', traits: {"smithy.api#enumValue" => "aws:kms"}))
    TooManyRequestsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList', traits: {"smithy.api#documentation" => "<p>A list of specific validation failures that are encountered during input processing. Each entry in the list contains a path to the field that failed validation and a detailed message that explains why the validation failed. To satisfy multiple constraints, a field can appear multiple times in this list if it failed. You can use the information to identify and fix the specific validation issues in your request.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'path', traits: {"smithy.api#documentation" => "<p>A path about the validation exception.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message about the validation exception.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    VectorBucket.add_member(:vector_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#documentation" => "<p>The name of the vector bucket. </p>", "smithy.api#required" => {}}))
    VectorBucket.add_member(:vector_bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: 'vectorBucketArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the vector bucket. </p>", "smithy.api#required" => {}}))
    VectorBucket.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>Date and time when the vector bucket was created. </p>", "smithy.api#required" => {}}))
    VectorBucket.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'encryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The encryption configuration for the vector bucket.</p>"}))
    VectorBucket.type = Types::VectorBucket
    VectorBucketSummary.add_member(:vector_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketName, location_name: 'vectorBucketName', traits: {"smithy.api#documentation" => "<p>The name of the vector bucket. </p>", "smithy.api#required" => {}}))
    VectorBucketSummary.add_member(:vector_bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: 'vectorBucketArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the vector bucket. </p>", "smithy.api#required" => {}}))
    VectorBucketSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>Date and time when the vector bucket was created. </p>", "smithy.api#required" => {}}))
    VectorBucketSummary.type = Types::VectorBucketSummary
    VectorData.add_member(:float32, Types::VectorData::Float32, Smithy::Schema::Shapes::ShapeRef.new(shape: Float32VectorData, location_name: 'float32', traits: {"smithy.api#documentation" => "<p>The vector data as 32-bit floating point numbers. The number of elements in this array must exactly match the dimension of the vector index where the operation is being performed.</p>"}))
    VectorData.add_member(:unknown, Types::VectorData::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    VectorData.type = Types::VectorData

    S3Vectors = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.s3vectors#S3Vectors"
      service.name = "S3Vectors"
      service.version = "2025-07-15"
      service.traits = {"aws.api#service" => {"sdkId" => "S3Vectors", "arnNamespace" => "s3vectors", "endpointPrefix" => "s3vectors"}, "aws.auth#sigv4" => {"name" => "s3vectors"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon S3 Vectors"}
      service.add_operation(:create_index, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#CreateIndex"
        operation.name = "CreateIndex"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIndexInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIndexOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateIndex", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_vector_bucket, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#CreateVectorBucket"
        operation.name = "CreateVectorBucket"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVectorBucketInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVectorBucketOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateVectorBucket", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_index, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#DeleteIndex"
        operation.name = "DeleteIndex"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIndexInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIndexOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteIndex", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_vector_bucket, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#DeleteVectorBucket"
        operation.name = "DeleteVectorBucket"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVectorBucketInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVectorBucketOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteVectorBucket", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_vector_bucket_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#DeleteVectorBucketPolicy"
        operation.name = "DeleteVectorBucketPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVectorBucketPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVectorBucketPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteVectorBucketPolicy", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_vectors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#DeleteVectors"
        operation.name = "DeleteVectors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVectorsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVectorsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidKeyUsageException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteVectors", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_index, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#GetIndex"
        operation.name = "GetIndex"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIndexInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIndexOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/GetIndex", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_vector_bucket, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#GetVectorBucket"
        operation.name = "GetVectorBucket"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVectorBucketInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVectorBucketOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/GetVectorBucket", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_vector_bucket_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#GetVectorBucketPolicy"
        operation.name = "GetVectorBucketPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVectorBucketPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVectorBucketPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/GetVectorBucketPolicy", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_vectors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#GetVectors"
        operation.name = "GetVectors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVectorsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVectorsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidKeyUsageException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/GetVectors", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_indexes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#ListIndexes"
        operation.name = "ListIndexes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ListIndexes", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIndexes.new
      end)
      service.add_operation(:list_vector_buckets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#ListVectorBuckets"
        operation.name = "ListVectorBuckets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorBucketsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorBucketsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ListVectorBuckets", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVectorBuckets.new
      end)
      service.add_operation(:list_vectors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#ListVectors"
        operation.name = "ListVectors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ListVectors", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVectors.new
      end)
      service.add_operation(:put_vector_bucket_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#PutVectorBucketPolicy"
        operation.name = "PutVectorBucketPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutVectorBucketPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutVectorBucketPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/PutVectorBucketPolicy", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_vectors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#PutVectors"
        operation.name = "PutVectors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutVectorsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutVectorsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidKeyUsageException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/PutVectors", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:query_vectors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3vectors#QueryVectors"
        operation.name = "QueryVectors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryVectorsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryVectorsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidKeyUsageException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"uri" => "/QueryVectors", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
