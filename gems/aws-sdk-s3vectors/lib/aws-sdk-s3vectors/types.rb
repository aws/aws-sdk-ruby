# frozen_string_literal: true

# This is generated code!

module Aws::S3Vectors
  # This module contains the types returned by client operations.
  module Types

    # <p>Access denied.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because a vector bucket name or a vector index name already exists. Vector bucket names must be unique within your Amazon Web Services account for each Amazon Web Services Region. Vector index names must be unique within your vector bucket. Choose a different vector bucket name or vector index name, and try again.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vector_bucket_name
    #   <p>The name of the vector bucket to create the vector index in. </p>
    #   @return [String]
    # @!attribute vector_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the vector bucket to create the vector index in.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the vector index to create. </p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The data type of the vectors to be inserted into the vector index. </p>
    #   @return [String]
    # @!attribute dimension
    #   <p>The dimensions of the vectors to be inserted into the vector index. </p>
    #   @return [Integer]
    # @!attribute distance_metric
    #   <p>The distance metric to be used for similarity search. </p>
    #   @return [String]
    # @!attribute metadata_configuration
    #   <p>The metadata configuration for the vector index. </p>
    #   @return [Types::MetadataConfiguration]
    class CreateIndexInput < Struct.new(
      :vector_bucket_name,
      :vector_bucket_arn,
      :index_name,
      :data_type,
      :dimension,
      :distance_metric,
      :metadata_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateIndexOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vector_bucket_name
    #   <p>The name of the vector bucket to create. </p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>The encryption configuration for the vector bucket. By default, if you don't specify, all new vectors in Amazon S3 vector buckets use server-side encryption with Amazon S3 managed keys (SSE-S3), specifically <code>AES256</code>. </p>
    #   @return [Types::EncryptionConfiguration]
    class CreateVectorBucketInput < Struct.new(
      :vector_bucket_name,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateVectorBucketOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vector_bucket_name
    #   <p>The name of the vector bucket that contains the vector index. </p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the vector index to delete. </p>
    #   @return [String]
    # @!attribute index_arn
    #   <p>The ARN of the vector index to delete.</p>
    #   @return [String]
    class DeleteIndexInput < Struct.new(
      :vector_bucket_name,
      :index_name,
      :index_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteIndexOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vector_bucket_name
    #   <p>The name of the vector bucket to delete.</p>
    #   @return [String]
    # @!attribute vector_bucket_arn
    #   <p>The ARN of the vector bucket to delete.</p>
    #   @return [String]
    class DeleteVectorBucketInput < Struct.new(
      :vector_bucket_name,
      :vector_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteVectorBucketOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vector_bucket_name
    #   <p>The name of the vector bucket to delete the policy from.</p>
    #   @return [String]
    # @!attribute vector_bucket_arn
    #   <p>The ARN of the vector bucket to delete the policy from.</p>
    #   @return [String]
    class DeleteVectorBucketPolicyInput < Struct.new(
      :vector_bucket_name,
      :vector_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteVectorBucketPolicyOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vector_bucket_name
    #   <p>The name of the vector bucket that contains the vector index. </p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the vector index that contains a vector you want to delete.</p>
    #   @return [String]
    # @!attribute index_arn
    #   <p>The ARN of the vector index that contains a vector you want to delete.</p>
    #   @return [String]
    # @!attribute keys
    #   <p>The keys of the vectors to delete. </p>
    #   @return [Array<String>]
    class DeleteVectorsInput < Struct.new(
      :vector_bucket_name,
      :index_name,
      :index_arn,
      :keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteVectorsOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>The encryption configuration for a vector bucket. By default, if you don't specify, all new vectors in Amazon S3 vector buckets use server-side encryption with Amazon S3 managed keys (SSE-S3), specifically <code>AES256</code>.</p>
    # @!attribute sse_type
    #   <p>The server-side encryption type to use for the encryption configuration of the vector bucket. By default, if you don't specify, all new vectors in Amazon S3 vector buckets use server-side encryption with Amazon S3 managed keys (SSE-S3), specifically <code>AES256</code>.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>Amazon Web Services Key Management Service (KMS) customer managed key ID to use for the encryption configuration. This parameter is allowed if and only if <code>sseType</code> is set to <code>aws:kms</code>.</p> <p>To specify the KMS key, you must use the format of the KMS key Amazon Resource Name (ARN).</p> <p>For example, specify Key ARN in the following format: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p>
    #   @return [String]
    class EncryptionConfiguration < Struct.new(
      :sse_type,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:sse_type] = 'AES256' unless options.key?(:sse_type)
        super
      end
    end

    # @!attribute vector_bucket_name
    #   <p>The name of the vector bucket that contains the vector index. </p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the vector index.</p>
    #   @return [String]
    # @!attribute index_arn
    #   <p>The ARN of the vector index.</p>
    #   @return [String]
    class GetIndexInput < Struct.new(
      :vector_bucket_name,
      :index_name,
      :index_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute index
    #   <p>The attributes of the vector index.</p>
    #   @return [Types::Index]
    class GetIndexOutput < Struct.new(
      :index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>The attributes of a vector returned by the <code>GetVectors</code> operation.</p>
    # @!attribute key
    #   <p>The name of the vector. </p>
    #   @return [String]
    # @!attribute data
    #   <p>The vector data of the vector. </p>
    #   @return [Types::VectorData]
    # @!attribute metadata
    #   <p>Metadata about the vector. </p>
    #   @return [JSON]
    class GetOutputVector < Struct.new(
      :key,
      :data,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vector_bucket_name
    #   <p>The name of the vector bucket to retrieve information about.</p>
    #   @return [String]
    # @!attribute vector_bucket_arn
    #   <p>The ARN of the vector bucket to retrieve information about.</p>
    #   @return [String]
    class GetVectorBucketInput < Struct.new(
      :vector_bucket_name,
      :vector_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vector_bucket
    #   <p>The attributes of the vector bucket.</p>
    #   @return [Types::VectorBucket]
    class GetVectorBucketOutput < Struct.new(
      :vector_bucket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vector_bucket_name
    #   <p>The name of the vector bucket.</p>
    #   @return [String]
    # @!attribute vector_bucket_arn
    #   <p>The ARN of the vector bucket.</p>
    #   @return [String]
    class GetVectorBucketPolicyInput < Struct.new(
      :vector_bucket_name,
      :vector_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The <code>JSON</code> that defines the policy.</p>
    #   @return [String]
    class GetVectorBucketPolicyOutput < Struct.new(
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vector_bucket_name
    #   <p>The name of the vector bucket that contains the vector index. </p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the vector index.</p>
    #   @return [String]
    # @!attribute index_arn
    #   <p>The ARN of the vector index.</p>
    #   @return [String]
    # @!attribute keys
    #   <p>The names of the vectors you want to return attributes for. </p>
    #   @return [Array<String>]
    # @!attribute return_data
    #   <p>Indicates whether to include the vector data in the response. The default value is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute return_metadata
    #   <p>Indicates whether to include metadata in the response. The default value is <code>false</code>.</p>
    #   @return [Boolean]
    class GetVectorsInput < Struct.new(
      :vector_bucket_name,
      :index_name,
      :index_arn,
      :keys,
      :return_data,
      :return_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vectors
    #   <p>The attributes of the vectors.</p>
    #   @return [Array<Types::GetOutputVector>]
    class GetVectorsOutput < Struct.new(
      :vectors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>The attributes of a vector index.</p>
    # @!attribute vector_bucket_name
    #   <p>The name of the vector bucket that contains the vector index. </p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the vector index.</p>
    #   @return [String]
    # @!attribute index_arn
    #   <p>The Amazon Resource Name (ARN) of the vector index.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Date and time when the vector index was created. </p>
    #   @return [Time]
    # @!attribute data_type
    #   <p>The data type of the vectors inserted into the vector index. </p>
    #   @return [String]
    # @!attribute dimension
    #   <p>The number of values in the vectors that are inserted into the vector index. </p>
    #   @return [Integer]
    # @!attribute distance_metric
    #   <p>The distance metric to be used for similarity search. </p>
    #   @return [String]
    # @!attribute metadata_configuration
    #   <p>The metadata configuration for the vector index. </p>
    #   @return [Types::MetadataConfiguration]
    class Index < Struct.new(
      :vector_bucket_name,
      :index_name,
      :index_arn,
      :creation_time,
      :data_type,
      :dimension,
      :distance_metric,
      :metadata_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>Summary information about a vector index.</p>
    # @!attribute vector_bucket_name
    #   <p>The name of the vector bucket that contains the vector index. </p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the vector index.</p>
    #   @return [String]
    # @!attribute index_arn
    #   <p>The Amazon Resource Name (ARN) of the vector index.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Date and time when the vector index was created. </p>
    #   @return [Time]
    class IndexSummary < Struct.new(
      :vector_bucket_name,
      :index_name,
      :index_arn,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed due to an internal server error.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified Amazon Web Services KMS key isn't enabled.</p>
    # @!attribute message
    #   @return [String]
    class KmsDisabledException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was rejected for one of the following reasons: </p> <ul> <li> <p>The <code>KeyUsage</code> value of the KMS key is incompatible with the API operation.</p> </li> <li> <p>The encryption algorithm or signing algorithm specified for the operation is incompatible with the type of key material in the KMS key (<code>KeySpec</code>).</p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html#API_Encrypt_Errors">InvalidKeyUsageException</a> in the <i>Amazon Web Services Key Management Service API Reference</i>.</p>
    # @!attribute message
    #   @return [String]
    class KmsInvalidKeyUsageException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The key state of the KMS key isn't compatible with the operation.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html#API_Encrypt_Errors">KMSInvalidStateException</a> in the <i>Amazon Web Services Key Management Service API Reference</i>.</p>
    # @!attribute message
    #   @return [String]
    class KmsInvalidStateException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The KMS key can't be found.</p>
    # @!attribute message
    #   @return [String]
    class KmsNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vector_bucket_name
    #   <p>The name of the vector bucket that contains the vector indexes. </p>
    #   @return [String]
    # @!attribute vector_bucket_arn
    #   <p>The ARN of the vector bucket that contains the vector indexes.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be returned in the response. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The previous pagination token. </p>
    #   @return [String]
    # @!attribute prefix
    #   <p>Limits the response to vector indexes that begin with the specified prefix.</p>
    #   @return [String]
    class ListIndexesInput < Struct.new(
      :vector_bucket_name,
      :vector_bucket_arn,
      :max_results,
      :next_token,
      :prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next pagination token.</p>
    #   @return [String]
    # @!attribute indexes
    #   <p>The attributes of the vector indexes</p>
    #   @return [Array<Types::IndexSummary>]
    class ListIndexesOutput < Struct.new(
      :next_token,
      :indexes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>The attributes of a vector returned by the <code>ListVectors</code> operation.</p>
    # @!attribute key
    #   <p>The name of the vector. </p>
    #   @return [String]
    # @!attribute data
    #   <p>The vector data of the vector. </p>
    #   @return [Types::VectorData]
    # @!attribute metadata
    #   <p>Metadata about the vector. </p>
    #   @return [JSON]
    class ListOutputVector < Struct.new(
      :key,
      :data,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of vector buckets to be returned in the response. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The previous pagination token. </p>
    #   @return [String]
    # @!attribute prefix
    #   <p>Limits the response to vector buckets that begin with the specified prefix.</p>
    #   @return [String]
    class ListVectorBucketsInput < Struct.new(
      :max_results,
      :next_token,
      :prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The element is included in the response when there are more buckets to be listed with pagination. </p>
    #   @return [String]
    # @!attribute vector_buckets
    #   <p>The list of vector buckets owned by the requester. </p>
    #   @return [Array<Types::VectorBucketSummary>]
    class ListVectorBucketsOutput < Struct.new(
      :next_token,
      :vector_buckets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vector_bucket_name
    #   <p>The name of the vector bucket. </p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the vector index.</p>
    #   @return [String]
    # @!attribute index_arn
    #   <p>The Amazon resource Name (ARN) of the vector index.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of vectors to return on a page.</p> <p>If you don't specify <code>maxResults</code>, the <code>ListVectors</code> operation uses a default value of 500.</p> <p>If the processed dataset size exceeds 1 MB before reaching the <code>maxResults</code> value, the operation stops and returns the vectors that are retrieved up to that point, along with a <code>nextToken</code> that you can use in a subsequent request to retrieve the next set of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token from a previous request. The value of this field is empty for an initial request.</p>
    #   @return [String]
    # @!attribute segment_count
    #   <p>For a parallel <code>ListVectors</code> request, <code>segmentCount</code> represents the total number of vector segments into which the <code>ListVectors</code> operation will be divided. The value of <code>segmentCount</code> corresponds to the number of application workers that will perform the parallel <code>ListVectors</code> operation. For example, if you want to use four application threads to list vectors in a vector index, specify a <code>segmentCount</code> value of 4. </p> <p>If you specify a <code>segmentCount</code> value of 1, the <code>ListVectors</code> operation will be sequential rather than parallel.</p> <p>If you specify <code>segmentCount</code>, you must also specify <code>segmentIndex</code>.</p>
    #   @return [Integer]
    # @!attribute segment_index
    #   <p>For a parallel <code>ListVectors</code> request, <code>segmentIndex</code> is the index of the segment from which to list vectors in the current request. It identifies an individual segment to be listed by an application worker. </p> <p>Segment IDs are zero-based, so the first segment is always 0. For example, if you want to use four application threads to list vectors in a vector index, then the first thread specifies a <code>segmentIndex</code> value of 0, the second thread specifies 1, and so on. </p> <p>The value of <code>segmentIndex</code> must be less than the value provided for <code>segmentCount</code>. </p> <p>If you provide <code>segmentIndex</code>, you must also provide <code>segmentCount</code>.</p>
    #   @return [Integer]
    # @!attribute return_data
    #   <p>If true, the vector data of each vector will be included in the response. The default value is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute return_metadata
    #   <p>If true, the metadata associated with each vector will be included in the response. The default value is <code>false</code>.</p>
    #   @return [Boolean]
    class ListVectorsInput < Struct.new(
      :vector_bucket_name,
      :index_name,
      :index_arn,
      :max_results,
      :next_token,
      :segment_count,
      :segment_index,
      :return_data,
      :return_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Pagination token to be used in the subsequent request. The field is empty if no further pagination is required.</p>
    #   @return [String]
    # @!attribute vectors
    #   <p>Vectors in the current segment.</p>
    #   @return [Array<Types::ListOutputVector>]
    class ListVectorsOutput < Struct.new(
      :next_token,
      :vectors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>The metadata configuration for a vector index.</p>
    # @!attribute non_filterable_metadata_keys
    #   <p>Non-filterable metadata keys allow you to enrich vectors with additional context during storage and retrieval. Unlike default metadata keys, these keys can’t be used as query filters. Non-filterable metadata keys can be retrieved but can’t be searched, queried, or filtered. You can access non-filterable metadata keys of your vectors after finding the vectors. For more information about non-filterable metadata keys, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-vectors.html">Vectors</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-limitations.html">Limitations and restrictions</a> in the <i>Amazon S3 User Guide</i>. </p>
    #   @return [Array<String>]
    class MetadataConfiguration < Struct.new(
      :non_filterable_metadata_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was rejected because the specified resource can't be found.</p>
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>The attributes of a vector to add to a vector index.</p>
    # @!attribute key
    #   <p>The name of the vector. The key uniquely identifies the vector in a vector index. </p>
    #   @return [String]
    # @!attribute data
    #   <p>The vector data of the vector. </p> <p>Vector dimensions must match the dimension count that's configured for the vector index.</p> <ul> <li> <p>For the <code>cosine</code> distance metric, zero vectors (vectors containing all zeros) aren't allowed.</p> </li> <li> <p>For both <code>cosine</code> and <code>euclidean</code> distance metrics, vector data must contain only valid floating-point values. Invalid values such as NaN (Not a Number) or Infinity aren't allowed.</p> </li> </ul>
    #   @return [Types::VectorData]
    # @!attribute metadata
    #   <p>Metadata about the vector. All metadata entries undergo validation to ensure they meet the format requirements for size and data types.</p>
    #   @return [JSON]
    class PutInputVector < Struct.new(
      :key,
      :data,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:metadata] = {} unless options.key?(:metadata)
        super
      end
    end

    # @!attribute vector_bucket_name
    #   <p>The name of the vector bucket.</p>
    #   @return [String]
    # @!attribute vector_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the vector bucket.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The <code>JSON</code> that defines the policy. For more information about bucket policies for S3 Vectors, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-bucket-policy.html">Managing vector bucket policies</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class PutVectorBucketPolicyInput < Struct.new(
      :vector_bucket_name,
      :vector_bucket_arn,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutVectorBucketPolicyOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vector_bucket_name
    #   <p>The name of the vector bucket that contains the vector index. </p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the vector index where you want to write vectors. </p>
    #   @return [String]
    # @!attribute index_arn
    #   <p>The ARN of the vector index where you want to write vectors.</p>
    #   @return [String]
    # @!attribute vectors
    #   <p>The vectors to add to a vector index. The number of vectors in a single request must not exceed the resource capacity, otherwise the request will be rejected with the error <code>ServiceUnavailableException</code> with the error message "Currently unable to handle the request".</p>
    #   @return [Array<Types::PutInputVector>]
    class PutVectorsInput < Struct.new(
      :vector_bucket_name,
      :index_name,
      :index_arn,
      :vectors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutVectorsOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>The attributes of a vector in the approximate nearest neighbor search.</p>
    # @!attribute key
    #   <p>The key of the vector in the approximate nearest neighbor search.</p>
    #   @return [String]
    # @!attribute data
    #   <p>The vector data associated with the vector, if requested. </p>
    #   @return [Types::VectorData]
    # @!attribute metadata
    #   <p>The metadata associated with the vector, if requested.</p>
    #   @return [JSON]
    # @!attribute distance
    #   <p>The measure of similarity between the vector in the response and the query vector.</p>
    #   @return [Float]
    class QueryOutputVector < Struct.new(
      :key,
      :data,
      :metadata,
      :distance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vector_bucket_name
    #   <p>The name of the vector bucket that contains the vector index. </p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the vector index that you want to query. </p>
    #   @return [String]
    # @!attribute index_arn
    #   <p>The ARN of the vector index that you want to query.</p>
    #   @return [String]
    # @!attribute top_k
    #   <p>The number of results to return for each query.</p>
    #   @return [Integer]
    # @!attribute query_vector
    #   <p>The query vector. Ensure that the query vector has the same dimension as the dimension of the vector index that's being queried. For example, if your vector index contains vectors with 384 dimensions, your query vector must also have 384 dimensions. </p>
    #   @return [Types::VectorData]
    # @!attribute filter
    #   <p>Metadata filter to apply during the query. For more information about metadata keys, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-metadata-filtering.html">Metadata filtering</a> in the <i>Amazon S3 User Guide</i>. </p>
    #   @return [JSON]
    # @!attribute return_metadata
    #   <p>Indicates whether to include metadata in the response. The default value is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute return_distance
    #   <p>Indicates whether to include the computed distance in the response. The default value is <code>false</code>.</p>
    #   @return [Boolean]
    class QueryVectorsInput < Struct.new(
      :vector_bucket_name,
      :index_name,
      :index_arn,
      :top_k,
      :query_vector,
      :filter,
      :return_metadata,
      :return_distance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vectors
    #   <p>The vectors in the approximate nearest neighbor search.</p>
    #   @return [Array<Types::QueryOutputVector>]
    class QueryVectorsOutput < Struct.new(
      :vectors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Your request exceeds a service quota. </p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service is unavailable. Wait briefly and retry your request. If it continues to fail, increase your waiting time between retries.</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested action isn't valid.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute field_list
    #   <p>A list of specific validation failures that are encountered during input processing. Each entry in the list contains a path to the field that failed validation and a detailed message that explains why the validation failed. To satisfy multiple constraints, a field can appear multiple times in this list if it failed. You can use the information to identify and fix the specific validation issues in your request.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a validation exception.</p>
    # @!attribute path
    #   <p>A path about the validation exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message about the validation exception.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :path,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>The attributes of a vector bucket. </p>
    # @!attribute vector_bucket_name
    #   <p>The name of the vector bucket. </p>
    #   @return [String]
    # @!attribute vector_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the vector bucket. </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Date and time when the vector bucket was created. </p>
    #   @return [Time]
    # @!attribute encryption_configuration
    #   <p>The encryption configuration for the vector bucket.</p>
    #   @return [Types::EncryptionConfiguration]
    class VectorBucket < Struct.new(
      :vector_bucket_name,
      :vector_bucket_arn,
      :creation_time,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>Summary information about a vector bucket.</p>
    # @!attribute vector_bucket_name
    #   <p>The name of the vector bucket. </p>
    #   @return [String]
    # @!attribute vector_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the vector bucket. </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Date and time when the vector bucket was created. </p>
    #   @return [Time]
    class VectorBucketSummary < Struct.new(
      :vector_bucket_name,
      :vector_bucket_arn,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>The vector data in different formats.</p>
    # @!attribute float32
    #   <p>The vector data as 32-bit floating point numbers. The number of elements in this array must exactly match the dimension of the vector index where the operation is being performed.</p>
    #   @return [Array<Float>]
    class VectorData < Struct.new(
      :float32,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Float32 < VectorData; end
      class Unknown < VectorData; end
    end

  end
end
