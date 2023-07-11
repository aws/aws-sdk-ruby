# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-shield/types'
require_relative 'aws-sdk-shield/client_api'
require_relative 'aws-sdk-shield/plugins/endpoints.rb'
require_relative 'aws-sdk-shield/client'
require_relative 'aws-sdk-shield/errors'
require_relative 'aws-sdk-shield/resource'
require_relative 'aws-sdk-shield/endpoint_parameters'
require_relative 'aws-sdk-shield/endpoint_provider'
require_relative 'aws-sdk-shield/endpoints'
require_relative 'aws-sdk-shield/customizations'

# This module provides support for AWS Shield. This module is available in the
# `aws-sdk-shield` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     shield = Aws::Shield::Client.new
#     resp = shield.associate_drt_log_bucket(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Shield are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Shield::Errors::ServiceError
#       # rescues all AWS Shield API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Shield

  GEM_VERSION = '1.56.0'

end
