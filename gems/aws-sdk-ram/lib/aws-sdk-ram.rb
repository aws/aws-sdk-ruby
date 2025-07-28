# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:ram)

# This module provides support for AWS Resource Access Manager. This module is available in the
# `aws-sdk-ram` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ram = Aws::RAM::Client.new
#     resp = ram.accept_resource_share_invitation(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Resource Access Manager are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::RAM::Errors::ServiceError
#       # rescues all AWS Resource Access Manager API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::RAM
  autoload :Types, 'aws-sdk-ram/types'
  autoload :ClientApi, 'aws-sdk-ram/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-ram/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-ram/client'
  autoload :Errors, 'aws-sdk-ram/errors'
  autoload :Resource, 'aws-sdk-ram/resource'
  autoload :EndpointParameters, 'aws-sdk-ram/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-ram/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-ram/endpoints'

  GEM_VERSION = '1.74.0'

end

require_relative 'aws-sdk-ram/customizations'
