module Aws
  module S3

    autoload :FilePart, 'aws-sdk-resources/s3/file_part'
    autoload :FileUploader, 'aws-sdk-resources/s3/file_uploader'
    autoload :MultipartFileUploader, 'aws-sdk-resources/s3/multipart_file_uploader'
    autoload :MultipartUploadError, 'aws-sdk-resources/s3/multipart_upload_error'

    class Object

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
