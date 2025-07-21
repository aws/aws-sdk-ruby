# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3Vectors
  module Types

    # Access denied.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because a vector bucket name or a vector index name
    # already exists. Vector bucket names must be unique within your Amazon
    # Web Services account for each Amazon Web Services Region. Vector index
    # names must be unique within your vector bucket. Choose a different
    # vector bucket name or vector index name, and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vector_bucket_name
    #   The name of the vector bucket to create the vector index in.
    #   @return [String]
    #
    # @!attribute [rw] vector_bucket_arn
    #   The Amazon Resource Name (ARN) of the vector bucket to create the
    #   vector index in.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the vector index to create.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the vectors to be inserted into the vector index.
    #   @return [String]
    #
    # @!attribute [rw] dimension
    #   The dimensions of the vectors to be inserted into the vector index.
    #   @return [Integer]
    #
    # @!attribute [rw] distance_metric
    #   The distance metric to be used for similarity search.
    #   @return [String]
    #
    # @!attribute [rw] metadata_configuration
    #   The metadata configuration for the vector index.
    #   @return [Types::MetadataConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/CreateIndexInput AWS API Documentation
    #
    class CreateIndexInput < Struct.new(
      :vector_bucket_name,
      :vector_bucket_arn,
      :index_name,
      :data_type,
      :dimension,
      :distance_metric,
      :metadata_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/CreateIndexOutput AWS API Documentation
    #
    class CreateIndexOutput < Aws::EmptyStructure; end

    # @!attribute [rw] vector_bucket_name
    #   The name of the vector bucket to create.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration for the vector bucket. By default, if
    #   you don't specify, all new vectors in Amazon S3 vector buckets use
    #   server-side encryption with Amazon S3 managed keys (SSE-S3),
    #   specifically `AES256`.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/CreateVectorBucketInput AWS API Documentation
    #
    class CreateVectorBucketInput < Struct.new(
      :vector_bucket_name,
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/CreateVectorBucketOutput AWS API Documentation
    #
    class CreateVectorBucketOutput < Aws::EmptyStructure; end

    # @!attribute [rw] vector_bucket_name
    #   The name of the vector bucket that contains the vector index.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the vector index to delete.
    #   @return [String]
    #
    # @!attribute [rw] index_arn
    #   The ARN of the vector index to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/DeleteIndexInput AWS API Documentation
    #
    class DeleteIndexInput < Struct.new(
      :vector_bucket_name,
      :index_name,
      :index_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/DeleteIndexOutput AWS API Documentation
    #
    class DeleteIndexOutput < Aws::EmptyStructure; end

    # @!attribute [rw] vector_bucket_name
    #   The name of the vector bucket to delete.
    #   @return [String]
    #
    # @!attribute [rw] vector_bucket_arn
    #   The ARN of the vector bucket to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/DeleteVectorBucketInput AWS API Documentation
    #
    class DeleteVectorBucketInput < Struct.new(
      :vector_bucket_name,
      :vector_bucket_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/DeleteVectorBucketOutput AWS API Documentation
    #
    class DeleteVectorBucketOutput < Aws::EmptyStructure; end

    # @!attribute [rw] vector_bucket_name
    #   The name of the vector bucket to delete the policy from.
    #   @return [String]
    #
    # @!attribute [rw] vector_bucket_arn
    #   The ARN of the vector bucket to delete the policy from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/DeleteVectorBucketPolicyInput AWS API Documentation
    #
    class DeleteVectorBucketPolicyInput < Struct.new(
      :vector_bucket_name,
      :vector_bucket_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/DeleteVectorBucketPolicyOutput AWS API Documentation
    #
    class DeleteVectorBucketPolicyOutput < Aws::EmptyStructure; end

    # @!attribute [rw] vector_bucket_name
    #   The name of the vector bucket that contains the vector index.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the vector index that contains a vector you want to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] index_arn
    #   The ARN of the vector index that contains a vector you want to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] keys
    #   The keys of the vectors to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/DeleteVectorsInput AWS API Documentation
    #
    class DeleteVectorsInput < Struct.new(
      :vector_bucket_name,
      :index_name,
      :index_arn,
      :keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/DeleteVectorsOutput AWS API Documentation
    #
    class DeleteVectorsOutput < Aws::EmptyStructure; end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  The encryption configuration for a vector bucket. By default, if you
    # don't specify, all new vectors in Amazon S3 vector buckets use
    # server-side encryption with Amazon S3 managed keys (SSE-S3),
    # specifically `AES256`.
    #
    # @!attribute [rw] sse_type
    #   The server-side encryption type to use for the encryption
    #   configuration of the vector bucket. By default, if you don't
    #   specify, all new vectors in Amazon S3 vector buckets use server-side
    #   encryption with Amazon S3 managed keys (SSE-S3), specifically
    #   `AES256`.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   Amazon Web Services Key Management Service (KMS) customer managed
    #   key ID to use for the encryption configuration. This parameter is
    #   allowed if and only if `sseType` is set to `aws:kms`.
    #
    #   To specify the KMS key, you must use the format of the KMS key
    #   Amazon Resource Name (ARN).
    #
    #   For example, specify Key ARN in the following format:
    #   `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :sse_type,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vector_bucket_name
    #   The name of the vector bucket that contains the vector index.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the vector index.
    #   @return [String]
    #
    # @!attribute [rw] index_arn
    #   The ARN of the vector index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/GetIndexInput AWS API Documentation
    #
    class GetIndexInput < Struct.new(
      :vector_bucket_name,
      :index_name,
      :index_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] index
    #   The attributes of the vector index.
    #   @return [Types::Index]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/GetIndexOutput AWS API Documentation
    #
    class GetIndexOutput < Struct.new(
      :index)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  The attributes of a vector returned by the `GetVectors` operation.
    #
    # @!attribute [rw] key
    #   The name of the vector.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The vector data of the vector.
    #   @return [Types::VectorData]
    #
    # @!attribute [rw] metadata
    #   Metadata about the vector.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/GetOutputVector AWS API Documentation
    #
    class GetOutputVector < Struct.new(
      :key,
      :data,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vector_bucket_name
    #   The name of the vector bucket to retrieve information about.
    #   @return [String]
    #
    # @!attribute [rw] vector_bucket_arn
    #   The ARN of the vector bucket to retrieve information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/GetVectorBucketInput AWS API Documentation
    #
    class GetVectorBucketInput < Struct.new(
      :vector_bucket_name,
      :vector_bucket_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vector_bucket
    #   The attributes of the vector bucket.
    #   @return [Types::VectorBucket]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/GetVectorBucketOutput AWS API Documentation
    #
    class GetVectorBucketOutput < Struct.new(
      :vector_bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vector_bucket_name
    #   The name of the vector bucket.
    #   @return [String]
    #
    # @!attribute [rw] vector_bucket_arn
    #   The ARN of the vector bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/GetVectorBucketPolicyInput AWS API Documentation
    #
    class GetVectorBucketPolicyInput < Struct.new(
      :vector_bucket_name,
      :vector_bucket_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The `JSON` that defines the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/GetVectorBucketPolicyOutput AWS API Documentation
    #
    class GetVectorBucketPolicyOutput < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vector_bucket_name
    #   The name of the vector bucket that contains the vector index.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the vector index.
    #   @return [String]
    #
    # @!attribute [rw] index_arn
    #   The ARN of the vector index.
    #   @return [String]
    #
    # @!attribute [rw] keys
    #   The names of the vectors you want to return attributes for.
    #   @return [Array<String>]
    #
    # @!attribute [rw] return_data
    #   Indicates whether to include the vector data in the response. The
    #   default value is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] return_metadata
    #   Indicates whether to include metadata in the response. The default
    #   value is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/GetVectorsInput AWS API Documentation
    #
    class GetVectorsInput < Struct.new(
      :vector_bucket_name,
      :index_name,
      :index_arn,
      :keys,
      :return_data,
      :return_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vectors
    #   The attributes of the vectors.
    #   @return [Array<Types::GetOutputVector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/GetVectorsOutput AWS API Documentation
    #
    class GetVectorsOutput < Struct.new(
      :vectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  The attributes of a vector index.
    #
    # @!attribute [rw] vector_bucket_name
    #   The name of the vector bucket that contains the vector index.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the vector index.
    #   @return [String]
    #
    # @!attribute [rw] index_arn
    #   The Amazon Resource Name (ARN) of the vector index.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Date and time when the vector index was created.
    #   @return [Time]
    #
    # @!attribute [rw] data_type
    #   The data type of the vectors inserted into the vector index.
    #   @return [String]
    #
    # @!attribute [rw] dimension
    #   The number of values in the vectors that are inserted into the
    #   vector index.
    #   @return [Integer]
    #
    # @!attribute [rw] distance_metric
    #   The distance metric to be used for similarity search.
    #   @return [String]
    #
    # @!attribute [rw] metadata_configuration
    #   The metadata configuration for the vector index.
    #   @return [Types::MetadataConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/Index AWS API Documentation
    #
    class Index < Struct.new(
      :vector_bucket_name,
      :index_name,
      :index_arn,
      :creation_time,
      :data_type,
      :dimension,
      :distance_metric,
      :metadata_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  Summary information about a vector index.
    #
    # @!attribute [rw] vector_bucket_name
    #   The name of the vector bucket that contains the vector index.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the vector index.
    #   @return [String]
    #
    # @!attribute [rw] index_arn
    #   The Amazon Resource Name (ARN) of the vector index.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Date and time when the vector index was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/IndexSummary AWS API Documentation
    #
    class IndexSummary < Struct.new(
      :vector_bucket_name,
      :index_name,
      :index_arn,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed due to an internal server error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified Amazon Web Services KMS key isn't enabled.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/KmsDisabledException AWS API Documentation
    #
    class KmsDisabledException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected for one of the following reasons:
    #
    # * The `KeyUsage` value of the KMS key is incompatible with the API
    #   operation.
    #
    # * The encryption algorithm or signing algorithm specified for the
    #   operation is incompatible with the type of key material in the KMS
    #   key (`KeySpec`).
    #
    # For more information, see [InvalidKeyUsageException][1] in the *Amazon
    # Web Services Key Management Service API Reference*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html#API_Encrypt_Errors
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/KmsInvalidKeyUsageException AWS API Documentation
    #
    class KmsInvalidKeyUsageException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The key state of the KMS key isn't compatible with the operation.
    #
    # For more information, see [KMSInvalidStateException][1] in the *Amazon
    # Web Services Key Management Service API Reference*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html#API_Encrypt_Errors
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/KmsInvalidStateException AWS API Documentation
    #
    class KmsInvalidStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The KMS key can't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/KmsNotFoundException AWS API Documentation
    #
    class KmsNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vector_bucket_name
    #   The name of the vector bucket that contains the vector indexes.
    #   @return [String]
    #
    # @!attribute [rw] vector_bucket_arn
    #   The ARN of the vector bucket that contains the vector indexes.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be returned in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The previous pagination token.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   Limits the response to vector indexes that begin with the specified
    #   prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/ListIndexesInput AWS API Documentation
    #
    class ListIndexesInput < Struct.new(
      :vector_bucket_name,
      :vector_bucket_arn,
      :max_results,
      :next_token,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next pagination token.
    #   @return [String]
    #
    # @!attribute [rw] indexes
    #   The attributes of the vector indexes
    #   @return [Array<Types::IndexSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/ListIndexesOutput AWS API Documentation
    #
    class ListIndexesOutput < Struct.new(
      :next_token,
      :indexes)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  The attributes of a vector returned by the `ListVectors` operation.
    #
    # @!attribute [rw] key
    #   The name of the vector.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The vector data of the vector.
    #   @return [Types::VectorData]
    #
    # @!attribute [rw] metadata
    #   Metadata about the vector.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/ListOutputVector AWS API Documentation
    #
    class ListOutputVector < Struct.new(
      :key,
      :data,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of vector buckets to be returned in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The previous pagination token.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   Limits the response to vector buckets that begin with the specified
    #   prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/ListVectorBucketsInput AWS API Documentation
    #
    class ListVectorBucketsInput < Struct.new(
      :max_results,
      :next_token,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The element is included in the response when there are more buckets
    #   to be listed with pagination.
    #   @return [String]
    #
    # @!attribute [rw] vector_buckets
    #   The list of vector buckets owned by the requester.
    #   @return [Array<Types::VectorBucketSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/ListVectorBucketsOutput AWS API Documentation
    #
    class ListVectorBucketsOutput < Struct.new(
      :next_token,
      :vector_buckets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vector_bucket_name
    #   The name of the vector bucket.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the vector index.
    #   @return [String]
    #
    # @!attribute [rw] index_arn
    #   The Amazon resource Name (ARN) of the vector index.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of vectors to return on a page.
    #
    #   If you don't specify `maxResults`, the `ListVectors` operation uses
    #   a default value of 500.
    #
    #   If the processed dataset size exceeds 1 MB before reaching the
    #   `maxResults` value, the operation stops and returns the vectors that
    #   are retrieved up to that point, along with a `nextToken` that you
    #   can use in a subsequent request to retrieve the next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token from a previous request. The value of this field is
    #   empty for an initial request.
    #   @return [String]
    #
    # @!attribute [rw] segment_count
    #   For a parallel `ListVectors` request, `segmentCount` represents the
    #   total number of vector segments into which the `ListVectors`
    #   operation will be divided. The value of `segmentCount` corresponds
    #   to the number of application workers that will perform the parallel
    #   `ListVectors` operation. For example, if you want to use four
    #   application threads to list vectors in a vector index, specify a
    #   `segmentCount` value of 4.
    #
    #   If you specify a `segmentCount` value of 1, the `ListVectors`
    #   operation will be sequential rather than parallel.
    #
    #   If you specify `segmentCount`, you must also specify `segmentIndex`.
    #   @return [Integer]
    #
    # @!attribute [rw] segment_index
    #   For a parallel `ListVectors` request, `segmentIndex` is the index of
    #   the segment from which to list vectors in the current request. It
    #   identifies an individual segment to be listed by an application
    #   worker.
    #
    #   Segment IDs are zero-based, so the first segment is always 0. For
    #   example, if you want to use four application threads to list vectors
    #   in a vector index, then the first thread specifies a `segmentIndex`
    #   value of 0, the second thread specifies 1, and so on.
    #
    #   The value of `segmentIndex` must be less than the value provided for
    #   `segmentCount`.
    #
    #   If you provide `segmentIndex`, you must also provide `segmentCount`.
    #   @return [Integer]
    #
    # @!attribute [rw] return_data
    #   If true, the vector data of each vector will be included in the
    #   response. The default value is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] return_metadata
    #   If true, the metadata associated with each vector will be included
    #   in the response. The default value is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/ListVectorsInput AWS API Documentation
    #
    class ListVectorsInput < Struct.new(
      :vector_bucket_name,
      :index_name,
      :index_arn,
      :max_results,
      :next_token,
      :segment_count,
      :segment_index,
      :return_data,
      :return_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Pagination token to be used in the subsequent request. The field is
    #   empty if no further pagination is required.
    #   @return [String]
    #
    # @!attribute [rw] vectors
    #   Vectors in the current segment.
    #   @return [Array<Types::ListOutputVector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/ListVectorsOutput AWS API Documentation
    #
    class ListVectorsOutput < Struct.new(
      :next_token,
      :vectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  The metadata configuration for a vector index.
    #
    # @!attribute [rw] non_filterable_metadata_keys
    #   Non-filterable metadata keys allow you to enrich vectors with
    #   additional context during storage and retrieval. Unlike default
    #   metadata keys, these keys can’t be used as query filters.
    #   Non-filterable metadata keys can be retrieved but can’t be searched,
    #   queried, or filtered. You can access non-filterable metadata keys of
    #   your vectors after finding the vectors. For more information about
    #   non-filterable metadata keys, see [Vectors][1] and [Limitations and
    #   restrictions][2] in the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-vectors.html
    #   [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-limitations.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/MetadataConfiguration AWS API Documentation
    #
    class MetadataConfiguration < Struct.new(
      :non_filterable_metadata_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the specified resource can't be
    # found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  The attributes of a vector to add to a vector index.
    #
    # @!attribute [rw] key
    #   The name of the vector. The key uniquely identifies the vector in a
    #   vector index.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The vector data of the vector.
    #
    #   Vector dimensions must match the dimension count that's configured
    #   for the vector index.
    #
    #   * For the `cosine` distance metric, zero vectors (vectors containing
    #     all zeros) aren't allowed.
    #
    #   * For both `cosine` and `euclidean` distance metrics, vector data
    #     must contain only valid floating-point values. Invalid values such
    #     as NaN (Not a Number) or Infinity aren't allowed.
    #   @return [Types::VectorData]
    #
    # @!attribute [rw] metadata
    #   Metadata about the vector. All metadata entries undergo validation
    #   to ensure they meet the format requirements for size and data types.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/PutInputVector AWS API Documentation
    #
    class PutInputVector < Struct.new(
      :key,
      :data,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vector_bucket_name
    #   The name of the vector bucket.
    #   @return [String]
    #
    # @!attribute [rw] vector_bucket_arn
    #   The Amazon Resource Name (ARN) of the vector bucket.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The `JSON` that defines the policy. For more information about
    #   bucket policies for S3 Vectors, see [Managing vector bucket
    #   policies][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-bucket-policy.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/PutVectorBucketPolicyInput AWS API Documentation
    #
    class PutVectorBucketPolicyInput < Struct.new(
      :vector_bucket_name,
      :vector_bucket_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/PutVectorBucketPolicyOutput AWS API Documentation
    #
    class PutVectorBucketPolicyOutput < Aws::EmptyStructure; end

    # @!attribute [rw] vector_bucket_name
    #   The name of the vector bucket that contains the vector index.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the vector index where you want to write vectors.
    #   @return [String]
    #
    # @!attribute [rw] index_arn
    #   The ARN of the vector index where you want to write vectors.
    #   @return [String]
    #
    # @!attribute [rw] vectors
    #   The vectors to add to a vector index. The number of vectors in a
    #   single request must not exceed the resource capacity, otherwise the
    #   request will be rejected with the error
    #   `ServiceUnavailableException` with the error message "Currently
    #   unable to handle the request".
    #   @return [Array<Types::PutInputVector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/PutVectorsInput AWS API Documentation
    #
    class PutVectorsInput < Struct.new(
      :vector_bucket_name,
      :index_name,
      :index_arn,
      :vectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/PutVectorsOutput AWS API Documentation
    #
    class PutVectorsOutput < Aws::EmptyStructure; end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  The attributes of a vector in the approximate nearest neighbor
    # search.
    #
    # @!attribute [rw] key
    #   The key of the vector in the approximate nearest neighbor search.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The vector data associated with the vector, if requested.
    #   @return [Types::VectorData]
    #
    # @!attribute [rw] metadata
    #   The metadata associated with the vector, if requested.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] distance
    #   The measure of similarity between the vector in the response and the
    #   query vector.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/QueryOutputVector AWS API Documentation
    #
    class QueryOutputVector < Struct.new(
      :key,
      :data,
      :metadata,
      :distance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vector_bucket_name
    #   The name of the vector bucket that contains the vector index.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the vector index that you want to query.
    #   @return [String]
    #
    # @!attribute [rw] index_arn
    #   The ARN of the vector index that you want to query.
    #   @return [String]
    #
    # @!attribute [rw] top_k
    #   The number of results to return for each query.
    #   @return [Integer]
    #
    # @!attribute [rw] query_vector
    #   The query vector. Ensure that the query vector has the same
    #   dimension as the dimension of the vector index that's being
    #   queried. For example, if your vector index contains vectors with 384
    #   dimensions, your query vector must also have 384 dimensions.
    #   @return [Types::VectorData]
    #
    # @!attribute [rw] filter
    #   Metadata filter to apply during the query. For more information
    #   about metadata keys, see [Metadata filtering][1] in the *Amazon S3
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-metadata-filtering.html
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] return_metadata
    #   Indicates whether to include metadata in the response. The default
    #   value is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] return_distance
    #   Indicates whether to include the computed distance in the response.
    #   The default value is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/QueryVectorsInput AWS API Documentation
    #
    class QueryVectorsInput < Struct.new(
      :vector_bucket_name,
      :index_name,
      :index_arn,
      :top_k,
      :query_vector,
      :filter,
      :return_metadata,
      :return_distance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vectors
    #   The vectors in the approximate nearest neighbor search.
    #   @return [Array<Types::QueryOutputVector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/QueryVectorsOutput AWS API Documentation
    #
    class QueryVectorsOutput < Struct.new(
      :vectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request exceeds a service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is unavailable. Wait briefly and retry your request. If it
    # continues to fail, increase your waiting time between retries.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested action isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   A list of specific validation failures that are encountered during
    #   input processing. Each entry in the list contains a path to the
    #   field that failed validation and a detailed message that explains
    #   why the validation failed. To satisfy multiple constraints, a field
    #   can appear multiple times in this list if it failed. You can use the
    #   information to identify and fix the specific validation issues in
    #   your request.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a validation exception.
    #
    # @!attribute [rw] path
    #   A path about the validation exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message about the validation exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :path,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  The attributes of a vector bucket.
    #
    # @!attribute [rw] vector_bucket_name
    #   The name of the vector bucket.
    #   @return [String]
    #
    # @!attribute [rw] vector_bucket_arn
    #   The Amazon Resource Name (ARN) of the vector bucket.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Date and time when the vector bucket was created.
    #   @return [Time]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration for the vector bucket.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/VectorBucket AWS API Documentation
    #
    class VectorBucket < Struct.new(
      :vector_bucket_name,
      :vector_bucket_arn,
      :creation_time,
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  Summary information about a vector bucket.
    #
    # @!attribute [rw] vector_bucket_name
    #   The name of the vector bucket.
    #   @return [String]
    #
    # @!attribute [rw] vector_bucket_arn
    #   The Amazon Resource Name (ARN) of the vector bucket.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Date and time when the vector bucket was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/VectorBucketSummary AWS API Documentation
    #
    class VectorBucketSummary < Struct.new(
      :vector_bucket_name,
      :vector_bucket_arn,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  The vector data in different formats.
    #
    # @note VectorData is a union - when making an API calls you must set exactly one of the members.
    #
    # @note VectorData is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of VectorData corresponding to the set member.
    #
    # @!attribute [rw] float32
    #   The vector data as 32-bit floating point numbers. The number of
    #   elements in this array must exactly match the dimension of the
    #   vector index where the operation is being performed.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/VectorData AWS API Documentation
    #
    class VectorData < Struct.new(
      :float32,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Float32 < VectorData; end
      class Unknown < VectorData; end
    end

  end
end

