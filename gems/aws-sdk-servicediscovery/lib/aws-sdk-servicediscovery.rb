# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ServiceDiscovery', Module.new) unless Aws.const_defined?('ServiceDiscovery')

# @title AWS Cloud Map
# <fullname>Cloud Map</fullname>
#          <p>With Cloud Map, you can configure public DNS, private DNS, or HTTP namespaces that your
#    microservice applications run in. When an instance becomes available, you can call the Cloud Map
#    API to register the instance with Cloud Map. For public or private DNS namespaces, Cloud Map
#    automatically creates DNS records and an optional health check. Clients that submit public or
#    private DNS queries, or HTTP requests, for the service receive an answer that contains up to
#    eight healthy records. </p>
module Aws::ServiceDiscovery
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-servicediscovery/types'
require_relative 'aws-sdk-servicediscovery/paginators'
require_relative 'aws-sdk-servicediscovery/schema'
require_relative 'aws-sdk-servicediscovery/auth_parameters'
require_relative 'aws-sdk-servicediscovery/auth_resolver'
require_relative 'aws-sdk-servicediscovery/client'
require_relative 'aws-sdk-servicediscovery/customizations'
require_relative 'aws-sdk-servicediscovery/errors'
require_relative 'aws-sdk-servicediscovery/endpoint_parameters'
require_relative 'aws-sdk-servicediscovery/endpoint_provider'
require_relative 'aws-sdk-servicediscovery/waiters'
