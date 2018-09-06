# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-pricing/types'
require_relative 'aws-sdk-pricing/client_api'
require_relative 'aws-sdk-pricing/client'
require_relative 'aws-sdk-pricing/errors'
require_relative 'aws-sdk-pricing/resource'
require_relative 'aws-sdk-pricing/customizations'

# This module provides support for AWS Price List Service. This module is available in the
# `aws-sdk-pricing` gem.
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
# Errors returned from AWS Price List Service all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Pricing::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::Pricing

  GEM_VERSION = '1.3.0'

end
