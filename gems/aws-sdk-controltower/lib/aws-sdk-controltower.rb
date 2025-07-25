# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:controltower)

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
#     resp = control_tower.create_landing_zone(params)
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
  autoload :Types, 'aws-sdk-controltower/types'
  autoload :ClientApi, 'aws-sdk-controltower/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-controltower/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-controltower/client'
  autoload :Errors, 'aws-sdk-controltower/errors'
  autoload :Resource, 'aws-sdk-controltower/resource'
  autoload :EndpointParameters, 'aws-sdk-controltower/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-controltower/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-controltower/endpoints'

  GEM_VERSION = '1.45.0'

end

require_relative 'aws-sdk-controltower/customizations'
