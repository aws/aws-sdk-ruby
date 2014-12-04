module Aws
  module S3

    require 'aws-sdk-resources/services/s3/bucket'
    require 'aws-sdk-resources/services/s3/object'
    require 'aws-sdk-resources/services/s3/multipart_upload'
    require 'aws-sdk-resources/services/s3/public_url'

    autoload :FilePart, 'aws-sdk-resources/services/s3/file_part'
    autoload :FileUploader, 'aws-sdk-resources/services/s3/file_uploader'
    autoload :MultipartFileUploader, 'aws-sdk-resources/services/s3/multipart_file_uploader'
    autoload :MultipartUploadError, 'aws-sdk-resources/services/s3/multipart_upload_error'

  end
end
