# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Lightsail', Module.new) unless Aws.const_defined?('Lightsail')

# @title Amazon Lightsail
# <p>Amazon Lightsail is the easiest way to get started with Amazon Web Services (Amazon Web Services) for developers who need to build websites or web applications. It includes
#       everything you need to launch your project quickly - instances (virtual private servers),
#       container services, storage buckets, managed databases, SSD-based block storage, static IP
#       addresses, load balancers, content delivery network (CDN) distributions, DNS management of
#       registered domains, and resource snapshots (backups) - for a low, predictable monthly
#       price.</p>
#          <p>You can manage your Lightsail resources using the Lightsail console, Lightsail API,
#         Command Line Interface (CLI), or SDKs. For more information about Lightsail
#       concepts and tasks, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/lightsail-how-to-set-up-and-configure-aws-cli">Amazon Lightsail Developer Guide</a>.</p>
#          <p>This API Reference provides detailed information about the actions, data types,
#       parameters, and errors of the Lightsail service. For more information about the supported
#         Amazon Web Services Regions, endpoints, and service quotas of the Lightsail service, see
#         <a href="https://docs.aws.amazon.com/general/latest/gr/lightsail.html">Amazon Lightsail Endpoints
#         and Quotas</a> in the <i>Amazon Web Services General Reference</i>.</p>
module Aws::Lightsail
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-lightsail/types'
require_relative 'aws-sdk-lightsail/paginators'
require_relative 'aws-sdk-lightsail/schema'
require_relative 'aws-sdk-lightsail/auth_parameters'
require_relative 'aws-sdk-lightsail/auth_resolver'
require_relative 'aws-sdk-lightsail/client'
require_relative 'aws-sdk-lightsail/customizations'
require_relative 'aws-sdk-lightsail/errors'
require_relative 'aws-sdk-lightsail/endpoint_parameters'
require_relative 'aws-sdk-lightsail/endpoint_provider'
require_relative 'aws-sdk-lightsail/waiters'
