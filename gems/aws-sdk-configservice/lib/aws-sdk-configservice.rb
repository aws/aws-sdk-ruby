# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-configservice/types'
require_relative 'aws-sdk-configservice/client_api'
require_relative 'aws-sdk-configservice/client'
require_relative 'aws-sdk-configservice/errors'
require_relative 'aws-sdk-configservice/resource'
require_relative 'aws-sdk-configservice/customizations'

# This module provides support for AWS Config. This module is available in the
# `aws-sdk-configservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     config_service = Aws::ConfigService::Client.new
#     resp = config_service.batch_get_aggregate_resource_config(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Config are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ConfigService::Errors::ServiceError
#       # rescues all AWS Config API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ConfigService

  GEM_VERSION = '1.53.0'

end
