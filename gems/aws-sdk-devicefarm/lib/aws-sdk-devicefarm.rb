# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-devicefarm/types'
require_relative 'aws-sdk-devicefarm/client_api'
require_relative 'aws-sdk-devicefarm/client'
require_relative 'aws-sdk-devicefarm/errors'
require_relative 'aws-sdk-devicefarm/resource'
require_relative 'aws-sdk-devicefarm/customizations'

# This module provides support for AWS Device Farm. This module is available in the
# `aws-sdk-devicefarm` gem.
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
# Errors returned from AWS Device Farm all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DeviceFarm::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::DeviceFarm

  GEM_VERSION = '1.10.0'

end
