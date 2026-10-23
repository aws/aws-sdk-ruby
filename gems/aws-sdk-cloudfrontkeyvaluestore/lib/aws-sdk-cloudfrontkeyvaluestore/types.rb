# frozen_string_literal: true

# This is generated code!

module Aws::CloudFrontKeyValueStore
  # This module contains the types returned by client operations.
  module Types

    # <p>Access denied.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Resource is not in expected state.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute kvs_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Value Store.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The key to delete.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The current version (ETag) of the Key Value Store that you are deleting keys from, which you can get using DescribeKeyValueStore.</p>
    #   @return [String]
    class DeleteKeyRequest < Struct.new(
      nil,
      :kvs_arn,
      :key,
      :if_match,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>List item for keys to delete.</p>
    # @!attribute key
    #   <p>The key of the key value pair to be deleted.</p>
    #   @return [String]
    class DeleteKeyRequestListItem < Struct.new(
      nil,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata information about a Key Value Store.</p>
    # @!attribute item_count
    #   <p>Number of key value pairs in the Key Value Store after the successful delete.</p>
    #   @return [Integer]
    # @!attribute total_size_in_bytes
    #   <p>Total size of the Key Value Store after the successful delete, in bytes.</p>
    #   @return [Integer]
    # @!attribute e_tag
    #   <p>The current version identifier of the Key Value Store after the successful delete.</p>
    #   @return [String]
    class DeleteKeyResponse < Struct.new(
      nil,
      :item_count,
      :total_size_in_bytes,
      :e_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute kvs_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Value Store.</p>
    #   @return [String]
    class DescribeKeyValueStoreRequest < Struct.new(
      nil,
      :kvs_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata information about a Key Value Store.</p>
    # @!attribute item_count
    #   <p>Number of key value pairs in the Key Value Store.</p>
    #   @return [Integer]
    # @!attribute total_size_in_bytes
    #   <p>Total size of the Key Value Store in bytes.</p>
    #   @return [Integer]
    # @!attribute kvs_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Value Store.</p>
    #   @return [String]
    # @!attribute created
    #   <p>Date and time when the Key Value Store was created.</p>
    #   @return [Time]
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the Key Value Store.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>Date and time when the key value pairs in the Key Value Store was last modified.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the Key Value Store.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason for Key Value Store creation failure.</p>
    #   @return [String]
    class DescribeKeyValueStoreResponse < Struct.new(
      nil,
      :item_count,
      :total_size_in_bytes,
      :kvs_arn,
      :created,
      :e_tag,
      :last_modified,
      :status,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute kvs_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Value Store.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The key to get.</p>
    #   @return [String]
    class GetKeyRequest < Struct.new(
      nil,
      :kvs_arn,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key value pair.</p>
    # @!attribute key
    #   <p>The key of the key value pair.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the key value pair.</p>
    #   @return [String]
    # @!attribute item_count
    #   <p>Number of key value pairs in the Key Value Store.</p>
    #   @return [Integer]
    # @!attribute total_size_in_bytes
    #   <p>Total size of the Key Value Store in bytes.</p>
    #   @return [Integer]
    class GetKeyResponse < Struct.new(
      nil,
      :key,
      :value,
      :item_count,
      :total_size_in_bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Internal server error.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute kvs_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Value Store.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If nextToken is returned in the response, there are more results available. Make the next call using the returned token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results that are returned per call. The default is 10 and maximum allowed page is 50.</p>
    #   @return [Integer]
    class ListKeysRequest < Struct.new(
      nil,
      :kvs_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If nextToken is returned in the response, there are more results available. Make the next call using the returned token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Key value pairs</p>
    #   @return [Array<Types::ListKeysResponseListItem>]
    class ListKeysResponse < Struct.new(
      nil,
      :next_token,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key value pair.</p>
    # @!attribute key
    #   <p>The key of the key value pair.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the key value pair.</p>
    #   @return [String]
    class ListKeysResponseListItem < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key value pair.</p>
    # @!attribute key
    #   <p>The key to put.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value to put.</p>
    #   @return [String]
    # @!attribute kvs_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Value Store.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The current version (ETag) of the Key Value Store that you are putting keys into, which you can get using DescribeKeyValueStore.</p>
    #   @return [String]
    class PutKeyRequest < Struct.new(
      nil,
      :key,
      :value,
      :kvs_arn,
      :if_match,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>List item for key value pair to put.</p>
    # @!attribute key
    #   <p>The key of the key value pair list item to put.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for the key value pair to put.</p>
    #   @return [String]
    class PutKeyRequestListItem < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata information about a Key Value Store.</p>
    # @!attribute item_count
    #   <p>Number of key value pairs in the Key Value Store after the successful put.</p>
    #   @return [Integer]
    # @!attribute total_size_in_bytes
    #   <p>Total size of the Key Value Store after the successful put, in bytes.</p>
    #   @return [Integer]
    # @!attribute e_tag
    #   <p>The current version identifier of the Key Value Store after the successful put.</p>
    #   @return [String]
    class PutKeyResponse < Struct.new(
      nil,
      :item_count,
      :total_size_in_bytes,
      :e_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Resource was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Limit exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute kvs_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Value Store.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The current version (ETag) of the Key Value Store that you are updating keys of, which you can get using DescribeKeyValueStore.</p>
    #   @return [String]
    # @!attribute puts
    #   <p>List of key value pairs to put.</p>
    #   @return [Array<Types::PutKeyRequestListItem>]
    # @!attribute deletes
    #   <p>List of keys to delete.</p>
    #   @return [Array<Types::DeleteKeyRequestListItem>]
    class UpdateKeysRequest < Struct.new(
      nil,
      :kvs_arn,
      :if_match,
      :puts,
      :deletes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata information about a Key Value Store.</p>
    # @!attribute item_count
    #   <p>Number of key value pairs in the Key Value Store after the successful update.</p>
    #   @return [Integer]
    # @!attribute total_size_in_bytes
    #   <p>Total size of the Key Value Store after the successful update, in bytes.</p>
    #   @return [Integer]
    # @!attribute e_tag
    #   <p>The current version identifier of the Key Value Store after the successful update.</p>
    #   @return [String]
    class UpdateKeysResponse < Struct.new(
      nil,
      :item_count,
      :total_size_in_bytes,
      :e_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Validation failed.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
