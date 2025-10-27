# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:iotsecuretunneling)

# This module provides support for AWS IoT Secure Tunneling. This module is available in the
# `aws-sdk-iotsecuretunneling` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t_secure_tunneling = Aws::IoTSecureTunneling::Client.new
#     resp = io_t_secure_tunneling.close_tunnel(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT Secure Tunneling are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoTSecureTunneling::Errors::ServiceError
#       # rescues all AWS IoT Secure Tunneling API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoTSecureTunneling
  autoload :Types, 'aws-sdk-iotsecuretunneling/types'
  autoload :ClientApi, 'aws-sdk-iotsecuretunneling/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-iotsecuretunneling/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-iotsecuretunneling/client'
  autoload :Errors, 'aws-sdk-iotsecuretunneling/errors'
  autoload :Resource, 'aws-sdk-iotsecuretunneling/resource'
  autoload :EndpointParameters, 'aws-sdk-iotsecuretunneling/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-iotsecuretunneling/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-iotsecuretunneling/endpoints'

  GEM_VERSION = '1.60.0'

end

require_relative 'aws-sdk-iotsecuretunneling/customizations'
