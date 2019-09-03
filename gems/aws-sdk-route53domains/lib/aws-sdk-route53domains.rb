# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-route53domains/types'
require_relative 'aws-sdk-route53domains/client_api'
require_relative 'aws-sdk-route53domains/client'
require_relative 'aws-sdk-route53domains/errors'
require_relative 'aws-sdk-route53domains/resource'
require_relative 'aws-sdk-route53domains/customizations'

# This module provides support for Amazon Route 53 Domains. This module is available in the
# `aws-sdk-route53domains` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Route 53 Domains all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Route53Domains::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::Route53Domains

  GEM_VERSION = '1.17.0'

end
