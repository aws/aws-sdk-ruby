# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('DocDBElastic', Module.new) unless Aws.const_defined?('DocDBElastic')

# @title Amazon DocumentDB Elastic Clusters
# <fullname>Amazon DocumentDB elastic clusters</fullname>
#          <p>Amazon DocumentDB elastic-clusters support workloads with millions of reads/writes per second and petabytes of storage capacity. 
#       Amazon DocumentDB elastic clusters also simplify how developers interact with Amazon DocumentDB elastic-clusters by eliminating the need to choose, manage or upgrade instances.</p>
#          <p>Amazon DocumentDB elastic-clusters were created to:</p>
#          <ul>
#             <li>
#                <p>provide a solution for customers looking for a database that provides virtually limitless scale with rich query capabilities and MongoDB API compatibility.</p>
#             </li>
#             <li>
#                <p>give customers higher connection limits, and to reduce downtime from patching.</p>
#             </li>
#             <li>
#                <p>continue investing in a cloud-native, elastic, and class leading architecture for JSON workloads.</p>
#             </li>
#          </ul>
module Aws::DocDBElastic
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-docdbelastic/types'
require_relative 'aws-sdk-docdbelastic/paginators'
require_relative 'aws-sdk-docdbelastic/schema'
require_relative 'aws-sdk-docdbelastic/auth_parameters'
require_relative 'aws-sdk-docdbelastic/auth_resolver'
require_relative 'aws-sdk-docdbelastic/client'
require_relative 'aws-sdk-docdbelastic/customizations'
require_relative 'aws-sdk-docdbelastic/errors'
require_relative 'aws-sdk-docdbelastic/endpoint_parameters'
require_relative 'aws-sdk-docdbelastic/endpoint_provider'
require_relative 'aws-sdk-docdbelastic/waiters'
