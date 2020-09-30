# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-pi/types'
require_relative 'aws-sdk-pi/client_api'
require_relative 'aws-sdk-pi/client'
require_relative 'aws-sdk-pi/errors'
require_relative 'aws-sdk-pi/resource'
require_relative 'aws-sdk-pi/customizations'

# This module provides support for AWS Performance Insights. This module is available in the
# `aws-sdk-pi` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     pi = Aws::PI::Client.new
#     resp = pi.describe_dimension_keys(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Performance Insights are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PI::Errors::ServiceError
#       # rescues all AWS Performance Insights API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PI

  GEM_VERSION = '1.24.0'

end
