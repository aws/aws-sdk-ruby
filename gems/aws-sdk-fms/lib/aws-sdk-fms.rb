# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-fms/types'
require_relative 'aws-sdk-fms/client_api'
require_relative 'aws-sdk-fms/client'
require_relative 'aws-sdk-fms/errors'
require_relative 'aws-sdk-fms/resource'
require_relative 'aws-sdk-fms/customizations'

# This module provides support for Firewall Management Service. This module is available in the
# `aws-sdk-fms` gem.
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
# Errors returned from Firewall Management Service all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::FMS::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::FMS

  GEM_VERSION = '1.4.0'

end
