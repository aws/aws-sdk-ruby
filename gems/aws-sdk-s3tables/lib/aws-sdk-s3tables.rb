# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('S3Tables', Module.new) unless Aws.const_defined?('S3Tables')

# @title Amazon S3 Tables
# <p>An Amazon S3 table represents a structured dataset consisting of tabular data in <a href="https://parquet.apache.org/docs/">Apache Parquet</a> format and related metadata. This data is stored inside an S3 table as a subresource. All tables in a table bucket are stored in the <a href="https://iceberg.apache.org/docs/latest/">Apache Iceberg</a> table format. Through integration with the <a href="https://docs.aws.amazon.com/https:/docs.aws.amazon.com/glue/latest/dg/catalog-and-crawler.html">Amazon Web Services Glue Data Catalog</a> you can interact with your tables using Amazon Web Services analytics services, such as <a href="https://docs.aws.amazon.com/https:/docs.aws.amazon.com/athena/">Amazon Athena</a> and <a href="https://docs.aws.amazon.com/https:/docs.aws.amazon.com/redshift/">Amazon Redshift</a>. Amazon S3 manages maintenance of your tables through automatic file compaction and snapshot management. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets.html">Amazon S3 table buckets</a>.</p>
module Aws::S3Tables
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-s3tables/types'
require_relative 'aws-sdk-s3tables/paginators'
require_relative 'aws-sdk-s3tables/schema'
require_relative 'aws-sdk-s3tables/auth_parameters'
require_relative 'aws-sdk-s3tables/auth_resolver'
require_relative 'aws-sdk-s3tables/client'
require_relative 'aws-sdk-s3tables/customizations'
require_relative 'aws-sdk-s3tables/errors'
require_relative 'aws-sdk-s3tables/endpoint_parameters'
require_relative 'aws-sdk-s3tables/endpoint_provider'
require_relative 'aws-sdk-s3tables/waiters'
