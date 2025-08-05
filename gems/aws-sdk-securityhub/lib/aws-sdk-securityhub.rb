# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:securityhub)

# This module provides support for AWS SecurityHub. This module is available in the
# `aws-sdk-securityhub` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     security_hub = Aws::SecurityHub::Client.new
#     resp = security_hub.accept_administrator_invitation(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS SecurityHub are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SecurityHub::Errors::ServiceError
#       # rescues all AWS SecurityHub API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SecurityHub
  autoload :Types, 'aws-sdk-securityhub/types'
  autoload :ClientApi, 'aws-sdk-securityhub/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-securityhub/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-securityhub/client'
  autoload :Errors, 'aws-sdk-securityhub/errors'
  autoload :Resource, 'aws-sdk-securityhub/resource'
  autoload :EndpointParameters, 'aws-sdk-securityhub/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-securityhub/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-securityhub/endpoints'

  GEM_VERSION = '1.141.0'

end

require_relative 'aws-sdk-securityhub/customizations'
