# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-controltower/types'
require_relative 'aws-sdk-controltower/client_api'
require_relative 'aws-sdk-controltower/plugins/endpoints.rb'
require_relative 'aws-sdk-controltower/client'
require_relative 'aws-sdk-controltower/errors'
require_relative 'aws-sdk-controltower/resource'
require_relative 'aws-sdk-controltower/endpoint_parameters'
require_relative 'aws-sdk-controltower/endpoint_provider'
require_relative 'aws-sdk-controltower/endpoints'
require_relative 'aws-sdk-controltower/customizations'

# This module provides support for AWS Control Tower. This module is available in the
# `aws-sdk-controltower` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     control_tower = Aws::ControlTower::Client.new
#     resp = control_tower.disable_control(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Control Tower are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ControlTower::Errors::ServiceError
#       # rescues all AWS Control Tower API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ControlTower

  GEM_VERSION = '1.7.0'

end
