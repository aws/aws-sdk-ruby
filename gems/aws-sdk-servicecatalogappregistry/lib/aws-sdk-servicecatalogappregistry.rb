# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ServiceCatalogAppRegistry', Module.new) unless Aws.const_defined?('ServiceCatalogAppRegistry')

# @title AWS Service Catalog App Registry
# <p> Amazon Web Services Service Catalog AppRegistry enables organizations to understand the application context of their Amazon Web Services resources. AppRegistry provides a repository of your applications, their resources, and the application metadata that you use within your enterprise.</p>
module Aws::ServiceCatalogAppRegistry
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-servicecatalogappregistry/types'
require_relative 'aws-sdk-servicecatalogappregistry/paginators'
require_relative 'aws-sdk-servicecatalogappregistry/schema'
require_relative 'aws-sdk-servicecatalogappregistry/auth_parameters'
require_relative 'aws-sdk-servicecatalogappregistry/auth_resolver'
require_relative 'aws-sdk-servicecatalogappregistry/client'
require_relative 'aws-sdk-servicecatalogappregistry/customizations'
require_relative 'aws-sdk-servicecatalogappregistry/errors'
require_relative 'aws-sdk-servicecatalogappregistry/endpoint_parameters'
require_relative 'aws-sdk-servicecatalogappregistry/endpoint_provider'
require_relative 'aws-sdk-servicecatalogappregistry/waiters'
