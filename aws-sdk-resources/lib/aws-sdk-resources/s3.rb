module Aws
  module S3

    autoload :FilePart, 'aws-sdk-resources/s3/file_part'
    autoload :FileUploader, 'aws-sdk-resources/s3/file_uploader'
    autoload :MultipartFileUploader, 'aws-sdk-resources/s3/multipart_file_uploader'
    autoload :MultipartUploadError, 'aws-sdk-resources/s3/multipart_upload_error'

    class Object

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
      #   are:
      #
      #   * `:get`
      #   * `:put`
      #   * `:head`
      #   * `:delete`
      #
      # @param [Hash] params
      #   Additional request parameters to use when generating the pre-signed
      #   URL. See the related documentation in {Client} for accepted
      #   params.
      #
      #   | HTTP Method   | Client Method          |
      #   |---------------|------------------------|
      #   | `:get`        | {Client#put_object}    |
      #   | `:put`        | {Client#get_object}    |
      #   | `:head`       | {Client#head_object}   |
      #   | `:delete`     | {Client#delete_object} |
      #
      # @option params [Integer] :exipres_in (900) Number of seconds before
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

      # Uploads a file from disk to the current object in S3.
      #
      # @example
      #
      #     obj.upload_file('/path/to/file')
      #
      # @param [String,Pathname,File,Tempfile] source A file or path to a file
      #   on the local file system that should be uploaded to this object.
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
      # @return [void]
      #
      def upload_file(source, options = {})
        uploader = FileUploader.new(
          multipart_threshold: options.delete(:multipart_threshold),
          client: client)
        uploader.upload(source, options.merge(bucket: bucket_name, key: key))
      end

    end
  end
end
