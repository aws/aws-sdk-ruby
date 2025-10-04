# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MediaConnect', Module.new) unless Aws.const_defined?('MediaConnect')

# @title AWS MediaConnect
# <p>Welcome to the Elemental MediaConnect API reference. </p> <p>MediaConnect is a service that lets you ingest live video content into the cloud and distribute it to destinations all over the world, both inside and outside the Amazon Web Services cloud. This API reference provides descriptions, syntax, and usage examples for each of the actions and data types that are supported by MediaConnect. </p> <p>Use the following links to get started with the MediaConnect API:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/mediaconnect/latest/api/API_Operations.html">Actions</a>: An alphabetical list of all MediaConnect API operations.</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/mediaconnect/latest/api/API_Types.html">Data types</a>: An alphabetical list of all MediaConnect data types.</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/mediaconnect/latest/api/CommonParameters.html">Common parameters</a>: Parameters that all operations can use.</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/mediaconnect/latest/api/CommonErrors.html">Common errors</a>: Client and server errors that all operations can return.</p> </li> </ul>
module Aws::MediaConnect
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-mediaconnect/types'
require_relative 'aws-sdk-mediaconnect/paginators'
require_relative 'aws-sdk-mediaconnect/schema'
require_relative 'aws-sdk-mediaconnect/auth_parameters'
require_relative 'aws-sdk-mediaconnect/auth_resolver'
require_relative 'aws-sdk-mediaconnect/client'
require_relative 'aws-sdk-mediaconnect/customizations'
require_relative 'aws-sdk-mediaconnect/errors'
require_relative 'aws-sdk-mediaconnect/endpoint_parameters'
require_relative 'aws-sdk-mediaconnect/endpoint_provider'
require_relative 'aws-sdk-mediaconnect/waiters'
