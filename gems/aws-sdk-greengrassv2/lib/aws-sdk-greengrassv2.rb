# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-greengrassv2/types'
require_relative 'aws-sdk-greengrassv2/client_api'
require_relative 'aws-sdk-greengrassv2/plugins/endpoints.rb'
require_relative 'aws-sdk-greengrassv2/client'
require_relative 'aws-sdk-greengrassv2/errors'
require_relative 'aws-sdk-greengrassv2/resource'
require_relative 'aws-sdk-greengrassv2/endpoint_parameters'
require_relative 'aws-sdk-greengrassv2/endpoint_provider'
require_relative 'aws-sdk-greengrassv2/endpoints'
require_relative 'aws-sdk-greengrassv2/customizations'

# This module provides support for AWS IoT Greengrass V2. This module is available in the
# `aws-sdk-greengrassv2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     greengrass_v2 = Aws::GreengrassV2::Client.new
#     resp = greengrass_v2.associate_service_role_to_account(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT Greengrass V2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::GreengrassV2::Errors::ServiceError
#       # rescues all AWS IoT Greengrass V2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::GreengrassV2

  GEM_VERSION = '1.30.0'

end
