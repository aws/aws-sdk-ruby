# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:connectwisdomservice)

# This module provides support for Amazon Connect Wisdom Service. This module is available in the
# `aws-sdk-connectwisdomservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     connect_wisdom_service = Aws::ConnectWisdomService::Client.new
#     resp = connect_wisdom_service.create_assistant(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Connect Wisdom Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ConnectWisdomService::Errors::ServiceError
#       # rescues all Amazon Connect Wisdom Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ConnectWisdomService
  autoload :Types, 'aws-sdk-connectwisdomservice/types'
  autoload :ClientApi, 'aws-sdk-connectwisdomservice/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-connectwisdomservice/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-connectwisdomservice/client'
  autoload :Errors, 'aws-sdk-connectwisdomservice/errors'
  autoload :Resource, 'aws-sdk-connectwisdomservice/resource'
  autoload :EndpointParameters, 'aws-sdk-connectwisdomservice/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-connectwisdomservice/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-connectwisdomservice/endpoints'

  GEM_VERSION = '1.51.0'

end

require_relative 'aws-sdk-connectwisdomservice/customizations'
