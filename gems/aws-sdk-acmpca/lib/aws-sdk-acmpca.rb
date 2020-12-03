# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-acmpca/types'
require_relative 'aws-sdk-acmpca/client_api'
require_relative 'aws-sdk-acmpca/client'
require_relative 'aws-sdk-acmpca/errors'
require_relative 'aws-sdk-acmpca/waiters'
require_relative 'aws-sdk-acmpca/resource'
require_relative 'aws-sdk-acmpca/customizations'

# This module provides support for AWS Certificate Manager Private Certificate Authority. This module is available in the
# `aws-sdk-acmpca` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     acmpca = Aws::ACMPCA::Client.new
#     resp = acmpca.create_certificate_authority(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Certificate Manager Private Certificate Authority are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ACMPCA::Errors::ServiceError
#       # rescues all AWS Certificate Manager Private Certificate Authority API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ACMPCA

  GEM_VERSION = '1.30.0'

end
