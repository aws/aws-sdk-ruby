# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-synthetics/types'
require_relative 'aws-sdk-synthetics/client_api'
require_relative 'aws-sdk-synthetics/client'
require_relative 'aws-sdk-synthetics/errors'
require_relative 'aws-sdk-synthetics/resource'
require_relative 'aws-sdk-synthetics/customizations'

# This module provides support for Synthetics. This module is available in the
# `aws-sdk-synthetics` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     synthetics = Aws::Synthetics::Client.new
#     resp = synthetics.create_canary(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Synthetics are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Synthetics::Errors::ServiceError
#       # rescues all Synthetics API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Synthetics

  GEM_VERSION = '1.9.0'

end
