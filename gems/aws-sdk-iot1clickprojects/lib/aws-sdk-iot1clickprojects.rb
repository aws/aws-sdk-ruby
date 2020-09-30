# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-iot1clickprojects/types'
require_relative 'aws-sdk-iot1clickprojects/client_api'
require_relative 'aws-sdk-iot1clickprojects/client'
require_relative 'aws-sdk-iot1clickprojects/errors'
require_relative 'aws-sdk-iot1clickprojects/resource'
require_relative 'aws-sdk-iot1clickprojects/customizations'

# This module provides support for AWS IoT 1-Click Projects Service. This module is available in the
# `aws-sdk-iot1clickprojects` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t1_click_projects = Aws::IoT1ClickProjects::Client.new
#     resp = io_t1_click_projects.associate_device_with_placement(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT 1-Click Projects Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoT1ClickProjects::Errors::ServiceError
#       # rescues all AWS IoT 1-Click Projects Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoT1ClickProjects

  GEM_VERSION = '1.26.0'

end
