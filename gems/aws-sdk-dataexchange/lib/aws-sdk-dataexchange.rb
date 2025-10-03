# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('DataExchange', Module.new) unless Aws.const_defined?('DataExchange')

# @title AWS Data Exchange
# <p>AWS Data Exchange is a service that makes it easy for AWS customers to exchange data in
#          the cloud. You can use the AWS Data Exchange APIs to create, update, manage, and access
#          file-based data set in the AWS Cloud.</p>
#          <p>As a subscriber, you can view and access the data sets that you have an entitlement to
#          through a subscription. You can use the APIs to download or copy your entitled data sets to
#          Amazon Simple Storage Service (Amazon S3) for use across a variety of AWS analytics and
#          machine learning services.</p>
#          <p>As a provider, you can create and manage your data sets that you would like to publish
#          to a product. Being able to package and provide your data sets into products requires a few
#          steps to determine eligibility. For more information, visit the <i>AWS Data Exchange
#             User Guide</i>.</p>
#          <p>A data set is a collection of data that can be changed or updated over time. Data sets
#          can be updated using revisions, which represent a new version or incremental change to a
#          data set. A revision contains one or more assets. An asset in AWS Data Exchange is a piece
#          of data that can be stored as an Amazon S3 object, Redshift datashare, API Gateway API, AWS
#          Lake Formation data permission, or Amazon S3 data access. The asset can be a structured
#          data file, an image file, or some other data file. Jobs are asynchronous import or export
#          operations used to create or copy assets.</p>
module Aws::DataExchange
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-dataexchange/types'
require_relative 'aws-sdk-dataexchange/paginators'
require_relative 'aws-sdk-dataexchange/schema'
require_relative 'aws-sdk-dataexchange/auth_parameters'
require_relative 'aws-sdk-dataexchange/auth_resolver'
require_relative 'aws-sdk-dataexchange/client'
require_relative 'aws-sdk-dataexchange/customizations'
require_relative 'aws-sdk-dataexchange/errors'
require_relative 'aws-sdk-dataexchange/endpoint_parameters'
require_relative 'aws-sdk-dataexchange/endpoint_provider'
require_relative 'aws-sdk-dataexchange/waiters'
