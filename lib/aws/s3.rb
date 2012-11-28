# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'aws/core'
require 'aws/s3/config'

module AWS

  # Provides an expressive, object-oriented interface to Amazon S3.
  #
  # To use Amazon S3 you must first 
  # {sign up here}[http://aws.amazon.com/s3/].
  #
  # For more information about Amazon S3, see:
  #
  # * {Amazon S3}[http://aws.amazon.com/s3/]
  # * {Amazon S3 Documentation}[http://aws.amazon.com/documentation/s3/]
  #
  # = Credentials
  #
  # You can setup default credentials for all AWS services via 
  # AWS.config:
  #
  #   AWS.config(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  #
  # Or you can set them directly on the S3 interface:
  #
  #   s3 = AWS::S3.new(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  #
  # = Buckets
  #
  # Before you can upload files to S3, you need to create a bucket.
  #
  #   s3 = AWS::S3.new
  #   bucket = s3.buckets.create('my-bucket')
  #
  # If a bucket already exists, you can get a reference to the bucket.
  #
  #   bucket = s3.buckets['my-bucket'] # no request made
  #
  # You can also enumerate all buckets in your account.
  #
  #   s3.buckets.each do |bucket|
  #     puts bucket.name
  #   end
  #
  # See {BucketCollection} and {Bucket} for more information on working 
  # with buckets.
  #
  # = Objects
  #
  # Buckets contain objects.  Each object in a bucket has a unique key.
  #
  # == Getting an Object
  #
  # If the object already exists, you can get a reference to the object.
  #
  #   # makes no request, returns an AWS::S3::S3Object
  #   obj = bucket.objects['key']
  #
  # == Reading and Writing an Object
  #
  # The example above returns an {S3Object}.  You call {S3Object#write} and 
  # {S3Object#read} to upload to and download from S3 respectively.
  #
  #   # streaming upload a file to S3
  #   obj.write(Pathname.new('/path/to/file.txt'))
  #
  #   # streaming download from S3 to a file on disk
  #   File.open('file.txt', 'w') do |file|
  #     obj.read do |chunk|
  #        file.write(chunk)
  #     end
  #   end
  #
  # == Enumerating Objects
  #
  # You can enumerate objects in your buckets.
  #
  #   # enumerate ALL objects in the bucket (even if the bucket contains 
  #   # more than 1k objects)
  #   bucket.objects.each do |obj|
  #     puts obj.key
  #   end
  #
  #   # enumerate at most 20 objects with the given prefix
  #   bucket.objects.with_prefix('photos/').each(:limit => 20).each do |photo|
  #     puts photo.key
  #   end
  #
  # See {ObjectCollection} and {S3Object} for more information on working
  # with objects.
  #
  class S3

    AWS.register_autoloads(self) do
      autoload :AccessControlList,            'access_control_list'
      autoload :ACLObject,                    'acl_object'
      autoload :ACLOptions,                   'acl_options'
      autoload :Bucket,                       'bucket'
      autoload :BucketCollection,             'bucket_collection'
      autoload :BucketTagCollection,          'bucket_tag_collection'
      autoload :BucketLifecycleConfiguration, 'bucket_lifecycle_configuration'
      autoload :BucketVersionCollection,      'bucket_version_collection'
      autoload :Client,                       'client'
      autoload :CORSRule,                     'cors_rule'
      autoload :CORSRuleCollection,           'cors_rule_collection'
      autoload :DataOptions,                  'data_options'
      autoload :EncryptionUtils,              'encryption_utils'
      autoload :CipherIO,                     'cipher_io'
      autoload :Errors,                       'errors'
      autoload :MultipartUpload,              'multipart_upload'
      autoload :MultipartUploadCollection,    'multipart_upload_collection'
      autoload :ObjectCollection,             'object_collection'
      autoload :ObjectMetadata,               'object_metadata'
      autoload :ObjectUploadCollection,       'object_upload_collection'
      autoload :ObjectVersion,                'object_version'
      autoload :ObjectVersionCollection,      'object_version_collection'
      autoload :PaginatedCollection,          'paginated_collection'
      autoload :Policy,                       'policy'
      autoload :PrefixAndDelimiterCollection, 'prefix_and_delimiter_collection'
      autoload :PrefixedCollection,           'prefixed_collection'
      autoload :PresignedPost,                'presigned_post'
      autoload :Request,                      'request'
      autoload :S3Object,                     's3_object'
      autoload :Tree,                         'tree'
      autoload :UploadedPart,                 'uploaded_part'
      autoload :UploadedPartCollection,       'uploaded_part_collection'
    end

    include Core::ServiceInterface

    # @return [BucketCollection] Returns a collection that represents all 
    #  buckets in the account.
    def buckets
      BucketCollection.new(:config => @config)
    end

  end
end
