# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-globalaccelerator/types'
require_relative 'aws-sdk-globalaccelerator/client_api'
require_relative 'aws-sdk-globalaccelerator/client'
require_relative 'aws-sdk-globalaccelerator/errors'
require_relative 'aws-sdk-globalaccelerator/resource'
require_relative 'aws-sdk-globalaccelerator/customizations'

# This module provides support for AWS Global Accelerator. This module is available in the
# `aws-sdk-globalaccelerator` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     global_accelerator = Aws::GlobalAccelerator::Client.new
#     resp = global_accelerator.advertise_byoip_cidr(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Global Accelerator are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::GlobalAccelerator::Errors::ServiceError
#       # rescues all AWS Global Accelerator API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::GlobalAccelerator

  GEM_VERSION = '1.23.0'

end
