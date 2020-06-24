# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaStoreData
  module Types

    # The specified container was not found for the specified account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/ContainerNotFoundException AWS API Documentation
    #
    class ContainerNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteObjectRequest
    #   data as a hash:
    #
    #       {
    #         path: "PathNaming", # required
    #       }
    #
    # @!attribute [rw] path
    #   The path (including the file name) where the object is stored in the
    #   container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file
    #   name&gt;
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/DeleteObjectRequest AWS API Documentation
    #
    class DeleteObjectRequest < Struct.new(
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/DeleteObjectResponse AWS API Documentation
    #
    class DeleteObjectResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeObjectRequest
    #   data as a hash:
    #
    #       {
    #         path: "PathNaming", # required
    #       }
    #
    # @!attribute [rw] path
    #   The path (including the file name) where the object is stored in the
    #   container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file
    #   name&gt;
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/DescribeObjectRequest AWS API Documentation
    #
    class DescribeObjectRequest < Struct.new(
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] etag
    #   The ETag that represents a unique instance of the object.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type of the object.
    #   @return [String]
    #
    # @!attribute [rw] content_length
    #   The length of the object in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] cache_control
    #   An optional `CacheControl` header that allows the caller to control
    #   the object's cache behavior. Headers can be passed in as specified
    #   in the HTTP at
    #   [https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9][1].
    #
    #   Headers with a custom user-defined value are also accepted.
    #
    #
    #
    #   [1]: https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date and time that the object was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/DescribeObjectResponse AWS API Documentation
    #
    class DescribeObjectResponse < Struct.new(
      :etag,
      :content_type,
      :content_length,
      :cache_control,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetObjectRequest
    #   data as a hash:
    #
    #       {
    #         path: "PathNaming", # required
    #         range: "RangePattern",
    #       }
    #
    # @!attribute [rw] path
    #   The path (including the file name) where the object is stored in the
    #   container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file
    #   name&gt;
    #
    #   For example, to upload the file `mlaw.avi` to the folder path
    #   `premium\canada` in the container `movies`, enter the path
    #   `premium/canada/mlaw.avi`.
    #
    #   Do not include the container name in this path.
    #
    #   If the path includes any folders that don't exist yet, the service
    #   creates them. For example, suppose you have an existing
    #   `premium/usa` subfolder. If you specify `premium/canada`, the
    #   service creates a `canada` subfolder in the `premium` folder. You
    #   then have two subfolders, `usa` and `canada`, in the `premium`
    #   folder.
    #
    #   There is no correlation between the path to the source and the path
    #   (folders) in the container in AWS Elemental MediaStore.
    #
    #   For more information about folders and how they exist in a
    #   container, see the [AWS Elemental MediaStore User Guide][1].
    #
    #   The file name is the name that is assigned to the file that you
    #   upload. The file can have the same name inside and outside of AWS
    #   Elemental MediaStore, or it can have the same name. The file name
    #   can include or omit an extension.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/mediastore/latest/ug/
    #   @return [String]
    #
    # @!attribute [rw] range
    #   The range bytes of an object to retrieve. For more information about
    #   the `Range` header, see
    #   [http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35][1].
    #   AWS Elemental MediaStore ignores this header for partially uploaded
    #   objects that have streaming upload availability.
    #
    #
    #
    #   [1]: http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/GetObjectRequest AWS API Documentation
    #
    class GetObjectRequest < Struct.new(
      :path,
      :range)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] body
    #   The bytes of the object.
    #   @return [IO]
    #
    # @!attribute [rw] cache_control
    #   An optional `CacheControl` header that allows the caller to control
    #   the object's cache behavior. Headers can be passed in as specified
    #   in the HTTP spec at
    #   [https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9][1].
    #
    #   Headers with a custom user-defined value are also accepted.
    #
    #
    #
    #   [1]: https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9
    #   @return [String]
    #
    # @!attribute [rw] content_range
    #   The range of bytes to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] content_length
    #   The length of the object in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] content_type
    #   The content type of the object.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The ETag that represents a unique instance of the object.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date and time that the object was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] status_code
    #   The HTML status code of the request. Status codes ranging from 200
    #   to 299 indicate success. All other status codes indicate the type of
    #   error that occurred.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/GetObjectResponse AWS API Documentation
    #
    class GetObjectResponse < Struct.new(
      :body,
      :cache_control,
      :content_range,
      :content_length,
      :content_type,
      :etag,
      :last_modified,
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is temporarily unavailable.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/InternalServerError AWS API Documentation
    #
    class InternalServerError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A metadata entry for a folder or object.
    #
    # @!attribute [rw] name
    #   The name of the item.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The item type (folder or object).
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The ETag that represents a unique instance of the item.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date and time that the item was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] content_type
    #   The content type of the item.
    #   @return [String]
    #
    # @!attribute [rw] content_length
    #   The length of the item in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/Item AWS API Documentation
    #
    class Item < Struct.new(
      :name,
      :type,
      :etag,
      :last_modified,
      :content_type,
      :content_length)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListItemsRequest
    #   data as a hash:
    #
    #       {
    #         path: "ListPathNaming",
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] path
    #   The path in the container from which to retrieve items. Format:
    #   &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per API request. For
    #   example, you submit a `ListItems` request with `MaxResults` set at
    #   500. Although 2,000 items match your request, the service returns no
    #   more than the first 500 items. (The service also returns a
    #   `NextToken` value that you can use to fetch the next batch of
    #   results.) The service might return fewer results than the
    #   `MaxResults` value.
    #
    #   If `MaxResults` is not included in the request, the service defaults
    #   to pagination with a maximum of 1,000 results per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that identifies which batch of results that you want to
    #   see. For example, you submit a `ListItems` request with `MaxResults`
    #   set at 500. The service returns the first batch of results (up to
    #   500) and a `NextToken` value. To see the next batch of results, you
    #   can submit the `ListItems` request a second time and specify the
    #   `NextToken` value.
    #
    #   Tokens expire after 15 minutes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/ListItemsRequest AWS API Documentation
    #
    class ListItemsRequest < Struct.new(
      :path,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The metadata entries for the folders and objects at the requested
    #   path.
    #   @return [Array<Types::Item>]
    #
    # @!attribute [rw] next_token
    #   The token that can be used in a request to view the next set of
    #   results. For example, you submit a `ListItems` request that matches
    #   2,000 items with `MaxResults` set at 500. The service returns the
    #   first batch of results (up to 500) and a `NextToken` value that can
    #   be used to fetch the next batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/ListItemsResponse AWS API Documentation
    #
    class ListItemsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Could not perform an operation on an object that does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/ObjectNotFoundException AWS API Documentation
    #
    class ObjectNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutObjectRequest
    #   data as a hash:
    #
    #       {
    #         body: "data", # required
    #         path: "PathNaming", # required
    #         content_type: "ContentType",
    #         cache_control: "StringPrimitive",
    #         storage_class: "TEMPORAL", # accepts TEMPORAL
    #         upload_availability: "STANDARD", # accepts STANDARD, STREAMING
    #       }
    #
    # @!attribute [rw] body
    #   The bytes to be stored.
    #   @return [IO]
    #
    # @!attribute [rw] path
    #   The path (including the file name) where the object is stored in the
    #   container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file
    #   name&gt;
    #
    #   For example, to upload the file `mlaw.avi` to the folder path
    #   `premium\canada` in the container `movies`, enter the path
    #   `premium/canada/mlaw.avi`.
    #
    #   Do not include the container name in this path.
    #
    #   If the path includes any folders that don't exist yet, the service
    #   creates them. For example, suppose you have an existing
    #   `premium/usa` subfolder. If you specify `premium/canada`, the
    #   service creates a `canada` subfolder in the `premium` folder. You
    #   then have two subfolders, `usa` and `canada`, in the `premium`
    #   folder.
    #
    #   There is no correlation between the path to the source and the path
    #   (folders) in the container in AWS Elemental MediaStore.
    #
    #   For more information about folders and how they exist in a
    #   container, see the [AWS Elemental MediaStore User Guide][1].
    #
    #   The file name is the name that is assigned to the file that you
    #   upload. The file can have the same name inside and outside of AWS
    #   Elemental MediaStore, or it can have the same name. The file name
    #   can include or omit an extension.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/mediastore/latest/ug/
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type of the object.
    #   @return [String]
    #
    # @!attribute [rw] cache_control
    #   An optional `CacheControl` header that allows the caller to control
    #   the object's cache behavior. Headers can be passed in as specified
    #   in the HTTP at
    #   [https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9][1].
    #
    #   Headers with a custom user-defined value are also accepted.
    #
    #
    #
    #   [1]: https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9
    #   @return [String]
    #
    # @!attribute [rw] storage_class
    #   Indicates the storage class of a `Put` request. Defaults to
    #   high-performance temporal storage class, and objects are persisted
    #   into durable storage shortly after being received.
    #   @return [String]
    #
    # @!attribute [rw] upload_availability
    #   Indicates the availability of an object while it is still uploading.
    #   If the value is set to `streaming`, the object is available for
    #   downloading after some initial buffering but before the object is
    #   uploaded completely. If the value is set to `standard`, the object
    #   is available for downloading only when it is uploaded completely.
    #   The default value for this header is `standard`.
    #
    #   To use this header, you must also set the HTTP `Transfer-Encoding`
    #   header to `chunked`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/PutObjectRequest AWS API Documentation
    #
    class PutObjectRequest < Struct.new(
      :body,
      :path,
      :content_type,
      :cache_control,
      :storage_class,
      :upload_availability)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_sha256
    #   The SHA256 digest of the object that is persisted.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   Unique identifier of the object in the container.
    #   @return [String]
    #
    # @!attribute [rw] storage_class
    #   The storage class where the object was persisted. The class should
    #   be “Temporal”.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/PutObjectResponse AWS API Documentation
    #
    class PutObjectResponse < Struct.new(
      :content_sha256,
      :etag,
      :storage_class)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested content range is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/RequestedRangeNotSatisfiableException AWS API Documentation
    #
    class RequestedRangeNotSatisfiableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
