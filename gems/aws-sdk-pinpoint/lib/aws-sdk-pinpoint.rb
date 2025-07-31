# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:pinpoint)

# This module provides support for Amazon Pinpoint. This module is available in the
# `aws-sdk-pinpoint` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     pinpoint = Aws::Pinpoint::Client.new
#     resp = pinpoint.create_app(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Pinpoint are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Pinpoint::Errors::ServiceError
#       # rescues all Amazon Pinpoint API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Pinpoint
  autoload :Types, 'aws-sdk-pinpoint/types'
  autoload :ClientApi, 'aws-sdk-pinpoint/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-pinpoint/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-pinpoint/client'
  autoload :Errors, 'aws-sdk-pinpoint/errors'
  autoload :Resource, 'aws-sdk-pinpoint/resource'
  autoload :EndpointParameters, 'aws-sdk-pinpoint/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-pinpoint/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-pinpoint/endpoints'

  GEM_VERSION = '1.111.0'

end

require_relative 'aws-sdk-pinpoint/customizations'
