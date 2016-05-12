# utility classes
require 'aws-sdk-s3/bucket_region_cache'
require 'aws-sdk-s3/encryption'
require 'aws-sdk-s3/file_part'
require 'aws-sdk-s3/file_uploader'
require 'aws-sdk-s3/legacy_signer'
require 'aws-sdk-s3/multipart_upload'
require 'aws-sdk-s3/multipart_upload_error'
require 'aws-sdk-s3/object_copier'
require 'aws-sdk-s3/object_multipart_copier'
require 'aws-sdk-s3/presigned_post'
require 'aws-sdk-s3/presigner'

# customizations to generated classes
require 'aws-sdk-s3/customizations/client'
require 'aws-sdk-s3/customizations/bucket'
require 'aws-sdk-s3/customizations/object'
require 'aws-sdk-s3/customizations/object_summary'
require 'aws-sdk-s3/customizations/multipart_upload'
