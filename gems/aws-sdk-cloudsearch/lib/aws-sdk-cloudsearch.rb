# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-xml'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CloudSearch', Module.new) unless Aws.const_defined?('CloudSearch')

# @title Amazon CloudSearch
# <fullname>Amazon CloudSearch Configuration Service</fullname>
#     <p>You use the Amazon CloudSearch configuration service to create, configure, and manage search domains.
#       Configuration service  requests are submitted using the AWS Query protocol. AWS Query requests
#       are HTTP or HTTPS requests submitted via HTTP GET or POST with a query parameter named Action.</p>
#     <p>The endpoint for configuration service requests is region-specific: cloudsearch.<i>region</i>.amazonaws.com.
#       For example, cloudsearch.us-east-1.amazonaws.com. For a current list of supported regions and endpoints,
#       see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#cloudsearch_region" target="_blank">Regions and Endpoints</a>.</p>
module Aws::CloudSearch
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-cloudsearch/types'
require_relative 'aws-sdk-cloudsearch/paginators'
require_relative 'aws-sdk-cloudsearch/schema'
require_relative 'aws-sdk-cloudsearch/auth_parameters'
require_relative 'aws-sdk-cloudsearch/auth_resolver'
require_relative 'aws-sdk-cloudsearch/client'
require_relative 'aws-sdk-cloudsearch/errors'
require_relative 'aws-sdk-cloudsearch/endpoint_parameters'
require_relative 'aws-sdk-cloudsearch/endpoint_provider'
require_relative 'aws-sdk-cloudsearch/waiters'
require_relative 'aws-sdk-cloudsearch/customizations'
