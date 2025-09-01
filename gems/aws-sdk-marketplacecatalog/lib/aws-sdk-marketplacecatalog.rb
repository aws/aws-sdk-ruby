# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MarketplaceCatalog', Module.new) unless Aws.const_defined?('MarketplaceCatalog')

# @title AWS Marketplace Catalog Service
# <p>Catalog API actions allow you to manage your entities through list, describe, and
#             update capabilities. An <i>entity</i> can be a product or an offer on AWS Marketplace. </p>
#          <p>You can automate your entity update process by integrating the AWS Marketplace Catalog
#             API with your AWS Marketplace product build or deployment pipelines. You can also create
#             your own applications on top of the Catalog API to manage your products on AWS
#             Marketplace.</p>
module Aws::MarketplaceCatalog
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-marketplacecatalog/types'
require_relative 'aws-sdk-marketplacecatalog/paginators'
require_relative 'aws-sdk-marketplacecatalog/schema'
require_relative 'aws-sdk-marketplacecatalog/auth_parameters'
require_relative 'aws-sdk-marketplacecatalog/auth_resolver'
require_relative 'aws-sdk-marketplacecatalog/client'
require_relative 'aws-sdk-marketplacecatalog/customizations'
require_relative 'aws-sdk-marketplacecatalog/errors'
require_relative 'aws-sdk-marketplacecatalog/endpoint_parameters'
require_relative 'aws-sdk-marketplacecatalog/endpoint_provider'
require_relative 'aws-sdk-marketplacecatalog/waiters'
