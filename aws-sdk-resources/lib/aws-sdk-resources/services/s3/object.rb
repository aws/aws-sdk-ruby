module Aws
  module S3
    class Object

      alias size content_length

      # Generates a pre-signed URL for this object.
      #
      # @example Pre-signed GET URL, valid for one hour
      #
      #     obj.presigned_url(:get, expires_in: 3600)
      #     #=> "https://bucket-name.s3.amazonaws.com/object-key?..."
      #
      # @example Pre-signed PUT with a canned ACL
      #
      #     # the object uploaded using this URL will be publicly accessible
      #     obj.presigned_url(:put, acl: 'public-read')
      #     #=> "https://bucket-name.s3.amazonaws.com/object-key?..."
      #
      # @param [Symbol] http_method
      #   The HTTP method to generate a presigned URL for. Valid values
      #   are `:get`, `:put`, `:head`, and `:delete`.
      #
      # @param [Hash] params
      #   Additional request parameters to use when generating the pre-signed
      #   URL. See the related documentation in {Client} for accepted
      #   params.
      #
      #   | HTTP Method   | Client Method          |
      #   |---------------|------------------------|
      #   | `:get`        | {Client#get_object}    |
      #   | `:put`        | {Client#put_object}    |
      #   | `:head`       | {Client#head_object}   |
      #   | `:delete`     | {Client#delete_object} |
      #
      # @option params [Integer] :expires_in (900) Number of seconds before
      #   the pre-signed URL expires. This may not exceed one week (604800
      #   seconds).
      #
      # @raise [ArgumentError] Raised if `:expires_in` exceeds one week
      #   (604800 seconds).
      #
      # @return [String]
      #
      def presigned_url(http_method, params = {})
        presigner = Presigner.new(client: client)
        presigner.presigned_url("#{http_method.downcase}_object", params.merge(
          bucket: bucket_name,
          key: key,
        ))
      end

      # Returns the public (un-signed) URL for this object.
      #
      #     s3.bucket('bucket-name').object('obj-key').public_url
      #     #=> "https://bucket-name.s3.amazonaws.com/obj-key"
      #
      # @return [String]
      def public_url
        PublicUrl.build(
          endpoint: client.config.endpoint,
          bucket_name: bucket_name,
          object_key: key,
          force_path_style: client.config.force_path_style
        )
      end

      # Uploads a file from disk to the current object in S3.
      #
      #     # small files are uploaded in a single API call
      #     obj.upload_file('/path/to/file')
      #
      # Files larger than `:multipart_threshold` are uploaded using the
      # Amazon S3 multipart upload APIs.
      #
      #     # large files are automatically split into parts
      #     # and the parts are uploaded in parallel
      #     obj.upload_file('/path/to/very_large_file')
      #
      # @param [String,Pathname,File,Tempfile] source A file or path to a file
      #   on the local file system that should be uploaded to this object.
      #   If you pass an open file object, then it is your responsibility
      #   to close the file object once the upload completes.
      #
      # @option options [Integer] :multipart_threshold (15728640) Files larger
      #   than `:multipart_threshold` are uploaded using the S3 multipart APIs.
      #   Default threshold is 15MB.
      #
      # @raise [MultipartUploadError] If an object is being uploaded in
      #   parts, and the upload can not be completed, then the upload is
      #   aborted and this error is raised.  The raised error has a `#errors`
      #   method that returns the failures that caused the upload to be
      #   aborted.
      #
      # @return [Boolean] Returns `true` when the object is uploaded
      #   without any errors.
      #
      def upload_file(source, options = {})
        uploader = FileUploader.new(
          multipart_threshold: options.delete(:multipart_threshold),
          client: client)
        uploader.upload(source, options.merge(bucket: bucket_name, key: key))
        true
      end

      # Creates a {PresignedPost} that makes it easy to upload a file from
      # a web browser direct to Amazon S3 using an HTML post form with
      # a file field.
      #
      # See the {PresignedPost} documentation for more information.
      # @note The `:key` is populated by {#key}. Do not specify
      #   the `:key` or `:key_starts_with` options.
      # @option (see PresignedPost#initialize)
      # @return [PresignedPost]
      # @see PresignedPost
      def presigned_post(options = {})
        PresignedPost.new(
          client.config.credentials,
          client.config.region,
          bucket_name,
          options.merge(key: key))
      end

    end
  end
end
