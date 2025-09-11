# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MediaStore', Module.new) unless Aws.const_defined?('MediaStore')

# @title AWS Elemental MediaStore
# <p>An AWS Elemental MediaStore container is a namespace that holds folders and objects.
#          You use a container endpoint to create, read, and delete objects. </p>
module Aws::MediaStore
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-mediastore/types'
require_relative 'aws-sdk-mediastore/paginators'
require_relative 'aws-sdk-mediastore/schema'
require_relative 'aws-sdk-mediastore/auth_parameters'
require_relative 'aws-sdk-mediastore/auth_resolver'
require_relative 'aws-sdk-mediastore/client'
require_relative 'aws-sdk-mediastore/customizations'
require_relative 'aws-sdk-mediastore/errors'
require_relative 'aws-sdk-mediastore/endpoint_parameters'
require_relative 'aws-sdk-mediastore/endpoint_provider'
require_relative 'aws-sdk-mediastore/waiters'
