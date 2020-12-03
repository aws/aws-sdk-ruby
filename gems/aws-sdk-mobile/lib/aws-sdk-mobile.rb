# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-mobile/types'
require_relative 'aws-sdk-mobile/client_api'
require_relative 'aws-sdk-mobile/client'
require_relative 'aws-sdk-mobile/errors'
require_relative 'aws-sdk-mobile/resource'
require_relative 'aws-sdk-mobile/customizations'

# This module provides support for AWS Mobile. This module is available in the
# `aws-sdk-mobile` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     mobile = Aws::Mobile::Client.new
#     resp = mobile.create_project(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Mobile are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Mobile::Errors::ServiceError
#       # rescues all AWS Mobile API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Mobile

  GEM_VERSION = '1.24.0'

end
