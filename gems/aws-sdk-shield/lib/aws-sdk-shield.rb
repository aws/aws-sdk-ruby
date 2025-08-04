# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:shield)

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
  autoload :Types, 'aws-sdk-shield/types'
  autoload :ClientApi, 'aws-sdk-shield/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-shield/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-shield/client'
  autoload :Errors, 'aws-sdk-shield/errors'
  autoload :Resource, 'aws-sdk-shield/resource'
  autoload :EndpointParameters, 'aws-sdk-shield/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-shield/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-shield/endpoints'

  GEM_VERSION = '1.85.0'

end

require_relative 'aws-sdk-shield/customizations'
