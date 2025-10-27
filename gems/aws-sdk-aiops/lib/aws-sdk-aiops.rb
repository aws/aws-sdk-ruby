# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:aiops)

# This module provides support for AWS AI Ops. This module is available in the
# `aws-sdk-aiops` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ai_ops = Aws::AIOps::Client.new
#     resp = ai_ops.create_investigation_group(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS AI Ops are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AIOps::Errors::ServiceError
#       # rescues all AWS AI Ops API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AIOps
  autoload :Types, 'aws-sdk-aiops/types'
  autoload :ClientApi, 'aws-sdk-aiops/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-aiops/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-aiops/client'
  autoload :Errors, 'aws-sdk-aiops/errors'
  autoload :Waiters, 'aws-sdk-aiops/waiters'
  autoload :Resource, 'aws-sdk-aiops/resource'
  autoload :EndpointParameters, 'aws-sdk-aiops/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-aiops/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-aiops/endpoints'

  GEM_VERSION = '1.8.0'

end

require_relative 'aws-sdk-aiops/customizations'
