# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-braket/types'
require_relative 'aws-sdk-braket/client_api'
require_relative 'aws-sdk-braket/plugins/endpoints.rb'
require_relative 'aws-sdk-braket/client'
require_relative 'aws-sdk-braket/errors'
require_relative 'aws-sdk-braket/resource'
require_relative 'aws-sdk-braket/endpoint_parameters'
require_relative 'aws-sdk-braket/endpoint_provider'
require_relative 'aws-sdk-braket/endpoints'
require_relative 'aws-sdk-braket/customizations'

# This module provides support for Braket. This module is available in the
# `aws-sdk-braket` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     braket = Aws::Braket::Client.new
#     resp = braket.cancel_job(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Braket are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Braket::Errors::ServiceError
#       # rescues all Braket API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Braket

  GEM_VERSION = '1.26.0'

end
