# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ServiceCatalog', Module.new) unless Aws.const_defined?('ServiceCatalog')

# @title AWS Service Catalog
# <fullname>Service Catalog</fullname>
#          <p>
#             <a href="http://aws.amazon.com/servicecatalog">Service Catalog</a> enables
#          organizations to create and manage catalogs of IT services that are approved for Amazon Web Services. To
#          get the most out of this documentation, you should be familiar with the terminology
#          discussed in <a href="http://docs.aws.amazon.com/servicecatalog/latest/adminguide/what-is_concepts.html">Service Catalog
#          Concepts</a>.</p>
module Aws::ServiceCatalog
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-servicecatalog/types'
require_relative 'aws-sdk-servicecatalog/paginators'
require_relative 'aws-sdk-servicecatalog/schema'
require_relative 'aws-sdk-servicecatalog/auth_parameters'
require_relative 'aws-sdk-servicecatalog/auth_resolver'
require_relative 'aws-sdk-servicecatalog/client'
require_relative 'aws-sdk-servicecatalog/customizations'
require_relative 'aws-sdk-servicecatalog/errors'
require_relative 'aws-sdk-servicecatalog/endpoint_parameters'
require_relative 'aws-sdk-servicecatalog/endpoint_provider'
require_relative 'aws-sdk-servicecatalog/waiters'
