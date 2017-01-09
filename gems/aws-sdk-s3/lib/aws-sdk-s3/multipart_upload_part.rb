# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3
  class MultipartUploadPart

    extend Aws::Deprecations

    # @overload def initialize(bucket_name, object_key, multipart_upload_id, part_number, options = {})
    #   @param [String] bucket_name
    #   @param [String] object_key
    #   @param [String] multipart_upload_id
    #   @param [Integer] part_number
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :bucket_name
    #   @option options [required, String] :object_key
    #   @option options [required, String] :multipart_upload_id
    #   @option options [required, Integer] :part_number
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @bucket_name = extract_bucket_name(args, options)
      @object_key = extract_object_key(args, options)
      @multipart_upload_id = extract_multipart_upload_id(args, options)
      @part_number = extract_part_number(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def bucket_name
      @bucket_name
    end

    # @return [String]
    def object_key
      @object_key
    end

    # @return [String]
    def multipart_upload_id
      @multipart_upload_id
    end

    # @return [Integer]
    def part_number
      @part_number
    end

    # Date and time at which the part was uploaded.
    # @return [Time]
    def last_modified
      data.last_modified
    end

    # Entity tag returned when the part was uploaded.
    # @return [String]
    def etag
      data.etag
    end

    # Size of the uploaded part data.
    # @return [Integer]
    def size
      data.size
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # @raise [NotImplementedError]
    # @api private
    def load
      msg = "#load is not implemented, data only available via enumeration"
      raise NotImplementedError, msg
    end
    alias :reload :load

    # @raise [NotImplementedError] Raises when {#data_loaded?} is `false`.
    # @return [Types::Part]
    #   Returns the data for this {MultipartUploadPart}.
    def data
      load unless @data
      @data
    end

    # @return [Boolean]
    #   Returns `true` if this resource is loaded.  Accessing attributes or
    #   {#data} on an unloaded resource will trigger a call to {#load}.
    def data_loaded?
      !!@data
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   multipart_upload_part.copy_from({
    #     copy_source: "CopySource", # required
    #     copy_source_if_match: "CopySourceIfMatch",
    #     copy_source_if_modified_since: Time.now,
    #     copy_source_if_none_match: "CopySourceIfNoneMatch",
    #     copy_source_if_unmodified_since: Time.now,
    #     copy_source_range: "CopySourceRange",
    #     sse_customer_algorithm: "SSECustomerAlgorithm",
    #     sse_customer_key: "SSECustomerKey",
    #     sse_customer_key_md5: "SSECustomerKeyMD5",
    #     copy_source_sse_customer_algorithm: "CopySourceSSECustomerAlgorithm",
    #     copy_source_sse_customer_key: "CopySourceSSECustomerKey",
    #     copy_source_sse_customer_key_md5: "CopySourceSSECustomerKeyMD5",
    #     request_payer: "requester", # accepts requester
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :copy_source
    #   The name of the source bucket and key name of the source object,
    #   separated by a slash (/). Must be URL-encoded.
    # @option options [String] :copy_source_if_match
    #   Copies the object if its entity tag (ETag) matches the specified tag.
    # @option options [Time,DateTime,Date,Integer,String] :copy_source_if_modified_since
    #   Copies the object if it has been modified since the specified time.
    # @option options [String] :copy_source_if_none_match
    #   Copies the object if its entity tag (ETag) is different than the
    #   specified ETag.
    # @option options [Time,DateTime,Date,Integer,String] :copy_source_if_unmodified_since
    #   Copies the object if it hasn't been modified since the specified
    #   time.
    # @option options [String] :copy_source_range
    #   The range of bytes to copy from the source object. The range value
    #   must use the form bytes=first-last, where the first and last are the
    #   zero-based byte offsets to copy. For example, bytes=0-9 indicates that
    #   you want to copy the first ten bytes of the source. You can copy a
    #   range only if the source object is greater than 5 GB.
    # @option options [String] :sse_customer_algorithm
    #   Specifies the algorithm to use to when encrypting the object (e.g.,
    #   AES256).
    # @option options [String] :sse_customer_key
    #   Specifies the customer-provided encryption key for Amazon S3 to use in
    #   encrypting data. This value is used to store the object and then it is
    #   discarded; Amazon does not store the encryption key. The key must be
    #   appropriate for use with the algorithm specified in the
    #   x-amz-server-side​-encryption​-customer-algorithm header. This must be
    #   the same encryption key specified in the initiate multipart upload
    #   request.
    # @option options [String] :sse_customer_key_md5
    #   Specifies the 128-bit MD5 digest of the encryption key according to
    #   RFC 1321. Amazon S3 uses this header for a message integrity check to
    #   ensure the encryption key was transmitted without error.
    # @option options [String] :copy_source_sse_customer_algorithm
    #   Specifies the algorithm to use when decrypting the source object
    #   (e.g., AES256).
    # @option options [String] :copy_source_sse_customer_key
    #   Specifies the customer-provided encryption key for Amazon S3 to use to
    #   decrypt the source object. The encryption key provided in this header
    #   must be one that was used when the source object was created.
    # @option options [String] :copy_source_sse_customer_key_md5
    #   Specifies the 128-bit MD5 digest of the encryption key according to
    #   RFC 1321. Amazon S3 uses this header for a message integrity check to
    #   ensure the encryption key was transmitted without error.
    # @option options [String] :request_payer
    #   Confirms that the requester knows that she or he will be charged for
    #   the request. Bucket owners need not specify this parameter in their
    #   requests. Documentation on downloading objects from requester pays
    #   buckets can be found at
    #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
    # @return [Types::UploadPartCopyOutput]
    def copy_from(options = {})
      options = options.merge(
        bucket: @bucket_name,
        key: @object_key,
        upload_id: @multipart_upload_id,
        part_number: @part_number
      )
      resp = @client.upload_part_copy(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   multipart_upload_part.upload({
    #     body: source_file,
    #     content_length: 1,
    #     content_md5: "ContentMD5",
    #     sse_customer_algorithm: "SSECustomerAlgorithm",
    #     sse_customer_key: "SSECustomerKey",
    #     sse_customer_key_md5: "SSECustomerKeyMD5",
    #     request_payer: "requester", # accepts requester
    #   })
    # @param [Hash] options ({})
    # @option options [String, IO] :body
    #   Object data.
    # @option options [Integer] :content_length
    #   Size of the body in bytes. This parameter is useful when the size of
    #   the body cannot be determined automatically.
    # @option options [String] :content_md5
    #   The base64-encoded 128-bit MD5 digest of the part data.
    # @option options [String] :sse_customer_algorithm
    #   Specifies the algorithm to use to when encrypting the object (e.g.,
    #   AES256).
    # @option options [String] :sse_customer_key
    #   Specifies the customer-provided encryption key for Amazon S3 to use in
    #   encrypting data. This value is used to store the object and then it is
    #   discarded; Amazon does not store the encryption key. The key must be
    #   appropriate for use with the algorithm specified in the
    #   x-amz-server-side​-encryption​-customer-algorithm header. This must be
    #   the same encryption key specified in the initiate multipart upload
    #   request.
    # @option options [String] :sse_customer_key_md5
    #   Specifies the 128-bit MD5 digest of the encryption key according to
    #   RFC 1321. Amazon S3 uses this header for a message integrity check to
    #   ensure the encryption key was transmitted without error.
    # @option options [String] :request_payer
    #   Confirms that the requester knows that she or he will be charged for
    #   the request. Bucket owners need not specify this parameter in their
    #   requests. Documentation on downloading objects from requester pays
    #   buckets can be found at
    #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
    # @return [Types::UploadPartOutput]
    def upload(options = {})
      options = options.merge(
        bucket: @bucket_name,
        key: @object_key,
        upload_id: @multipart_upload_id,
        part_number: @part_number
      )
      resp = @client.upload_part(options)
      resp.data
    end

    # @!group Associations

    # @return [MultipartUpload]
    def multipart_upload
      MultipartUpload.new(
        bucket_name: @bucket_name,
        object_key: @object_key,
        id: @multipart_upload_id,
        client: @client
      )
    end

    # @deprecated
    # @api private
    def identifiers
      {
        bucket_name: @bucket_name,
        object_key: @object_key,
        multipart_upload_id: @multipart_upload_id,
        part_number: @part_number
      }
    end
    deprecated(:identifiers)

    private

    def extract_bucket_name(args, options)
      value = args[0] || options.delete(:bucket_name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :bucket_name"
      else
        msg = "expected :bucket_name to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_object_key(args, options)
      value = args[1] || options.delete(:object_key)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :object_key"
      else
        msg = "expected :object_key to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_multipart_upload_id(args, options)
      value = args[2] || options.delete(:multipart_upload_id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :multipart_upload_id"
      else
        msg = "expected :multipart_upload_id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_part_number(args, options)
      value = args[3] || options.delete(:part_number)
      case value
      when Integer then value
      when nil then raise ArgumentError, "missing required option :part_number"
      else
        msg = "expected :part_number to be a Integer, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
