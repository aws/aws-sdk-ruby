# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3
  class MultipartUpload

    extend Aws::Deprecations

    # @overload def initialize(bucket_name, object_key, id, options = {})
    #   @param [String] bucket_name
    #   @param [String] object_key
    #   @param [String] id
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :bucket_name
    #   @option options [required, String] :object_key
    #   @option options [required, String] :id
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @bucket_name = extract_bucket_name(args, options)
      @object_key = extract_object_key(args, options)
      @id = extract_id(args, options)
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
    def id
      @id
    end

    # Upload ID that identifies the multipart upload.
    # @return [String]
    def upload_id
      data.upload_id
    end

    # Key of the object for which the multipart upload was initiated.
    # @return [String]
    def key
      data.key
    end

    # Date and time at which the multipart upload was initiated.
    # @return [Time]
    def initiated
      data.initiated
    end

    # The class of storage used to store the object.
    # @return [String]
    def storage_class
      data.storage_class
    end

    # @return [Types::Owner]
    def owner
      data.owner
    end

    # Identifies who initiated the multipart upload.
    # @return [Types::Initiator]
    def initiator
      data.initiator
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
    # @return [Types::MultipartUpload]
    #   Returns the data for this {MultipartUpload}.
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
    #   multipart_upload.abort({
    #     request_payer: "requester", # accepts requester
    #   })
    # @param [Hash] options ({})
    # @option options [String] :request_payer
    #   Confirms that the requester knows that she or he will be charged for
    #   the request. Bucket owners need not specify this parameter in their
    #   requests. Documentation on downloading objects from requester pays
    #   buckets can be found at
    #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
    # @return [Types::AbortMultipartUploadOutput]
    def abort(options = {})
      options = options.merge(
        bucket: @bucket_name,
        key: @object_key,
        upload_id: @id
      )
      resp = @client.abort_multipart_upload(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   object = multipart_upload.complete({
    #     multipart_upload: {
    #       parts: [
    #         {
    #           etag: "ETag",
    #           part_number: 1,
    #         },
    #       ],
    #     },
    #     request_payer: "requester", # accepts requester
    #   })
    # @param [Hash] options ({})
    # @option options [Types::CompletedMultipartUpload] :multipart_upload
    # @option options [String] :request_payer
    #   Confirms that the requester knows that she or he will be charged for
    #   the request. Bucket owners need not specify this parameter in their
    #   requests. Documentation on downloading objects from requester pays
    #   buckets can be found at
    #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
    # @return [Object]
    def complete(options = {})
      options = options.merge(
        bucket: @bucket_name,
        key: @object_key,
        upload_id: @id
      )
      resp = @client.complete_multipart_upload(options)
      Object.new(
        bucket_name: @bucket_name,
        key: @object_key,
        client: @client
      )
    end

    # @!group Associations

    # @return [Object]
    def object
      Object.new(
        bucket_name: @bucket_name,
        key: @object_key,
        client: @client
      )
    end

    # @param [String] part_number
    # @return [MultipartUploadPart]
    def part(part_number)
      MultipartUploadPart.new(
        bucket_name: @bucket_name,
        object_key: @object_key,
        multipart_upload_id: @id,
        part_number: part_number,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   parts = multipart_upload.parts({
    #     request_payer: "requester", # accepts requester
    #   })
    # @param [Hash] options ({})
    # @option options [String] :request_payer
    #   Confirms that the requester knows that she or he will be charged for
    #   the request. Bucket owners need not specify this parameter in their
    #   requests. Documentation on downloading objects from requester pays
    #   buckets can be found at
    #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
    # @return [MultipartUploadPart::Collection]
    def parts(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          bucket: @bucket_name,
          key: @object_key,
          upload_id: @id
        )
        resp = @client.list_parts(options)
        resp.each_page do |page|
          batch = []
          page.data.parts.each do |p|
            batch << MultipartUploadPart.new(
              bucket_name: options[:bucket],
              object_key: options[:key],
              multipart_upload_id: options[:upload_id],
              part_number: p.part_number,
              data: p,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      MultipartUploadPart::Collection.new(batches)
    end

    # @deprecated
    # @api private
    def identifiers
      {
        bucket_name: @bucket_name,
        object_key: @object_key,
        id: @id
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

    def extract_id(args, options)
      value = args[2] || options.delete(:id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :id"
      else
        msg = "expected :id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
