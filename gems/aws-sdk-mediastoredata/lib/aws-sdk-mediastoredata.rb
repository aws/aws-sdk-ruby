# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MediaStoreData', Module.new) unless Aws.const_defined?('MediaStoreData')

# @title AWS Elemental MediaStore Data Plane
# <p>An AWS Elemental MediaStore asset is an object, similar to an object in the Amazon S3
#          service. Objects are the fundamental entities that are stored in AWS Elemental
#          MediaStore.</p>
module Aws::MediaStoreData
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-mediastoredata/types'
require_relative 'aws-sdk-mediastoredata/paginators'
require_relative 'aws-sdk-mediastoredata/schema'
require_relative 'aws-sdk-mediastoredata/auth_parameters'
require_relative 'aws-sdk-mediastoredata/auth_resolver'
require_relative 'aws-sdk-mediastoredata/client'
require_relative 'aws-sdk-mediastoredata/customizations'
require_relative 'aws-sdk-mediastoredata/errors'
require_relative 'aws-sdk-mediastoredata/endpoint_parameters'
require_relative 'aws-sdk-mediastoredata/endpoint_provider'
require_relative 'aws-sdk-mediastoredata/waiters'
