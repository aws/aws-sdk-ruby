# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-iotsecuretunneling/types'
require_relative 'aws-sdk-iotsecuretunneling/client_api'
require_relative 'aws-sdk-iotsecuretunneling/client'
require_relative 'aws-sdk-iotsecuretunneling/errors'
require_relative 'aws-sdk-iotsecuretunneling/resource'
require_relative 'aws-sdk-iotsecuretunneling/customizations'

# This module provides support for AWS IoT Secure Tunneling. This module is available in the
# `aws-sdk-iotsecuretunneling` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t_secure_tunneling = Aws::IoTSecureTunneling::Client.new
#     resp = io_t_secure_tunneling.close_tunnel(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT Secure Tunneling are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoTSecureTunneling::Errors::ServiceError
#       # rescues all AWS IoT Secure Tunneling API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoTSecureTunneling

  GEM_VERSION = '1.8.0'

end
