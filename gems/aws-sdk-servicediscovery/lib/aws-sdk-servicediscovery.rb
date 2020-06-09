# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-servicediscovery/types'
require_relative 'aws-sdk-servicediscovery/client_api'
require_relative 'aws-sdk-servicediscovery/client'
require_relative 'aws-sdk-servicediscovery/errors'
require_relative 'aws-sdk-servicediscovery/resource'
require_relative 'aws-sdk-servicediscovery/customizations'

# This module provides support for AWS Cloud Map. This module is available in the
# `aws-sdk-servicediscovery` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     service_discovery = Aws::ServiceDiscovery::Client.new
#     resp = service_discovery.create_http_namespace(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Cloud Map are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ServiceDiscovery::Errors::ServiceError
#       # rescues all AWS Cloud Map API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::ServiceDiscovery

  GEM_VERSION = '1.24.0'

end
