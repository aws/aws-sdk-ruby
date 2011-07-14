# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'aws/common'
require 'aws/service_interface'
require 'aws/s3/client'
require 'aws/s3/errors'
require 'aws/s3/bucket_collection'

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
  # == Credentials
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
  # == Buckets Keys and Objects
  #
  # S3 stores objects in buckets.
  #
  # To create a bucket:
  #
  #   bucket = s3.buckets.create('mybucket')
  #
  # To get a bucket:
  #
  #   bucket = s3.buckets[:mybucket]
  #   bucket = s3.buckets['mybucket']
  #
  # Listing buckets:
  # 
  #   s3.buckets.each do |bucket|
  #     puts bucket.name
  #   end
  #
  # See {Bucket} and {BucketCollection} for more information on working
  # with S3 buckets.
  #
  # == Listing Objects
  #
  # Enumerating objects in a bucket:
  #
  #   bucket.objects.each do |object|
  #     puts object.key #=> no data is fetched from s3, just a list of keys
  #   end
  #
  # You can limit the list of objects with a prefix, or explore the objects
  # in a bucket as a tree.  See {ObjectCollection} for more information.
  #
  # == Reading and Writing to S3
  #
  # Each object in a bucket has a unique key.
  #
  #   photo = s3.buckets['mybucket'].objects['photo.jpg']
  #
  # Writing to an S3Object:
  #
  #   photo.write(File.read('/some/photo.jpg'))
  #
  # Reading from an S3Object:
  #
  #   File.open("/some/path/on/disk.jpg", "w") do |f|
  #     f.write(photo.read)
  #   end
  #
  # See {S3Object} for more information on reading and writing to S3.
  #
  class S3

    include ServiceInterface

    # @return [BucketCollection] Returns a collection that represents all 
    #  buckets in the account.
    def buckets
      BucketCollection.new(:config => @config)
    end

  end
end
