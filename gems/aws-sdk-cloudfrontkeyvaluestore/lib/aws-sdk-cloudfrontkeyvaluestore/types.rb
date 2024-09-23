# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudFrontKeyValueStore
  module Types

    # Access denied.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resource is not in expected state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] kvs_arn
    #   The Amazon Resource Name (ARN) of the Key Value Store.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The key to delete.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The current version (ETag) of the Key Value Store that you are
    #   deleting keys from, which you can get using DescribeKeyValueStore.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/DeleteKeyRequest AWS API Documentation
    #
    class DeleteKeyRequest < Struct.new(
      :kvs_arn,
      :key,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # List item for keys to delete.
    #
    # @!attribute [rw] key
    #   The key of the key value pair to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/DeleteKeyRequestListItem AWS API Documentation
    #
    class DeleteKeyRequestListItem < Struct.new(
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata information about a Key Value Store.
    #
    # @!attribute [rw] item_count
    #   Number of key value pairs in the Key Value Store after the
    #   successful delete.
    #   @return [Integer]
    #
    # @!attribute [rw] total_size_in_bytes
    #   Total size of the Key Value Store after the successful delete, in
    #   bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] etag
    #   The current version identifier of the Key Value Store after the
    #   successful delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/DeleteKeyResponse AWS API Documentation
    #
    class DeleteKeyResponse < Struct.new(
      :item_count,
      :total_size_in_bytes,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] kvs_arn
    #   The Amazon Resource Name (ARN) of the Key Value Store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/DescribeKeyValueStoreRequest AWS API Documentation
    #
    class DescribeKeyValueStoreRequest < Struct.new(
      :kvs_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata information about a Key Value Store.
    #
    # @!attribute [rw] item_count
    #   Number of key value pairs in the Key Value Store.
    #   @return [Integer]
    #
    # @!attribute [rw] total_size_in_bytes
    #   Total size of the Key Value Store in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] kvs_arn
    #   The Amazon Resource Name (ARN) of the Key Value Store.
    #   @return [String]
    #
    # @!attribute [rw] created
    #   Date and time when the Key Value Store was created.
    #   @return [Time]
    #
    # @!attribute [rw] etag
    #   The version identifier for the current version of the Key Value
    #   Store.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   Date and time when the key value pairs in the Key Value Store was
    #   last modified.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the Key Value Store.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason for Key Value Store creation failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/DescribeKeyValueStoreResponse AWS API Documentation
    #
    class DescribeKeyValueStoreResponse < Struct.new(
      :item_count,
      :total_size_in_bytes,
      :kvs_arn,
      :created,
      :etag,
      :last_modified,
      :status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] kvs_arn
    #   The Amazon Resource Name (ARN) of the Key Value Store.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The key to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/GetKeyRequest AWS API Documentation
    #
    class GetKeyRequest < Struct.new(
      :kvs_arn,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key value pair.
    #
    # @!attribute [rw] key
    #   The key of the key value pair.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the key value pair.
    #   @return [String]
    #
    # @!attribute [rw] item_count
    #   Number of key value pairs in the Key Value Store.
    #   @return [Integer]
    #
    # @!attribute [rw] total_size_in_bytes
    #   Total size of the Key Value Store in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/GetKeyResponse AWS API Documentation
    #
    class GetKeyResponse < Struct.new(
      :key,
      :value,
      :item_count,
      :total_size_in_bytes)
      SENSITIVE = [:value]
      include Aws::Structure
    end

    # Internal server error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] kvs_arn
    #   The Amazon Resource Name (ARN) of the Key Value Store.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If nextToken is returned in the response, there are more results
    #   available. Make the next call using the returned token to retrieve
    #   the next page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results that are returned per call. The default is
    #   10 and maximum allowed page is 50.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/ListKeysRequest AWS API Documentation
    #
    class ListKeysRequest < Struct.new(
      :kvs_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If nextToken is returned in the response, there are more results
    #   available. Make the next call using the returned token to retrieve
    #   the next page.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Key value pairs
    #   @return [Array<Types::ListKeysResponseListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/ListKeysResponse AWS API Documentation
    #
    class ListKeysResponse < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key value pair.
    #
    # @!attribute [rw] key
    #   The key of the key value pair.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the key value pair.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/ListKeysResponseListItem AWS API Documentation
    #
    class ListKeysResponseListItem < Struct.new(
      :key,
      :value)
      SENSITIVE = [:value]
      include Aws::Structure
    end

    # A key value pair.
    #
    # @!attribute [rw] key
    #   The key to put.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value to put.
    #   @return [String]
    #
    # @!attribute [rw] kvs_arn
    #   The Amazon Resource Name (ARN) of the Key Value Store.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The current version (ETag) of the Key Value Store that you are
    #   putting keys into, which you can get using DescribeKeyValueStore.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/PutKeyRequest AWS API Documentation
    #
    class PutKeyRequest < Struct.new(
      :key,
      :value,
      :kvs_arn,
      :if_match)
      SENSITIVE = [:value]
      include Aws::Structure
    end

    # List item for key value pair to put.
    #
    # @!attribute [rw] key
    #   The key of the key value pair list item to put.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the key value pair to put.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/PutKeyRequestListItem AWS API Documentation
    #
    class PutKeyRequestListItem < Struct.new(
      :key,
      :value)
      SENSITIVE = [:value]
      include Aws::Structure
    end

    # Metadata information about a Key Value Store.
    #
    # @!attribute [rw] item_count
    #   Number of key value pairs in the Key Value Store after the
    #   successful put.
    #   @return [Integer]
    #
    # @!attribute [rw] total_size_in_bytes
    #   Total size of the Key Value Store after the successful put, in
    #   bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] etag
    #   The current version identifier of the Key Value Store after the
    #   successful put.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/PutKeyResponse AWS API Documentation
    #
    class PutKeyResponse < Struct.new(
      :item_count,
      :total_size_in_bytes,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Limit exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] kvs_arn
    #   The Amazon Resource Name (ARN) of the Key Value Store.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The current version (ETag) of the Key Value Store that you are
    #   updating keys of, which you can get using DescribeKeyValueStore.
    #   @return [String]
    #
    # @!attribute [rw] puts
    #   List of key value pairs to put.
    #   @return [Array<Types::PutKeyRequestListItem>]
    #
    # @!attribute [rw] deletes
    #   List of keys to delete.
    #   @return [Array<Types::DeleteKeyRequestListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/UpdateKeysRequest AWS API Documentation
    #
    class UpdateKeysRequest < Struct.new(
      :kvs_arn,
      :if_match,
      :puts,
      :deletes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata information about a Key Value Store.
    #
    # @!attribute [rw] item_count
    #   Number of key value pairs in the Key Value Store after the
    #   successful update.
    #   @return [Integer]
    #
    # @!attribute [rw] total_size_in_bytes
    #   Total size of the Key Value Store after the successful update, in
    #   bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] etag
    #   The current version identifier of the Key Value Store after the
    #   successful update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/UpdateKeysResponse AWS API Documentation
    #
    class UpdateKeysResponse < Struct.new(
      :item_count,
      :total_size_in_bytes,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # Validation failed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

