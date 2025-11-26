# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ControlCatalog', Module.new) unless Aws.const_defined?('ControlCatalog')

# @title AWS Control Catalog
# <p>Welcome to the Control Catalog API reference. This guide is for developers who need detailed information about how to programmatically identify and filter the common controls and related metadata that are available to Amazon Web Services customers. This API reference provides descriptions, syntax, and usage examples for each of the actions and data types that are supported by Control Catalog. </p> <p>Use the following links to get started with the Control Catalog API:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_Operations.html">Actions</a>: An alphabetical list of all Control Catalog API operations.</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_Types.html">Data types</a>: An alphabetical list of all Control Catalog data types.</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/controlcatalog/latest/APIReference/CommonParameters.html">Common parameters</a>: Parameters that all operations can use.</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/controlcatalog/latest/APIReference/CommonErrors.html">Common errors</a>: Client and server errors that all operations can return.</p> </li> </ul>
module Aws::ControlCatalog
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-controlcatalog/types'
require_relative 'aws-sdk-controlcatalog/paginators'
require_relative 'aws-sdk-controlcatalog/schema'
require_relative 'aws-sdk-controlcatalog/auth_parameters'
require_relative 'aws-sdk-controlcatalog/auth_resolver'
require_relative 'aws-sdk-controlcatalog/client'
require_relative 'aws-sdk-controlcatalog/errors'
require_relative 'aws-sdk-controlcatalog/endpoint_parameters'
require_relative 'aws-sdk-controlcatalog/endpoint_provider'
require_relative 'aws-sdk-controlcatalog/waiters'
require_relative 'aws-sdk-controlcatalog/customizations'
