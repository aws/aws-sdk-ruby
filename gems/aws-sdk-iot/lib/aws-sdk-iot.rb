# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-iot/types'
require_relative 'aws-sdk-iot/client_api'
require_relative 'aws-sdk-iot/client'
require_relative 'aws-sdk-iot/errors'
require_relative 'aws-sdk-iot/resource'
require_relative 'aws-sdk-iot/customizations'

# This module provides support for AWS IoT. This module is available in the
# `aws-sdk-iot` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t = Aws::IoT::Client.new
#     resp = io_t.accept_certificate_transfer(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoT::Errors::ServiceError
#       # rescues all AWS IoT API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoT

  GEM_VERSION = '1.59.0'

end
