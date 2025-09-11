# frozen_string_literal: true

# This is generated code!

module Aws::MediaStoreData
  # This module contains the types returned by client operations.
  module Types

    # <p>The specified container was not found for the specified account.</p>
    # @!attribute message
    #   @return [String]
    class ContainerNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute path
    #   <p>The path (including the file name) where the object is stored in the container.
    #            Format: <folder name>/<folder name>/<file name></p>
    #   @return [String]
    class DeleteObjectRequest < Struct.new(
      :path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteObjectResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute path
    #   <p>The path (including the file name) where the object is stored in the container.
    #            Format: <folder name>/<folder name>/<file name></p>
    #   @return [String]
    class DescribeObjectRequest < Struct.new(
      :path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute e_tag
    #   <p>The ETag that represents a unique instance of the object.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content type of the object.</p>
    #   @return [String]
    # @!attribute content_length
    #   <p>The length of the object in bytes.</p>
    #   @return [Integer]
    # @!attribute cache_control
    #   <p>An optional <code>CacheControl</code> header that allows the caller to control the
    #            object's cache behavior. Headers can be passed in as specified in the HTTP at <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9">https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9</a>.</p>
    #            <p>Headers with a custom user-defined value are also accepted.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date and time that the object was last modified.</p>
    #   @return [Time]
    class DescribeObjectResponse < Struct.new(
      :e_tag,
      :content_type,
      :content_length,
      :cache_control,
      :last_modified,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute path
    #   <p>The path (including the file name) where the object is stored in the container.
    #            Format: <folder name>/<folder name>/<file name></p>
    #            <p>For example, to upload the file <code>mlaw.avi</code> to the folder path
    #               <code>premium\canada</code> in the container <code>movies</code>, enter the path
    #               <code>premium/canada/mlaw.avi</code>.</p>
    #            <p>Do not include the container name in this path.</p>
    #            <p>If the path includes any folders that don't exist yet, the service creates them. For
    #            example, suppose you have an existing <code>premium/usa</code> subfolder. If you specify
    #               <code>premium/canada</code>, the service creates a <code>canada</code> subfolder in the
    #               <code>premium</code> folder. You then have two subfolders, <code>usa</code> and
    #               <code>canada</code>, in the <code>premium</code> folder. </p>
    #            <p>There is no correlation between the path to the source and the path (folders) in the
    #            container in AWS Elemental MediaStore.</p>
    #            <p>For more information about folders and how they exist in a container, see the <a href="http://docs.aws.amazon.com/mediastore/latest/ug/">AWS Elemental MediaStore User
    #               Guide</a>.</p>
    #            <p>The file name is the name that is assigned to the file that you upload. The file can
    #            have the same name inside and outside of AWS Elemental MediaStore, or it can have the same
    #            name. The file name can include or omit an extension. </p>
    #   @return [String]
    # @!attribute range
    #   <p>The range bytes of an object to retrieve. For more information about the
    #             <code>Range</code> header, see <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35">http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35</a>. AWS Elemental MediaStore ignores this header for partially uploaded objects that have streaming upload availability.</p>
    #   @return [String]
    class GetObjectRequest < Struct.new(
      :path,
      :range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute body
    #   <p>The bytes of the object. </p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>An optional <code>CacheControl</code> header that allows the caller to control the
    #            object's cache behavior. Headers can be passed in as specified in the HTTP spec at <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9">https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9</a>.</p>
    #            <p>Headers with a custom user-defined value are also accepted.</p>
    #   @return [String]
    # @!attribute content_range
    #   <p>The range of bytes to retrieve.</p>
    #   @return [String]
    # @!attribute content_length
    #   <p>The length of the object in bytes.</p>
    #   @return [Integer]
    # @!attribute content_type
    #   <p>The content type of the object.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The ETag that represents a unique instance of the object.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date and time that the object was last modified.</p>
    #   @return [Time]
    # @!attribute status_code
    #   <p>The HTML status code of the request. Status codes ranging from 200 to 299 indicate
    #            success. All other status codes indicate the type of error that occurred.</p>
    #   @return [Integer]
    class GetObjectResponse < Struct.new(
      :body,
      :cache_control,
      :content_range,
      :content_length,
      :content_type,
      :e_tag,
      :last_modified,
      :status_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:body] = Base64.strict_decode64('') unless options.key?(:body)
        options[:status_code] = 0 unless options.key?(:status_code)
        super
      end
    end

    # <p>The service is temporarily unavailable.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerError < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A metadata entry for a folder or object.</p>
    # @!attribute name
    #   <p>The name of the item.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The item type (folder or object).</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The ETag that represents a unique instance of the item.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date and time that the item was last modified.</p>
    #   @return [Time]
    # @!attribute content_type
    #   <p>The content type of the item.</p>
    #   @return [String]
    # @!attribute content_length
    #   <p>The length of the item in bytes.</p>
    #   @return [Integer]
    class Item < Struct.new(
      :name,
      :type,
      :e_tag,
      :last_modified,
      :content_type,
      :content_length,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute path
    #   <p>The path in the container from which to retrieve items. Format: <folder
    #            name>/<folder name>/<file name></p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per API request. For example, you submit a
    #               <code>ListItems</code> request with <code>MaxResults</code> set at 500. Although 2,000
    #            items match your request, the service returns no more than the first 500 items. (The
    #            service also returns a <code>NextToken</code> value that you can use to fetch the next
    #            batch of results.) The service might return fewer results than the <code>MaxResults</code>
    #            value.</p>
    #            <p>If <code>MaxResults</code> is not included in the request, the service defaults to
    #            pagination with a maximum of 1,000 results per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results that you want to see. For example,
    #            you submit a <code>ListItems</code> request with <code>MaxResults</code> set at 500. The
    #            service returns the first batch of results (up to 500) and a <code>NextToken</code> value.
    #            To see the next batch of results, you can submit the <code>ListItems</code> request a
    #            second time and specify the <code>NextToken</code> value.</p>
    #            <p>Tokens expire after 15 minutes.</p>
    #   @return [String]
    class ListItemsRequest < Struct.new(
      :path,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The metadata entries for the folders and objects at the requested path.</p>
    #   @return [Array<Types::Item>]
    # @!attribute next_token
    #   <p>The token that can be used in a request to view the next set of results. For example,
    #            you submit a <code>ListItems</code> request that matches 2,000 items with
    #               <code>MaxResults</code> set at 500. The service returns the first batch of results (up
    #            to 500) and a <code>NextToken</code> value that can be used to fetch the next batch of
    #            results.</p>
    #   @return [String]
    class ListItemsResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Could not perform an operation on an object that does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ObjectNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute body
    #   <p>The bytes to be stored. </p>
    #   @return [String]
    # @!attribute path
    #   <p>The path (including the file name) where the object is stored in the container.
    #            Format: <folder name>/<folder name>/<file name></p>
    #            <p>For example, to upload the file <code>mlaw.avi</code> to the folder path
    #               <code>premium\canada</code> in the container <code>movies</code>, enter the path
    #               <code>premium/canada/mlaw.avi</code>.</p>
    #            <p>Do not include the container name in this path.</p>
    #            <p>If the path includes any folders that don't exist yet, the service creates them. For
    #            example, suppose you have an existing <code>premium/usa</code> subfolder. If you specify
    #               <code>premium/canada</code>, the service creates a <code>canada</code> subfolder in the
    #               <code>premium</code> folder. You then have two subfolders, <code>usa</code> and
    #               <code>canada</code>, in the <code>premium</code> folder. </p>
    #            <p>There is no correlation between the path to the source and the path (folders) in the
    #            container in AWS Elemental MediaStore.</p>
    #            <p>For more information about folders and how they exist in a container, see the <a href="http://docs.aws.amazon.com/mediastore/latest/ug/">AWS Elemental MediaStore User
    #               Guide</a>.</p>
    #            <p>The file name is the name that is assigned to the file that you upload. The file can
    #            have the same name inside and outside of AWS Elemental MediaStore, or it can have the same
    #            name. The file name can include or omit an extension. </p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content type of the object.</p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>An optional <code>CacheControl</code> header that allows the caller to control the
    #            object's cache behavior. Headers can be passed in as specified in the HTTP at <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9">https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9</a>.</p>
    #            <p>Headers with a custom user-defined value are also accepted.</p>
    #   @return [String]
    # @!attribute storage_class
    #   <p>Indicates the storage class of a <code>Put</code> request. Defaults to
    #            high-performance temporal storage class, and objects are persisted into durable storage
    #            shortly after being received.</p>
    #   @return [String]
    # @!attribute upload_availability
    #   <p>Indicates the availability of an object while it is still uploading. If the value is set to <code>streaming</code>, the object is available for
    #               downloading after some initial buffering but before the object is uploaded completely. If the value is set to <code>standard</code>, the object is
    #               available for downloading only when it is uploaded completely. The default value for this header is <code>standard</code>.</p>
    #           <p>To use this header, you must also set the HTTP <code>Transfer-Encoding</code> header to <code>chunked</code>.</p>
    #   @return [String]
    class PutObjectRequest < Struct.new(
      :body,
      :path,
      :content_type,
      :cache_control,
      :storage_class,
      :upload_availability,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_sha256
    #   <p>The SHA256 digest of the object that is persisted.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>Unique identifier of the object in the container.</p>
    #   @return [String]
    # @!attribute storage_class
    #   <p>The storage class where the object was persisted. The class should be
    #            “Temporal”.</p>
    #   @return [String]
    class PutObjectResponse < Struct.new(
      :content_sha256,
      :e_tag,
      :storage_class,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested content range is not valid.</p>
    # @!attribute message
    #   @return [String]
    class RequestedRangeNotSatisfiableException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
