# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CloudSearchDomain', Module.new) unless Aws.const_defined?('CloudSearchDomain')

# @title Amazon CloudSearch Domain
# <p>You use the AmazonCloudSearch2013 API to upload documents to a search domain and search those documents. </p>
# 
#          <p>The endpoints for submitting <code>UploadDocuments</code>, <code>Search</code>, and <code>Suggest</code> requests are domain-specific. To get the endpoints for your domain, use the Amazon CloudSearch configuration service <code>DescribeDomains</code> action. The domain endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console. You submit suggest requests to the search endpoint. </p>
#          <p>For more information, see the <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide">Amazon CloudSearch Developer Guide</a>.</p>
module Aws::CloudSearchDomain
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-cloudsearchdomain/types'
require_relative 'aws-sdk-cloudsearchdomain/paginators'
require_relative 'aws-sdk-cloudsearchdomain/schema'
require_relative 'aws-sdk-cloudsearchdomain/auth_parameters'
require_relative 'aws-sdk-cloudsearchdomain/auth_resolver'
require_relative 'aws-sdk-cloudsearchdomain/client'
require_relative 'aws-sdk-cloudsearchdomain/customizations'
require_relative 'aws-sdk-cloudsearchdomain/errors'
require_relative 'aws-sdk-cloudsearchdomain/endpoint_parameters'
require_relative 'aws-sdk-cloudsearchdomain/endpoint_provider'
require_relative 'aws-sdk-cloudsearchdomain/waiters'
