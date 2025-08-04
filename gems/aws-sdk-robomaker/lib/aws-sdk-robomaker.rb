# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:robomaker)

# This module provides support for AWS RoboMaker. This module is available in the
# `aws-sdk-robomaker` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     robo_maker = Aws::RoboMaker::Client.new
#     resp = robo_maker.batch_delete_worlds(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS RoboMaker are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::RoboMaker::Errors::ServiceError
#       # rescues all AWS RoboMaker API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::RoboMaker
  autoload :Types, 'aws-sdk-robomaker/types'
  autoload :ClientApi, 'aws-sdk-robomaker/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-robomaker/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-robomaker/client'
  autoload :Errors, 'aws-sdk-robomaker/errors'
  autoload :Resource, 'aws-sdk-robomaker/resource'
  autoload :EndpointParameters, 'aws-sdk-robomaker/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-robomaker/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-robomaker/endpoints'

  GEM_VERSION = '1.87.0'

end

require_relative 'aws-sdk-robomaker/customizations'
